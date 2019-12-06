// import places from 'places.js';

// const initAutocomplete = () => {
//   const addressInput = document.getElementById('user_base_location');
//   if (addressInput) {
//     places({ container: addressInput });
//   }
// };



// export { initAutocomplete };



import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('user_base_location');
  const addressInput2 = document.getElementById('user_birth_location');
  if (addressInput || addressInput2) {
    places({ container: addressInput });
    places({ container: addressInput2 });
  }
};

export { initAutocomplete };


// const initSearch = () => {
//   const input = document.querySelector("#user_base_location");
//   const input2 = document.querySelector("#user_birth_location");
//   console.log(input)
//   if (input || input2) {
//     input.addEventListener("keyup", searchAlgoliaPlaces);
//     input2.addEventListener("keyup", searchAlgoliaPlaces);

//   }
// }
// export { initSearch };


