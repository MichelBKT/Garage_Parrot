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
function compareValue(co2,setCo2) {
  co2 <= setCo2 ? co2 : setCo2
}
export default function RangeSliderCo2(props) {

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
        <Grid item xs={4}>
            <Typography>Emission Co2:</Typography>
        </Grid>
        <Grid item xs={2}>
          <Paper sx={{ width: 54}}
                  elevation={3}
                  id='minCo2'
                  name='minCo2'
                  value={props.value[0]}
                  onChange={props.onChange[0]}
          >{props.value[0]}
          </Paper>
        </Grid>
        <Grid item xs={2}>
          <Typography>min</Typography>
        </Grid>
        <Grid item xs={2}>
          <Paper
                  sx={{ width: 54}}
                  elevation={3}
                  id='maxCo2'
                  name='maxCo2'
                  value={props.value[1]}
                  onChange={props.onChange[1]}
          >{props.value[1]}
          </Paper>
        </Grid>
        <Grid item xs={1}>
          <Typography>max</Typography>
        </Grid>
        <Grid item xs={11}>
          <Slider
            label="Emission de Co2"
            getAriaLabel={() => 'Co2 range'}
            value={props.value}
            onChange={props.onChange}
            valueLabelDisplay="auto"
            getAriaValueText={valuetext}
            marks={marks}
            color='warning'
            min={0}
            max={300}
            step={10}
            scale={compareValue(props.value, props.onChange)}
            id="co2Range"
          />
        </Grid>
      </Grid>
    </Box>

  );
}