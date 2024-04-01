library(ggplot2)
library(ggthemes)
library(lubridate)
library(dplyr)
library(tidyr)
library(tidyverse) # metapackage of all tidyverse packages
library(DT)
library(scales)

colors = c("#CC1011", "#665555", "#05a399", "#cfcaca", "#f5e840", "#0683c9", "#e075b0")
colors

apr <- read.csv("C:/Users/Dinesh Kingston.S/OneDrive/Desktop/uber-raw-data-apr14.csv")
may <- read.csv("C:/Users/Dinesh Kingston.S/OneDrive/Desktop/uber-raw-data-may14.csv")
june <- read.csv("C:/Users/Dinesh Kingston.S/OneDrive/Desktop/uber-raw-data-jun14.csv")
july <- read.csv("C:/Users/Dinesh Kingston.S/OneDrive/Desktop/uber-raw-data-jul14.csv")
aug <- read.csv("C:/Users/Dinesh Kingston.S/OneDrive/Desktop/uber-raw-data-aug14.csv")
sept <- read.csv("C:/Users/Dinesh Kingston.S/OneDrive/Desktop/uber-raw-data-sep14.csv")

# Combine the data together 
data <- rbind(apr, may, june, july, aug, sept)
cat("The dimensions of the data are:", dim(data))
