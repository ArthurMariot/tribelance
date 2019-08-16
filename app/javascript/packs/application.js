import "bootstrap";
import "../plugins/flatpickr";


import Swal from 'sweetalert2';

const apply = document.querySelector("#btn-apply");
if (apply) {
  apply.addEventListener("click", (event) => {
    Swal.fire({
    type: 'success',
    title: '<span style="color:#FFFFFF; text-shadow: 1.5px 1.5px #ff487e"> CONGRATS!<span>',
    width: 600,
    html: '<span style="color:#FFFFFF">Your application has been sent!<span>',
    background: '#1800FF',
    showConfirmButton: false,
    timer: 2200
  });
  });
}


