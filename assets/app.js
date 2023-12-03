import { registerReactControllerComponents } from '@symfony/ux-react';
registerReactControllerComponents(require.context('./react', true, /\.(j|t)sx?$/));

import './react/components/RangeSliderCo2.jsx';
import './react/components/RangeSliderKm.jsx';
import './react/components/RangeSliderMarks.jsx';

import './react/PackageList.js';

import './react/controllers/Filters.jsx';




// any CSS you import will output into a single css file (app.css in this case)

import './styles/app.scss';
require('bootstrap');


document.querySelectorAll(".nav-link").forEach((link) => {
    if (link.href === window.location.href) {
        link.classList.add("active");
        link.setAttribute("aria-current", "page");
    }
});
