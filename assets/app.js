// any CSS you import will output into a single css file (app.css in this case)
import { start } from '@popperjs/core';
import './styles/app.scss';
require('bootstrap');
import $ from "jquery";

document.querySelectorAll(".nav-link").forEach((link) => {
    if (link.href === window.location.href) {
        link.classList.add("active");
        link.setAttribute("aria-current", "page");
    }
});

function startValueChanged() {
  let url = window.location.href;
  if (url.includes("/used/car")) {
      function filtrer() {
        var data = $("#filters").serializeArray();
        var json = {};
        $.each(data, function(index, element) {
          json[element.name] = element.value;
        });
        $.ajax({
          url: "/used/car/all", 
          method: "POST", 
          dataType: "json",
          data: JSON.stringify(json),
          success: function(resultats) {
           
            $.each(resultats, (_index, p) => {
                // Création d'un élément HTML pour afficher chaque résultat
                var element1 = $("#price");
                element1.append(p.price + " €");
                var element2 = $("#km");
                element2.append(p.km + " km");
                var element3 = $("#co2");
                element3.append(p.co2_emission + " g/km");
                $("#resultats").append([element1, element2, element3]);
              });
        },
          error: function() { 
              alert("Une erreur s'est produite lors de la requête Ajax");
            }
            });
  }
  // Gestion de l'événement de changement de valeur des inputs de type range
  $("input[type=range]").on("mouseup", function() {
    // Récupération de la valeur de l'input
    var valeur = $(this).val();
    
    // Mise à jour du label ou du span qui affiche la valeur du filtre
    $(this).next().text(valeur + " €");
    
    // Appel de la fonction filtrer
    filtrer();
  });
}
};





startValueChanged();






