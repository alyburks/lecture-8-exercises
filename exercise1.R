### Exercise 1 ###

# Install the nycflights13 package and read it in.  Require the dplyr package
# install.packages("nycflights13")
library(nycflights13)
library(dplyr)

# The data.frame flights should now be accessible to you.  View it, 
# and get some basic information about the number of rows/columns
View(flights)

# Add a column that is the amount of time gained in the air
flights <- mutate(flights, gained_air <- delay_arrival - delay_depart)

# Sort your data.frame desceding by the column you just created
flight <- arrange(flight, desc(gained_air))

# Try doing the last 2 steps in a single operation using the pipe operator
mutate(flights, gained_air <- delay_arrival - delay_depart) <%> arrange(, desc(gained_air))

# Make a histogram of the amount of gain using the `hist` command


# On average, did flights gain or lose time?


# Create a data.frame of flights headed to seatac ('SEA'), 
# and only include the column you just created


# On average, did flights to seatac gain or loose time?


# Write a function that allows you to specify an origin, a destination, and a column of interest
# that returns a data.frame of flights from the origin to the destination and only the column of interest
## Hint: see slides on standard evaluation


# Retireve the air_time column for flights from JFK to SEA


# What was the average air time of those flights (in hours)?  What was the min/max?


### Bonus ###
# Rewrite the function above to return a list of the min, max, and mean values of the column of interest


# Calculate the departure delays from JFK to DEN

