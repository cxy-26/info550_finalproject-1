here::i_am("code/01_data.R")

list.of.packages <- c("tidyr", "dplyr", "knitr", "ggplot2", "patchwork", "ggpubr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

library(tidyr)
library(dplyr)
library(knitr)
library(ggplot2)
library(patchwork)
library(ggpubr)

data <- read.csv("data/diabetes.csv")
data$Outcome <- as.factor(data$Outcome)

table1 <- kable(data[1:5,], "pipe", align = "c", caption = "Table 1: First five rows of the dataset")
table2 <- data |> 
  summary() |>
  kable("pipe", align = "c", caption = "Table 2: Summary Statistics of the dataset")

save(data, table1, table2, file = "output/data.Rdata")
