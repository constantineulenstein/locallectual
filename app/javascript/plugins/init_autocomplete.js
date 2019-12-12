import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('user_base_location');
  const addressInput2 = document.getElementById('user_seek_location');
  if (addressInput || addressInput2) {
    places({ container: addressInput });
    places({ container: addressInput2 });
  }
};

export { initAutocomplete };



