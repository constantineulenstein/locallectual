
const scroll = () => {
  const objDiv = document.querySelector(".message-list").scrollIntoView({ behavior: 'smooth', block: 'end' });
}

export { scroll };
