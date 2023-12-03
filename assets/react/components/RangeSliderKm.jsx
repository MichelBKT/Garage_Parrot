import * as React from 'react';
import { Box, Slider, Paper, Grid, Typography } from '../PackageList.js';






const marks = [
  {
    value: 0,
    label: '0',
  },
  {
    value: 70000,
    label: '70 000 km',
  },
  {
    value: 200000,
    label: '200 000 km',
  },
];

function valuetext(value) {
  return `${value}km`;
}

export default function RangeSliderKm() {
  const [value, setValue] = React.useState([25000, 75000]);

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
      <Grid item xs={0}>
          <Typography>Kilométrage: min</Typography>
      </Grid>
      <Grid item>
        <Paper sx={{ width: 55}}
                elevation={3}>{minValue}
        </Paper>
      </Grid>
      <Grid item ><Typography>max</Typography></Grid>
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
        max={200000}
        step={10000}
        scale={compareValue(minValue, setValue)}
      />
    </Box>
  );
}
