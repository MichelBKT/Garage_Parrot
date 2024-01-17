import * as React from 'react';
import { Box, Paper, Slider, Grid, Typography } from '../PackageList.js';


const marks = [
  {
    value: 0,
    label: '0',
  },
  {
    value: 30000,
    label: '30 000€',
  },
  {
    value: 60000,
    label: '60 000€',
  },
];

function valuetext(price) {
  return `${price}€`;
}
function CompareValue(price,setPrice){
  price<=setPrice? price :setPrice
}
export default function RangeSliderMarks(props) {

  return (
    <Box sx={{ width: 320 }}>
      <Grid
        container
        spacing={0}
        columns={12}
        direction="row"
        justifyContent="start"
        alignItems="center"
        className='text-warning fw-bold'
      >
        <Grid item xs={3}>
          <Typography>Prix (€): </Typography>
        </Grid>
        <Grid item xs={2}>
          <Paper sx={{ width: 54}}
                 elevation={3}
                 id='minPrice'
                 name='minPrice'
                 value={props.value[0]}
                 onChange={props.onChange[0]}
          >{props.value[0]}
          </Paper>
        </Grid>
        <Grid item xs={2}>
          <Typography>min</Typography>
        </Grid>
        <Grid item xs={2}>
          <Paper sx={{ width: 54}}
                 elevation={3}
                 id='maxPrice'
                 name='maxPrice'
                 value={props.value[1]}
                 onChange={props.onChange[1]}
          >{props.value[1]}
          </Paper>
        </Grid>
        <Grid item xs={2}><Typography>max</Typography></Grid>
        <Grid item xs={11}>
          <Slider
            getAriaLabel={() => 'price Range'}
            value={props.value}
            onChange={props.onChange}
            valueLabelDisplay="auto"
            getAriaValueText={valuetext}
            marks={marks}
            color='warning'
            min={0}
            max={60000}
            step={1000}
            scale={CompareValue(props.value, props.onChange)}
            id='priceRange'
          />
        </Grid>
      </Grid>
    </Box>
  );
}

