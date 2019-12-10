const scroll = () => {
  let objDiv = document.querySelector(".message-list");
  if (objDiv) {
  objDiv.scrollTop = objDiv.scrollHeight;
  }

}

export { scroll };
