#############################################################
# Nelo Okafor
# Data Visualization  
# In this script: 
# October 13 2025
#############################################################

#Clear global environment
rm(list = ls())

#Load in packages I need
library(ggplot2)
library(readr)
library(tidyverse)
library(dplyr)

#Load in data
setwd("~/Google Drive/My Drive/412_413 shared AY25-26")
data <- read.csv("Training Data F25/wdi_cleaned_part2.csv", stringsAsFactors = FALSE)


#Exercise 1:  Visualizing Trends in Renewable Energy Consumption by Year

ggplot(
  data %>% filter(year %in% c(1992, 2002, 2012)),
  aes(x = renewable_energyuse, color = factor(year), linetype = factor(year))
) +
  geom_line(stat = "density") +
  labs(
    title = "Renewable Energy Consumption Every 10 Years",
    subtitle = "From 1992 - 2012", 
    x = "Renewable Energy Consumption (% of Total Final Energy Consumption)", 
    y = "Density"
  ) +
  theme_bw() +
  scale_color_manual(name = "Year", values = c("hotpink", "dodgerblue4", "purple")) +
  scale_linetype_manual(name = "Year", values = c("dashed", "solid", "dotted")) +
  theme(legend.key.size = unit(1, "cm")) +
  coord_cartesian(ylim = c(0, 0.02))

#Exercise 2: Visualizing Per Capita Energy Use by Country
ggplot(data %>% filter(country %in% c("United States", "Germany", "Brazil", 
                                      "Russian Federation",
                                      "India", "China")),
       aes(x = energyuse_pop)) +
  geom_density(fill = "brown", alpha = 0.3, color = NA) +
  facet_wrap(~ factor(country), ncol = 2) +
  theme_bw() +
  labs(
    title = "Per Capita Energy Use by Country",
    x = "Energy Use", 
    y = "Density")
