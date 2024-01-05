import * as React from 'react';
import { Box, Slider, Typography, Grid, Paper } from '../PackageList.js';


const marks = [
  {
    value: 0,
    label: '0',
  },
  {
    value: 150,
    label: '150 g/km',
  },
  {
    value: 300,
    label: '300 g/km',
  },
];

function valuetext(value) {
  return `${value}g/km`;
}

export default function RangeSliderCo2() {
  const [value, setValue] = React.useState([0, 300]);

  const handleChange = (event, newValue) => {
    setValue(newValue);
  };

  let minValue = value[0]
  let maxValue = value[1]
  const compareValue = (minValue, setValue) => {
    (minValue <= setValue? minValue :setValue)
  }

  return (
    <Box sx={{ width: 320 }}>
      <Grid
      container 
      spacing={0} 
      columns={11}
      direction="row"
      justifyContent="start"
      alignItems="center"
      className='text-warning fw-bold'
    >
      <Grid item xs={4}>
          <Typography>Emission Co2:</Typography>
      </Grid>
      <Grid item xs={2}>
        <Paper sx={{ width: 40}}
                elevation={3}
                id='minCo2' 
                name='minCo2'>{minValue}
                
        </Paper>
      </Grid>
      <Grid item xs={1}><Typography>min</Typography></Grid>
      <Grid item xs={2}>
        <Paper
                sx={{ width: 40}}
                elevation={3}
                id='maxCo2'
                name='maxCo2'>{maxValue}
        </Paper>
      </Grid>
    <Grid item xs={1}><Typography>max</Typography></Grid>
    <Grid item xs={11}>
      <Slider
        label="Emission de Co2"
        getAriaLabel={() => 'Co2 range'}
        value={value}
        onChange={handleChange}
        valueLabelDisplay="auto"
        getAriaValueText={valuetext}
        marks={marks}
        color='warning'
        min={0}
        max={300}
        step={10}
        scale={compareValue(minValue, setValue)}
      />
      </Grid>
      </Grid>
    </Box>

  );
}