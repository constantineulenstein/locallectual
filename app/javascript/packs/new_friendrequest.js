const displayExtraField = (e) => {
  const page = document.querySelector('.to-be-darkened');
  const requestField = document.querySelector('.friend-request-field');
  requestField.style.display = "block";

  page.classList.add("overlay");
  const coverByPopupBox = document.querySelectorAll(".cover-by-popup-box").forEach ((e) => {
    e.style.backgroundImage = "linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7))"
  })

  if (document.querySelector(".cover-by-popup-image-book")){
    document.querySelector(".cover-by-popup-image-book").style.backgroundImage =  `linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(${chatter.photo.url})`;
  } else {
    document.querySelector(".cover-by-popup-image").style.backgroundImage =  `linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(${user.photo.url})`;
    document.querySelector(".cover-by-popup-banner").style.backgroundImage = `linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)), url(${user.city_image})`;
  }
}

const fadeExtraField = (e) => {
  const page = document.querySelector('.to-be-darkened');
  const requestField = document.querySelector('.friend-request-field');
  requestField.style.display = "none";
  page.classList.remove("overlay");

  const coverByPopupBox = document.querySelectorAll(".cover-by-popup-box").forEach ((e) => {
    e.style.backgroundImage = "";
  })

  document.querySelector(".cover-by-popup-banner").style.backgroundImage = `linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)), url(${user.city_image})`;

  document.querySelector(".cover-by-popup-image").style.backgroundImage =  `linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0)), url(${user.photo.url})`;
}


const newRequest = () => {
  const request = document.querySelector('.friendship-request-button');
  const submit = document.querySelector('.submit-button-friendrequest');
  if(request) {
    request.addEventListener('click', displayExtraField );
  }

  if(submit) {
    submit.addEventListener('click', fadeExtraField );
  }
}

export { newRequest };


