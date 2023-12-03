import { createRoot } from 'react-dom/client';
import { Box, RangeSliderCo2, RangeSliderKm, RangeSliderMarks } from '../PackageList.js'
import * as React from 'react';

  
export default function Filters(){
    return (
        <div className='containerFilters'>
                <RangeSliderMarks/>
                <RangeSliderKm/>
                <RangeSliderCo2/>
        </div>
    )

}

class FilterElement extends HTMLElement {
    connectedCallback(){
      const root = createRoot(this)
      root.render(<Filters />)

    }
  }
  customElements.define("slider-component", FilterElement)
