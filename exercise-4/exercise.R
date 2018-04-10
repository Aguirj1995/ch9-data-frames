# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as
# factors!

Grants <- read.csv("data/gates_money.csv", stringsAsFactors = FALSE)
# Use the View function to look at the loaded data
View(Grants)

# Create a variable `organization` that contains the `organization` column of
# the dataset
organization <- Grants$organization

# Confirm that the "organization" column is a vector using the `is.vector()`
# function.
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
mean_grant <- mean(Grants$total_amount)

# What was the dollar amount of the largest grant?
Highest_amount <- max(Grants$total_amount)

# What was the dollar amount of the smallest grant?
Lowest_amount <-min(Grants$total_amount)

# Which organization received the largest grant?
Largest_Org <- organization[Grants$total_amount == Highest_amount]

# Which organization received the smallest grant?
Smallest_Org <-organization[Grants$total_amount == Lowest_amount]

# How many grants were awarded in 2010?
length(Grants$total_amount[Grants$start_year == 2010])
