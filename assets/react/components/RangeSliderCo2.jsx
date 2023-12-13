import * as React from 'react';
import { FormGroup, FormControlLabel, Checkbox } from '../PackageList.js';

export default function CheckboxLabels() {
  return (
    <FormGroup className='d-block text-success align-items-center'>Emission de Co2 : 
      <FormControlLabel control={<Checkbox defaultChecked color="warning"/>} label="Crit'Air1" />
      <FormControlLabel control={<Checkbox defaultChecked color="warning"/>} label="Crit'Air2" />
      <FormControlLabel control={<Checkbox defaultChecked color="warning"/>} label="Crit'Air3" />
    </FormGroup>

  );
}