import * as React from 'react';
import { Box, Paper, Slider, Grid, Typography } from '../PackageList.js';

const marks = [
  {
    value: 0,
    label: '0',
  },
  {
    value: 50000,
    label: '50 000€',
  },
  {
    value: 100000,
    label: '100 000€',
  },
];

function valuetext(value) {
  return `${value}€`;
}

export default function RangeSliderMarks() {
  const [value, setValue] = React.useState([10000, 25000]);

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
      spacing={2} 
      columns={9}
      direction="row"
      justifyContent="start"
      alignItems="center"
    >
      <Grid item xs={3}>
        <Typography>Prix (€): min</Typography>
      </Grid>
      <Grid item xs={2}>
        <Paper sx={{ width: 55}}
                elevation={3}>{minValue}
        </Paper>
      </Grid>
      <Grid item xs={1}><Typography>max</Typography></Grid>
      <Grid item xs={2}>
        <Paper
                sx={{ width: 55}}
                elevation={3}>{maxValue}
        </Paper>
      </Grid>
    </Grid>
        <Slider
          getAriaLabel={() => 'Temperature range'}
          value={value}
          onChange={handleChange}
          valueLabelDisplay="auto"
          getAriaValueText={valuetext}
          marks={marks}
          color='warning'
          min={0}
          max={100000}
          step={1000}
          scale={compareValue(minValue, setValue)}
        />
      </Box>
  );
}

