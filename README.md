# Passenger-Movement-Time-Series-Analysis
Passenger Movement Time Series Analysis (India)

This project presents a detailed time series analysis of passenger movement between Indian airports using monthly data. The objective is to explore seasonal trends, forecast future movement patterns, and provide insights for transportation planning.

 Project Contents

- `regression_theory_first_da.pdf` – A detailed report covering:
  - Data cleaning and preprocessing  
  - Time series decomposition using `stl()`  
  - Trend, seasonal, and residual analysis  
  - Linear regression modeling with `lm()`  
  - Forecasting insights and visualizations  

- `data set for thoery.csv` – The dataset containing:
  - Monthly passenger, freight, and mail movement  
  - Origin and destination airport codes  
  - Data ranges from multiple years

📊 Dataset Summary

Key columns include:
- `Year`, `Month`, `Origin`, `Dest`
- `Pax From Origin`, `Pax To Origin`
- `Freight From Origin`, `Freight To Origin`
- `Mail From Origin`, `Mail To Origin`

🔧 Tools Used

- **R Programming**  
- Time Series Decomposition (`stl`)  
- Linear Modeling (`lm`)  
- Data Wrangling with `dplyr` and `tidyverse`  
- Visualization with `ggplot2`

📈 Insights

- Seasonal peaks and drops in passenger flow were identified.
- Clear yearly trends show rising air traffic in major cities.
- Model performance discussed with visual interpretation of components.
