here::i_am("code/02_explore_histagram.R")
library(ggplot2)
load("output/data.Rdata")

hist_pregnancies <- ggplot(data, aes(x = Pregnancies)) +
  geom_histogram(color = "darkblue", fill = "lightblue") +
  labs(title = "Pregnancies", x = "Pregnancies", y = "Count") +
  theme_minimal()

hist_glucose <- ggplot(data, aes(x = Glucose)) +
  geom_histogram(color = "darkblue", fill = "lightblue") +
  labs(title = "Glucose", x = "Glucose", y = "Count") +
  theme_minimal()

hist_blood <- ggplot(data, aes(x = BloodPressure)) +
  geom_histogram(color = "darkblue", fill = "lightblue") +
  labs(title = "BloodPressure", x = "BloodPressure", y = "Count") +
  theme_minimal()

hist_skin <- ggplot(data, aes(x = SkinThickness)) +
  geom_histogram(color = "darkblue", fill = "lightblue") +
  labs(title = "SkinThickness", x = "SkinThickness", y = "Count") +
  theme_minimal()

hist_insulin <- ggplot(data, aes(x = Insulin)) +
  geom_histogram(color = "darkblue", fill = "lightblue") +
  labs(title = "Insulin", x = "Insulin", y = "Count") +
  theme_minimal()

hist_bmi <- ggplot(data, aes(x = BMI)) +
  geom_histogram(color = "darkblue", fill = "lightblue") +
  labs(title = "BMI", x = "BMI", y = "Count") +
  theme_minimal()

hist_pedigree <- ggplot(data, aes(x = DiabetesPedigreeFunction)) +
  geom_histogram(color = "darkblue", fill = "lightblue") +
  labs(title = "Diabetes Pedigree", x = "DiabetesPedigreeFunction", y = "Count") +
  theme_minimal()

hist_age <- ggplot(data, aes(x = Age)) +
  geom_histogram(color = "darkblue", fill = "lightblue") +
  labs(title = "Age", x = "Age", y = "Count") +
  theme_minimal()

count_outcome <- ggplot(data, aes(x = Outcome)) +
  stat_count(fill = "steelblue", width = 0.3) +
  labs(title = "Outcome", x = "Outcome", y = "Count") +
  theme_minimal()

save(hist_skin, hist_pedigree, hist_bmi, hist_insulin, hist_age, 
     hist_blood, hist_glucose, count_outcome,
     file = "output/histagram.Rdata")