This project uses data from the World Development Indicators (WDI) to explore global patterns in renewable energy consumption and per-capita energy use. 
The repository contains the R scripts and output plot that illustrate these trends across key countries.
---
Exercise 1: Renewable Energy Consumption Over Time

This visualization examines how renewable energy consumption (as a share of total final energy use) has changed every ten years between **1992, 2002, and 2012**.

What the visualization shows
- Density curves of renewable energy use for all available countries  
- Separate line colors and linetypes for each year
- A comparison of global renewable energy distribution across time

 Exercise 2: Per Capita Energy Use by Country

This visualization compares energy use per capita across six major countries:

**Brazil, China, Germany, India, Russian Federation & United States**

Each country’s distribution is displayed using a **brown-density fill** with **30% transparency**, 
allowing the shape of the curve to show clearly without harsh outlines. 
Faceting is used to give each country its own panel, making patterns easier to compare side-by-side.

- **Fill color:** soft brown (`fill = "brown"`) for a warm, neutral tone  
- **Transparency:** `alpha = 0.3` to reduce opacity and avoid overcrowding  
- **No border line:** `color = NA` keeps the curve focused on shape, not outlines  
- **Faceted layout:** `facet_wrap(~ country)` for clean country comparison  
- **Minimal theme:** `theme_bw()` for a professional  appearance

Thank you!
