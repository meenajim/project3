$(document).ready(function () {
  $('#calendar').fullCalendar({
   eventClick:function(eventObj) {
        // find the selected
        const date = eventObj.start._i;
        // hide all the rows in the table
        $('#mealplans tbody tr').hide();
        // show the rows for this date
        $('#mealplans tr.date-' + date).show();
        return false;
         if (eventObj.url)
          {
           // window.open(eventObj.url, "_self");
           // return false; // prevents browser from following link in current tab.
         }
     },
       eventSources: [
        {
          url: '/mealplans.json'
        }
        ]
  });
});
