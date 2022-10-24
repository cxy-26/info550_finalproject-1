# Final Project for Info 550 by Qi Yu

## Generate Report

run

```{bash}
make report.html
```

## Delete Report and Report files

run

```{bash}
make clean
```

## Initial file description

`README.RMD`: a readme file discirbing the organization of this project

`data/`: folder for dataset

- `data/diabetes.csv` : data for this project

`code/` : folder for R codes

- `code/00_render_report.R`: render `QiYu_ProjectReport.Rmd`
- `code/01_data.R` : read raw data and save data in RData
- `code/02_explore_histagram.R`: generate histagram for exploratory analysis
- `code/03_explore_boxplot.R`: generate boxplot for exploratary analysis
- $\dots$

`output/`: folder for outputs including tables and plots

`QiYu_ProjectReport.Rmd` : building report

- Contain contents to make a report
- Read $RData$ from `output/`
- make tables and figures

`Makefile` : a make file

`.gitignore`: a gitignore file

