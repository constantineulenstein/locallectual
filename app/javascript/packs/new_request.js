import places from 'places.js';
// works for both friend request as well as meeting arrangement simultaneously

const displayExtraField = (e) => {
  const page = document.querySelector('.to-be-darkened');
  const requestField = document.querySelector('.request-field');
  requestField.style.display = "block";

  const specificSearchField = document.querySelectorAll('.select2-selection.select2-selection--multiple')[0];
  if (specificSearchField) {
    specificSearchField.style.backgroundImage = "linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7))"
  };

  // check if transaction page, if yes than do autofill
  const addressInput3 = document.getElementById('transaction_location');
  if (addressInput3) {
    places({ container: addressInput3 });
  };

  const addressInput4 = document.getElementById('forum_location');
  if (addressInput4) {
    places({ container: addressInput4 });
  };


  page.classList.add("overlay");
  const coverByPopupBox = document.querySelectorAll(".cover-by-popup-box").forEach ((e) => {
    e.style.backgroundImage = "linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7))";
    e.style.border = "none";
  })

  if (document.querySelector(".post-photo-user")){
    document.querySelectorAll(".post-photo-user").forEach ((e) => {
      e.style.display = "none"
    })
  }

  if (document.querySelector("#map")){
    document.querySelector("#map").style.display = "none";
  }

  if (document.querySelector(".cover-by-popup-image-book")){

    document.querySelectorAll(".cover-by-popup-image-book").forEach ((e) => {
      e.style.backgroundImage =  `linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(${chatter.photo.url})`
    })
    document.querySelectorAll(".cover-by-popup-image-book-me").forEach ((e) => {
      e.style.backgroundImage =  `linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(${current_user.photo.url})`
    })

    document.querySelector(".cover-by-popup-button").classList.remove("btn-secondary");
    document.querySelector(".cover-by-popup-button").classList.add("btn-outline-dark");

  } else if (document.querySelector(".cover-by-popup-image")) {
    document.querySelector(".cover-by-popup-image").style.backgroundImage =  `linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(${user.photo.url})`;
    document.querySelector(".cover-by-popup-banner").style.backgroundImage = `linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(${user.city_image})`;
  }

}


const newRequest = () => {
  const request = document.querySelector('.request-button');
  //const submit = document.querySelector('.submit-button-friendrequest');
  if(request) {
    request.addEventListener('click', displayExtraField );
  }

  // if(submit) {
  //   submit.addEventListener('click', fadeExtraField );
  // }
}

export { newRequest };


