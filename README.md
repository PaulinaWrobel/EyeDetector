# Eye Detector :eyes:

### Scripts running order
- init - `netInit`
- prepare data
    - `getNieoka` and `getOka`
    - or `loadPatterns`
- training - `netTrain`
- concatenate data - `catPatterns`
- find eye in the picture - `findEye`
- show results on the picture - `showResults`
