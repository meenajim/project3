document.addEventListener('DOMContentLoaded', function(){

  const search = function (e) {
      e.preventDefault();
      let query = document.getElementById('query').value;
      console.log(query);
      postData('https://trackapi.nutritionix.com/v2/natural/nutrients?q=query', {
        // "query":"for breakfast i ate 2 eggs, bacon, and french toast",
        // "timezone": "US/Eastern"
        "query": query
       })
      .then(data => console.log(data)) // JSON from `response.json()` call
      .catch(error => console.error(error))

      function postData(url, data) {
      // Default options are marked with *
      return fetch(url, {
        // q: '1 strawberry',
        body: JSON.stringify(data),
         // must match 'Content-Type' header
        // cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, same-origin, *omit
        headers: {
          'x-app-id': '963251dd',
          'x-app-key': 'ad54338feb6dd332aa82fcc67ccd0a53',
          'x-remote-user-id': 0,
          'Content-Type': 'application/json'
        },
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        mode: 'cors', // no-cors, cors, *same-origin
        redirect: 'follow', // manual, *follow, error
        referrer: 'no-referrer', // *client, no-referrer
      })
      .then(response => response.json()) // parses response to JSON
      .then( data => {
        console.log(data);
        const p = document.createElement('p');
        document.getElementById('table').style.display = "table";
        // const tr = document.createElement('tr');
        // const td = document.createElement('td');
        const img = document.getElementById('images');
        // console.log(table);
        //table.innerHTML='<tr><td><strong>Calories: '+ data.foods[0].nf_calories +'</strong></td></tr><br>';
        // table.innerHTML += '<tr><td><strong>Cholesterol: '+ data.foods[0].nf_cholesterol + '</strong></td></tr><br>';
        // document.body.appendChild(table);
        img.src = data.foods[0].photo.thumb;
        console.log(data.foods[0].photo.thumb);
        calories.innerHTML = data.foods[0].nf_calories;
        cholesterol.innerHTML = data.foods[0].nf_cholesterol;
        dietaryfiber.innerHTML = data.foods[0].nf_dietary_fiber;
        potassium.innerHTML = data.foods[0].nf_potassium;
        protein.innerHTML = data.foods[0].nf_protein;
        saturatedfat.innerHTML = data.foods[0].nf_saturated_fat;
        sodium.innerHTML= data.foods[0].nf_sodium;
        sugars.innerHTML = data.foods[0].nf_sugars;
        totcarbohydrates.innerHTML = data.foods[0].nf_total_carbohydrate;
        totfat.innerHTML= data.foods[0].nf_total_fat;


        servingquantity.innerHTML= data.foods[0].serving_qty;
        servingunit.innerHTML = data.foods[0].serving_unit;
        servingweightgram.innerHTML = data.foods[0].serving_weight_grams;
        source.innerHTML= data.foods[0].source;
        // p.innerHTML = '<strong>Calories: '+ data.foods[0].nf_calories + '</strong><br>';
        // p.innerHTML += '<strong>Cholesterol: '+ data.foods[0].nf_cholesterol + '</strong><br>';
        // p.innerHTML += '<strong>Dietary Fiber: '+ data.foods[0].nf_dietary_fiber + '</strong><br> ';
        // p.innerHTML += '<strong>Potassium: '+ data.foods[0].nf_potassium + '</strong><br> ';
        // p.innerHTML += '<strong>Protein: '+ data.foods[0].nf_protein + '</strong><br> ';
        // p.innerHTML += '<strong>Saturated Fat: '+ data.foods[0].nf_saturated_fat + '</strong><br> ';
        // p.innerHTML += '<strong>Sodium: '+ data.foods[0].nf_sodium + '</strong><br>';
        // p.innerHTML += '<strong>Sugars: '+ data.foods[0].nf_sugars + '</strong><br>';
        // p.innerHTML += '<strong>Total Carbohydrate: '+ data.foods[0].nf_total_carbohydrate + '</strong><br>';
        // p.innerHTML += '<strong>Total fat: '+ data.foods[0].nf_total_fat + '</strong><br>';
        // // ********************************************
        // p.innerHTML += '<strong>Serving Quantity: '+ data.foods[0].serving_qty + '</strong><br>';
        // p.innerHTML += '<strong>Serving Unit: '+ data.foods[0].serving_unit + '</strong><br>';
        // p.innerHTML += '<strong>Serving Weight grams: '+ data.foods[0].serving_weight_grams + '</strong><br>';
        // p.innerHTML += '<strong>Source: '+ data.foods[0].source + '</strong><br>';
        // document.body.appendChild(p);

      })
    }

  }

  document.getElementById('title-search').addEventListener('submit', search);

  }, false);
