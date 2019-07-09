// declare variables
  const destinationList = document.querySelector("#destination-collection")

// make fetch request
fetch('http://localhost:3000/destinations')
.then(res => res.json())
.then(destinationOntoDOM(data))

// DOM Manipulation
function destinationOntoDOM(data){
  debugger
  destinationList.innerHTML`
  <div class="card">
  <h2> ${data.name} </h2>
  <img src=${data.image} class="destination-image">
  <h2>Climate: ${data.climate} </h2>
  <h2>Attractions: ${data.attractions} </h2>
  <h2>Description: ${data.description} </h2>
  `
}
