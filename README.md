# Project - NutriTracker App
This is an app where users can log and track their food intake and compare against the recommended daily serving sizes of each food type.

Check out the [NutriTracker App](https://nutritracker2018.herokuapp.com/)


## Getting Started

The application has 3 levels of access.
* Regular users can view general information about recommended serving guides, Australian guidelines for healthy eating and a Nutrition Fact finder.
* Signed in users can start tracking their food intake and viewing family meal intake as well.
* Administrators can maintain static data elements like user categories, etc..

### App Features:

* Enter serving size and app will guide them on what more or less they should eat.
* Track the intake of family members and view their meal history.
* Calendar feature with interactive events populated via JSON calls to rails.
* Chart feature for users to visualise their food intake v/s recommended intake.
* Nokogiri used for scraping Australian health guidelines.
* API call to fetch nutrition facts of any food the user searches for.
* User level access restrictions to different parts of the application and to different options within each page.
* Users are restricted to only view their details and details of their family.

### Models used:
There are five models: Users, Families, Mealplans, ServingGuides, UserCategories.

### Bits of code:
Mealplan controller code for fetching serving guides for appropriate age groups
```
def index
  if @current_user.present?
  @mealplans = Mealplan.all
      @mealplan_user = Mealplan.where(:user_id => @current_user.id)
  @servingguide = Servingguide.where("usercategory_id = ? and age < ?",  @current_user.usercategory_id ,Date.today.year - @current_user.dob.year )
end
```
FullCalendar interactive events:
```
$('#calendar').fullCalendar({
 eventClick:function(eventObj) {
      // find the selected
      const date = eventObj.start._i;
      // hide all the rows in the table
      $('#mealplans tbody tr').hide();
      // show the rows for this date
      $('#mealplans tr.date-' + date).show();
```
Highcharts loading data from a table:
```
$('#container2').highcharts({
  colors: ['lightgreen', 'yellow'],
   data: {
       table: 'mealchart'
   },
   chart: {
       type: 'column',
       backgroundColor: '#f59b0a4f'
   },
   title: {
       text: 'Recommended v/s Eaten'
   },
```

### Possible Improvements:
  * Email activation for users to validate users who register with the site.
  * Consolidated charts for family members.

### Built With:
 * [RubyOnRails](http://rubyonrails.org/)
 * HTML and CSS
 * Bootstrap
 * Nokogiri
 * API calls
 * JQuery
 * [Heroku](https://devcenter.heroku.com/)
 * Postgresql

### Gems/APIs used:

 * bcrypt gem for authentication
 * FullCalendar gem for calendar feature
 * Nutrionix API

### Javascript Library
 * Highcharts.js

### Complimentary tools:
 * Paint.NET

### Special thanks to:
 * Joel Turnbull for all his assistance and guidance throughout the project
 * Our amazing TA's - John, Theo and Priyanka.

### License
This project is licensed under the MIT license.
