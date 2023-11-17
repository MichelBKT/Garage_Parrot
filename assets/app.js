// any CSS you import will output into a single css file (app.css in this case)
import { start } from '@popperjs/core';
import './styles/app.scss';
require('bootstrap');

document.querySelectorAll(".nav-link").forEach((link) => {
    if (link.href === window.location.href) {
        link.classList.add("active");
        link.setAttribute("aria-current", "page");
    }
});

function valueChanged()
{
  const value = document.querySelector(".value");
  const input = document.querySelector(".pi_input");
  value.textContent = input.value;
input.addEventListener("input", (event) => {
  value.textContent = event.target.value;
});

const value1 = document.querySelector(".value1");
const input1 = document.querySelector(".pi_input1");
value.textContent = input.value;
input1.addEventListener("input", (event) => {
  value1.textContent = event.target.value;
});

const value2 = document.querySelector(".value2");
const input2 = document.querySelector(".pi_input2");
value.textContent = input.value;
input2.addEventListener("input", (event) => {
  value2.textContent = event.target.value;
});
}

function startValueChanged() {
    let url = window.location.href;
    if (url.includes("/used/car")) {
        valueChanged();
    }
}

startValueChanged();






