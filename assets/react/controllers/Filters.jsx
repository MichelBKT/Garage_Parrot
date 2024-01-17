import { createRoot } from 'react-dom/client';
import { RangeSliderCo2, RangeSliderKm, RangeSliderMarks } from '../PackageList.js'
import * as React from 'react';




function Filters(){
  const [price, setPrice] = React.useState([1000, 60000]);
  const [km, setKm] = React.useState([0, 200000]);
  const [co2, setCo2] = React.useState([0, 300]);
      const handleChangePrice = (event = 'pointerup',  newValue) => {
        setPrice(newValue)}
      const handleChangeKm = (event = 'pointerup',  newValue) => {
        setKm(newValue)}
      const handleChangeCo2 = (event = 'pointerup',  newValue) => {
        setCo2(newValue)}

  return <div className='containerFilters'>

      <RangeSliderMarks id='price' name='price' value={price} onChange={handleChangePrice}>{price}</RangeSliderMarks>

      <RangeSliderKm id ='km' name='km' value={km} onChange={handleChangeKm}>{km}</RangeSliderKm>

      <RangeSliderCo2 id='co2' name='co2' value={co2} onChange={handleChangeCo2}>{co2}</RangeSliderCo2>

    </div>
    }
  
       
 export default Filters;



class FilterElement extends HTMLElement {
    connectedCallback(){
      const root = createRoot(this)
      root.render(<Filters />)

    }
  }
  customElements.define("slider-component", FilterElement)

