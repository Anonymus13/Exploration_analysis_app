# Exploration_analysis_app
## Summary
This is a web application builded up in Shiny that performs an initial exploration of the swiss r-dataset. It basically uses two variables, a predictor and a response variables, selected by the user, plots their relation and their correlation.

## Features
### Predictor and response
These are the extracted variables to work with. Initially is "Agriculture" in both cases, but can be modified to any other variable.

### Fitted line
A line is fitted to the distribution based on the method selected by the user. The default method is "auto". More information could be found here: https://ggplot2.tidyverse.org/reference/geom_smooth.html.
### Color variable
For a third-dimension exploration an additional variable can be included in the plot as color, this may be specially useful for factor variables.

### Size variable
A forth-dimension exploration can be perform adding a size variable. This can be necessary in some cases. 

