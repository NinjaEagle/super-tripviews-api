document.addEventListener('DOMContentLoaded',fetchDestinations
);
// declare variables
let listofDestinations = document.querySelector('#list');
const destinationPanel = document.querySelector('#show-panel');
const form = document.querySelector('#new-destination-form');


// add Event Listeners
listofDestinations.addEventListener('click', destinationInfo);
form.addEventListener('submit', formInfo);

// make fetch request
function fetchDestinations(){
  fetch('http://localhost:3000/destinations')
  .then(res => res.json())
  .then(showDestinations);
}

function fetchDestinationShow(destinationId){
  fetch(`http://localhost:3000/destinations/${destinationId}`)
  .then(res => res.json())
  .then(showDestinationInfo)
}

function fetchDestinationPatch(){
  if (e.target.className === "-1") {
    destination.users.push(currentUser)
  } else {
    destination.users.splice(e.target.className, 1)
    // e.target.className = -1
  }

  fetch(`http://localhost:3000/books/${bookId}`,{
  method: 'POST',
  headers: {'Content-Type': 'application/json'},
  body: JSON.stringify({users: book.users}
  )})
  .then(res => res.json())
  .then(showDestinationInfo)
}
//
// function fetchReviews(){
//   fetch('http://localhost:3000/reviews')
//   .then(res => res.json())
//   .then(showReviews)
// }

// DOM Manipulation
function destinationInfo(e){
  if (e.target.className === 'destination-btn'){
    const destinationId = e.target.id
    fetchDestinationShow(destinationId)
  }
}

function showDestinations(destinations){
  const listofDestinations = document.querySelector('#list')
  // listofBooks.innerHTML = ''
  destinations.forEach(destination => {
    listofDestinations.innerHTML += `
    <li class='destination-btn' id=${destination.id}>${destination.name} </li>
    `
  })
}

function showDestinationInfo(destination){
  let touristReviewList = '<ul>'
  for (const review of destination.reviews) {
    touristReviewList += '<li>'+ review.name +'--' + review.description + '</li>'
  }
  touristReviewList += '<ul>'

    const destinationPanel = document.querySelector("#show-panel")
    destinationPanel.innerHTML = `
  <h2> ${destination.name} </h2>
  <img src=${destination.image} class="destination-image">
  <h3>Climate:</h3> ${destination.climate}
  <h3>Attractions:</h3> ${destination.attractions}
  <h3>Description:</h3> <p>${destination.description}</p>
  <h3>Past Reviews:</h3> ${touristReviewList}
  `
}

function formInfo(e){
  e.preventDefault();
  fetch("http://localhost:3000/destinations",{
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      "name": form.name.value,
      "climate": form.climate.value,
      "attractions": form.attractions.value,
      "description": form.description.value
    })
  })
  .then(res => res.json())
  .then(addNewDestination)
}

// create a new Destination
function addNewDestination(newDestination){
  const destinationPanel = document.querySelector("#show-panel")

  listofDestinations.innerHTML += `
  <li class='destination-btn' id=${newDestination.id}>${newDestination.name} </li>
  `

  destinationPanel.innerHTML = `
  <h2> ${newDestination.name} </h2>
  <img src=${newDestination.image} class="newDestination-image">
  <h3>Climate:</h3> ${newDestination.climate}
  <h3>Attractions:</h3> ${newDestination.attractions}
  <h3>Description:</h3> <p>${newDestination.description}</p>
  <h3>Past Reviews:</h3>
  `
}

// function showReviews(reviews){
//     const destinationPanel = document.querySelector("#show-panel")
//   // let commentContent = '<ul>'
//   reviews.forEach(function(review){
//     // debugger
//     if(review.destination_name == newDestination.name){
//         div.id = "review-id"
//         div.innerHTML = `
//       <h2> ${review.name} </h2>
//       <h3>Climate:</h3> ${review.climate}
//       <h3>Attractions:</h3> ${review.attractions}
//       <h3>Description:</h3> <p>${review.description}</p>
//       <h3>Past Reviews:</h3>  </br></br>
//       `
//     }
//   destinationList.append(div)
//   })
// }
