import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('user_base_location');
  const addressInput2 = document.getElementById('user_seek_location');
  if (addressInput || addressInput2) {
    places({ container: addressInput });
    places({ container: addressInput2 });
  }

  // number 3 and 4 are in new_request.js
  //home page search
  const addressInput5 = document.getElementById('search_query');
  if (addressInput5) {
    places({ container: addressInput5 });
  };
  // Locallects index location search when filtering
  const addressInput6 = document.getElementById('search_base_location');
  if (addressInput6) {
    places({ container: addressInput6 });
  };
  // forum location search
  const addressInput7 = document.getElementById('search_location');
  if (addressInput7) {
    places({ container: addressInput7 });
  };
};

export { initAutocomplete };



