// const btn_see_more = document.querySelectorAll(".btn-read-more")
// btn_see_more.forEach((btn) => {
//   btn.addEventListener("click", (event) => {
//     event.currentTarget.setPopup().setHTML("<h1>Hello World!</h1>");
//   });
// });

const btn_see_more = document.querySelectorAll(".btn-read-more").forEach((btn) => {
  btn.addEventListener("click", (event) => {
    renderModal
  });
});

function renderModal(btn_see_more){
  // create the background modal div
  const modal = document.createElement('div')
  modal.classList.add('modal')
  // create the inner modal div with appended argument
  const child = document.createElement('div')
  child.classList.add('child')
  child.innerHTML = element
  // render the modal with child on DOM
  modal.appendChild(child)
  document.body.appendChild(modal)
}


export { btn_see_more };

