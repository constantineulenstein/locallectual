const scroll = () => {
  let objDiv = document.querySelector(".message-list");
  objDiv.scrollTop = objDiv.scrollHeight;

}

export { scroll };
