import * as React from 'react';
import { Box, Slider, Paper, Grid, Typography } from '../PackageList.js';






const marks = [
  {
    value: 0,
    label: '0',
  },
  {
    value: 100000,
    label: '100 000 km',
  },
  {
    value: 200000,
    label: '200 000 km',
  },
];

function valuetext(value) {
  return `${value}km`;
}

function compareValue(km,setKm){
  km <= setKm ? km :setKm
}
export default function RangeSliderKm(props) {


  return (
    <Box sx={{ width: 320 }}>
      <Grid
      container 
      spacing={0} 
      columns={12}
      direction="row"
      justifyContent="start"
      alignItems="center"
      className='text-success fw-bold'
    >
      <Grid item xs={4}>
          <Typography>Kilométrage: </Typography>
      </Grid>
      <Grid item xs={2}>
        <Paper sx={{ width: 54}}
                elevation={3}
                id="minKm"
                name="minKm"
                value={props.value[0]}
                onChange={props.onChange[0]}
        >{props.value[0]}
        </Paper>
      </Grid>
      <Grid item xs={2}><Typography>min</Typography></Grid>
      <Grid item xs={2}>
        <Paper
                sx={{ width: 54}}
                elevation={3}
                id="maxKm"
                name="maxKm"
                value={props.value[1]}
                onChange={props.onChange[1]}
        >{props.value[1]}
        </Paper>
      </Grid>
      <Grid item xs={1}><Typography>max</Typography></Grid>
      <Grid item xs={11}>
      <Slider
        getAriaLabel={() => 'kilometrage Range'}
        value={props.value}
        onChange={props.onChange}
        valueLabelDisplay="auto"
        getAriaValueText={valuetext}
        marks={marks}
        color='warning'
        min={0}
        max={200000}
        step={10000}
        scale={compareValue(props.value, props.onChange)}
        id="kmRange"
      />
      </Grid>
      </Grid>
    </Box>
  );
}
