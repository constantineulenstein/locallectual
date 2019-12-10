const scroll = () => {
  console.log("blah")
  let objDiv = document.querySelector(".message-list");
  objDiv.scrollTop = objDiv.scrollHeight;

}

export { scroll };
