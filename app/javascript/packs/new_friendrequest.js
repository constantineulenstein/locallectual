const displayExtraField = (e) => {
  const requestField = document.querySelector('#friend-request-field');
  requestField.style.display = "block";
}

const fadeExtraField = (e) => {
  const requestField = document.querySelector('#friend-request-field');
  requestField.style.display = "none";
}


const newRequest = () => {
  const request = document.querySelector('#friendship-request-button');
  const submit = document.querySelector('#submit-button-friendrequest')
  if(request) {
    request.addEventListener('click', displayExtraField )
  }

  if(submit) {
    submit.addEventListener('click', fadeExtraField )
  }
}

export { newRequest };
