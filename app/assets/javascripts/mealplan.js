$(document).ready(function () {
  // $('#mealplans tbody tr').hide();
  // *************************
  $('#mealplans').hide();
  // *************************
  // let $testOne = $('#Veg')[0].innerHTML;
  // let $testTwo = $('#ServingVeg')[0].innerHTML;
  // console.log($testOne);
  // console.log($testTwo);


  $('#calendar').fullCalendar({

   eventClick:function(eventObj) {
        // find the selected
        const date = eventObj.start._i;
        // hide all the rows in the table
        $('#mealplans tbody tr').hide();
        // show the rows for this date
        // *******************
        $('#mealplans').show();
        // *******************

        $('#mealplans tr.date-' + date).show();


//begin test code
//Sum all the veg to update Graph
var sum = 0;
// iterate through each td based on class and add the values
$('#mealplans tr.date-' + date + ' td#Veg').each(function() {
    var value = $(this).text();
    // console.log(value);
    // add only if the value is number
    if(!isNaN(value) && value.length != 0) {
        sum += parseFloat(value);
    }
    // console.log("Sum is: " + sum);
});

$("[id*=GraphVeg]").html(sum);
//need to update the value of the highcharts table
//which is different from the on-screen table!
$("#highcharts-data-table").find("tbody tr").eq(1).children().first().html(sum);

//end test code

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

 $('#container2').highcharts({
   colors: ['green', 'yellow'],
    data: {
        table: 'mealchart'
    },
    chart: {
        type: 'column',
        backgroundColor: 'blue'
    },
    title: {
        text: 'Recommended v/s Eaten'
    },
    xAxis: {
      title: {
      }
    },
    yAxis: {
        allowDecimals: false,
        title: {
            text: 'No. of Serves'
        }

    },

    tooltip: {
        formatter: function () {
            return '<b>' + this.series.name + '</b><br/>' +
                this.point.y + ' ' + this.point.name.toLowerCase();
        }
    }
});

});
