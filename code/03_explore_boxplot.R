here::i_am("code/03_explore_boxplot.R")
library(ggplot2)
load("output/data.Rdata")

box_pregnancies <- ggplot(data, aes(x = Pregnancies)) +
  geom_boxplot(color = "darkblue", fill = "lightblue") +
  labs(title = "Pregnancies", x = "Pregnancies") +
  theme_minimal()

box_glucose <- ggplot(data, aes(x = Glucose)) +
  geom_boxplot(color = "darkblue", fill = "lightblue") +
  labs(title = "Glucose", x = "Glucose") +
  theme_minimal()

box_blood <- ggplot(data, aes(x = BloodPressure)) +
  geom_boxplot(color = "darkblue", fill = "lightblue") +
  labs(title = "BloodPressure", x = "BloodPressure") +
  theme_minimal()

box_skin <- ggplot(data, aes(x = SkinThickness)) +
  geom_boxplot(color = "darkblue", fill = "lightblue") +
  labs(title = "SkinThickness", x = "SkinThickness") +
  theme_minimal()

box_insulin <- ggplot(data, aes(x = Insulin)) +
  geom_boxplot(color = "darkblue", fill = "lightblue") +
  labs(title = "Insulin", x = "Insulin") +
  theme_minimal()

box_bmi <- ggplot(data, aes(x = BMI)) +
  geom_boxplot(color = "darkblue", fill = "lightblue") +
  labs(title = "BMI", x = "BMI") +
  theme_minimal()

box_pedigree <- ggplot(data, aes(x = DiabetesPedigreeFunction)) +
  geom_boxplot(color = "darkblue", fill = "lightblue") +
  labs(title = "Diabetes Pedigree", x = "DiabetesPedigreeFunction") +
  theme_minimal()

box_age <- ggplot(data, aes(x = Age)) +
  geom_boxplot(color = "darkblue", fill = "lightblue") +
  labs(title = "Age", x = "Age") +
  theme_minimal()

save(box_skin, box_pedigree, box_bmi, 
     box_insulin, box_age, box_blood, box_glucose,
     file = here::here("output/boxplots.Rdata"))
