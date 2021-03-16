library(maxnet) ## MaxEnt in R

## Get the Bradypus Data
data <- data("bradypus")
p <- bradypus$presence ## Presence Locations
data <- bradypus[,-1] ## Predictors for Bradypis

## Define a Model
mod <- maxnet(p, data, maxnet.formula(p, data, classes="lp"))

## Explain the Impact of Variables on Presence Only One Given here
plot(mod, "tmp6190_ann")
