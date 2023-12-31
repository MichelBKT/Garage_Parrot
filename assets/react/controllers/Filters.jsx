import { createRoot } from 'react-dom/client';
import { RangeSliderCo2, RangeSliderKm, RangeSliderMarks } from '../PackageList.js'
import * as React from 'react';




function Filters(){
  const [price, setPrice] = React.useState([1000, 60000]);
  const [km, setKm] = React.useState([0, 200000]);
      const handleChange = (event = 'mouseup',  newValue) => {
        setPrice(newValue)}
      const handleChangeKm = (event = 'mouseup',  newValue) => {
        setKm(newValue)}
  return <div className='containerFilters'>
      <RangeSliderMarks id='price' name='price' value={price} onChange={handleChange}>{price}</RangeSliderMarks>

      <RangeSliderKm id ='km' name='km' value={km} onChange={handleChangeKm}>{km}</RangeSliderKm>
      <RangeSliderCo2/>


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

