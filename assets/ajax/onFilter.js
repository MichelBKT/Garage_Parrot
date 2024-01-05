
let d1 = document.querySelector("#js-filter")
d1 != null ? d1.style.display="none" :"";
let toggle = document.getElementById("toggle");
toggle != null ? toggle.addEventListener("click", () => {
 if(getComputedStyle(d1).display != "none"){
  d1.style.display = "none";
} else {
  d1.style.display = "block";
}
}):""




window.onload = () => {
  const FiltersForm = document.querySelector("#js-filter") 
  const FilterSelect= document.querySelectorAll("#js-filter span")
  FilterSelect.forEach(input => {
    input.addEventListener("mouseup", () => {
      const Form = new FormData(FiltersForm);
      let minPriceValue = document.querySelector("#minPrice").outerText
      let maxPriceValue = document.querySelector("#maxPrice").outerText
      let minKmValue = document.querySelector("#minKm").outerText
      let maxKmValue = document.querySelector("#maxKm").outerText
      let minCo2Value = document.querySelector("#minCo2").outerText
      let maxCo2Value = document.querySelector("#maxCo2").outerText
      Form.append("minPrice", minPriceValue)
      Form.append("maxPrice", maxPriceValue)
      Form.append("minKm", minKmValue)
      Form.append("maxKm", maxKmValue)
      Form.append("minCo2", minCo2Value)
      Form.append("maxCo2", maxCo2Value)
      const Params = new URLSearchParams();
      Form.forEach((value, key) => {
        Params.append(key, value)
      })
      const Url = new URL(window.location.href)
      fetch(Url.pathname + "?" + Params.toString() + "&ajax=1", {
        headers:{
          "X-Requested-With": "XMLHttpRequest"
        }
      }).then(response => 
        response.json()
        ).then(data => {
          const content = document.querySelector("#js-filter-content")
          content.innerHTML = data.content;
          
          history.pushState({}, null, Url.pathname + "?" + Params.toString())
        }).catch(e => alert(e))
    })
  })
  }

let toggle2 = document.getElementById("toggle2");
toggle2 != null ? toggle2.addEventListener("click", () => {
  history.pushState(null, null, "?")
  location.reload()
}) :""

