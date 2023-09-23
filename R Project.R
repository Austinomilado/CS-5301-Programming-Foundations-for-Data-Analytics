#Chikwendu Austin Chiamaka
#Data Analyst @Ascension Africa
#chikwenduaustin19@gmail.com
#09059382515,08109430717


#Q1.a
# Using vector arithmetic and sum function to achieve question one...

num1 <- c(1, 2, 3, 4, 5)
num2 <- c(1000, 999, 998, 997, 996)
num1 * num2
sum(num1 * num2)

#Q1.b
numerator_b <- seq(1, 99, by=2)
denominator_b <- seq(2, 100, by=2)

decimal_values_b = (numerator_b/denominator_b)

y <- 1
positive_values <- vector()
negative_values <- vector() 
for(y in numerator_b) {
  if (numerator_b[y]/2 != 0){
    positive_values <- append(positive_values, decimal_values_b[y])
  } 
  y <- y + 1
  negative_values<- append(negative_values, decimal_values_b[y])
}

print(sum(positive_values) - sum(negative_values))


#Q1.c
numerator_c = 2^(0:25)
denominator_c= 3^(0:25)

decimal_values_c = numerator_c/ denominator_c

print(sum(decimal_values_c))


#Q2.
#generating random values from 1 to 1000

generated_values <- floor(runif(100, min = 0, max = 1001))
print(generated_values)          

#Q2.a
#length(generated_values)
sorted_val <- sort(generated_values,decreasing = FALSE)
print(sorted_val[2])

#Q2.b
odd_num <- c()
for (i in generated_values) {
  if (i %% 2 != 0) {
    odd_num <- append(odd_num, i)
  }
}
print(odd_num)

#Q2.c
mean(generated_values)
sd(generated_values)

#Q2.d
num3 <- c()
for (i in generated_values) {
  if (i >= 400 & i <= 600) {
    num3 <- c(num3, i)
  }
}
print(sum(num3))

#Q3.a
# creating a data frame of Houston and Miami's average monthly precipitation
average_precipitation <- data.frame(Houston = c(3.68,2.98,3.36,3.60,5.15,
                                                5.35,3.18,3.83,4.33,4.50,
                                                4.19,3.69), Maimi = c(1.88,
                                                2.07,5.56,3.36,5.52,8.54,
                                                5.79,8.63,8.38,6.19,3.43,2.18))
rownames(average_precipitation) <- c("January","February","March","April",
                                     "May","June","July","August","September",
                                     "October","November","December")
rows1 <- rownames.data.frame
print(average_precipitation)

#Q3.b
Houston_data = average_precipitation$Houston
Maimi_data = average_precipitation$Maimi
average_precipitation[Houston_data > Maimi_data, c("Houston","Maimi")]

#Q3.c
average_precipitation[((Houston_data - Maimi_data) < 1), c("Houston","Maimi")]

#Q3.d
average_precipitation$Houston <- average_precipitation$Houston + round((average_precipitation$Houston * 0.02), digits = 2) 
print(average_precipitation)

#Q3.e
average_precipitation_per = as.data.frame(t(Percentage_Difference  = c(((average_precipitation$Houston - average_precipitation$Maimi) / (average_precipitation$Houston + average_precipitation$Maimi)/2))))

rownames(average_precipitation_per) <- c("January","February","March","April",
                                     "May","June","July","August","September",
                                     "October","November","December")
print(average_precipitation_per)

#Q3.f
cat("The summary() of the data frame is", "\n")
summary(average_precipitation)

#Q4.a
age <- c("21-40","41-60","41-60","21-40","0-20","21-40","0-20","41-60","21-40","0-20","60+")
levels: "0-20" < "21-40" < "41-60"
factor_day <- factor(age)
print(factor_day)

#Q4.b
numbers <- seq(2,100, by = 2)
print(numbers)
print(sum(numbers))

strings <- c("x","y","z","a","b")
print(strings)
print(gsub("b", "k", strings))

matrix <- matrix(data = c(9,8,3,2,7,6), nrow = 2, ncol = 3)
print(matrix)t
print(t <- t(matrix))

logical <- c(TRUE, FALSE)
print(logical)
print(logical, na.rm = FALSE)

#Q4.c
product <- matrix(data = c(325,199,244,262,223,412,229,148,403,337,389,399,465,513,336), nrow = 3, ncol = 5)
rownames(product) <- c("WEEK1", "WEEK2", "WEEK3")
colnames(product) <- c("Monday","Tuesday","Wednesday","Thursday","Friady")
print(product)
rowMeans(product)
colMeans(product)

product1 <- matrix(data = c(872,666,598,719,702,504), nrow = 3, ncol = 2)
rownames(product1) <- c("WEEK1", "WEEK2", "WEEK3")
colnames(product1) <- c("Saturday", "Sunday")
print(product1)
cbind(product, product1)

#Conclusion
# At the end of my analysis i was able to....
#1. Compute and  sum arithmetic using the vector arithmetic and sum function.
#2. Generate random numbers, sorting the values, finding the mean and standard deviation 
#3. creating a data frame and manipulating the data frame
#4. creating list of both numbers, strings, matrix and logical values.



