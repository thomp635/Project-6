#I am importing the data.
myDF <- read.csv("/class/datamine/data/8451/The_Complete_Journey_2_Master/5000_transactions.csv")
#I am splitting the data and renaming the new variable.
myresults <- split(myDF, myDF$STORE_R)
#I am finding class of myresults.
class(myresults)
#The solution is list.
#I am finding length of myresults.
length(myresults)
#The solution is 4.
#I am finding names of myresults.
names(myresults)
#The solution is central, east, south, west.
#I am checking the dimensions of myresults.
dim(myresults[["CENTRAL"]])
#The solution is 2463343 observations of 9 variables.
#I am checking the head of myresults.
head(myresults [["CENTRAL"]])
#I got a table with a lot of data.
#I am verifying the dim and head that myresults and centralresults are the same.
centralresults <- myDF[myDF$STORE_R == "CENTRAL", ]
dim
#The solution is 2463343 observations of  9 variables.
head(centralresults)
#I got the same table as before.
#I am importing the data.
myproducts <- read.csv("/class/datamine/data/8451/The_Complete_Journey_2_Master/5000_products.csv")
#There are 151141 observations of 5 variables.
#I am merging myDF and myproducts and renaming the new variable. 
mybigDF <- merge(myDF, myproducts, by="PRODUCT_NUM")
#I am taking a subset of the purchases.
subset(myDF,PURCHASE_=="23 December 2017")
#The solution is BASKET_NUM, HSHD_NUM, PURCHASE_, PRODUCT_NUM SPEND, UNITS, STORE_R, WEEK_NUM, AND YEAR.
#I am taking a subset of the dollar amounts. 
subset(myDF,PURCHASE_=="23 December 2017", select = SPEND)
#The solution is SPEND.
#I am taking a subset of the dollar amounts and dates.
subset(myDF,PURCHASE_=="23 December 2017", select = c(PURCHASE_,SPEND))
#The solution is PURCHASE_SPEND.
#I am taking a subset of the dollar amounts, dates, and stores.
subset(myDF,PURCHASE_=="23 December 2017",select = c(PURCHASE_,SPEND, STORE_R))
#The solution is PURCHASE_SPEND STORE_R.
#I am finding which store has the largest amount of purchases.
tail(sort(tapply(subset(myDF,PURCHASE_=="23 December 2017",select = c(PURCHASE_,SPEND,STORE_R))$SPEND,subset(myDF,PURCHASE_=="23 December 2017",select = c(PURCHASE_,SPEND,STORE_R))$STORE_R,sum)))
#The solution is named logical.