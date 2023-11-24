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
    $(document).ready(function() {
      function filtrer() {
        var data = $("#filters").serializeArray();
        var json = {};
        $.each(data, function(index, element) {
          json[element.name] = element.value;
        });
        $.ajax({
          url: "/used/car", 
          method: "POST", 
          dataType: "json",
          data: JSON.stringify(json),
          success: function(resultats) {
            $("#resultats").empty();
          },
      error: function() { // Fonction à exécuter en cas d'erreur
        // Affichage d'un message d'erreur
        alert("Une erreur s'est produite lors de la requête Ajax");
      }
    });
  }
  
  // Appel de la fonction filtrer au chargement de la page
  filtrer();
  
  // Gestion de l'événement de changement de valeur des inputs de type range
  $("input[type=range]").on("input", function() {
    // Récupération de la valeur de l'input
    var valeur = $(this).val();
    
    // Mise à jour du label ou du span qui affiche la valeur du filtre
    $(this).next().text(valeur + " €");
    
    // Appel de la fonction filtrer
    filtrer();
  });
});

}


}

startValueChanged();







