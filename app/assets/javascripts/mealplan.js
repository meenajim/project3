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
        return false;
     },
       eventSources: [
        {
          url: '/mealplans.json'
        }
        ]
  });

 $('#container2').highcharts({
   colors: ['lightgreen', 'yellow'],
    data: {
        table: 'mealchart'
    },
    chart: {
        type: 'column',
        // backgroundColor: '#f59b0a4f'
        backgroundColor:'#ffc28b'
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
