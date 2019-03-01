#!/usr/bin/env Rscript
## Running code on the workspace at UCC
library(RNetLogo)
library(rJava)

## Start the program:
NLStart("/workspace/home/jcolgan/src/NetLogo_6.0.4/app/", gui = FALSE, nl.jarname = "netlogo-6.0.4.jar")

## Load model:
NLLoadModel("/workspace/home/jcolgan/projects/2019-03-01_trout_migration/code/trout-migration/time_example.nlogo")

##
NLCommand("setup")

## Run model:
mydata <- NLGetAgentSet(c("who"),"turtles")

## Print to console:
mydata
