################################################################################################################################
# SQL_Commands.R
# 10.25.2013
################################################################################################################################

# Intialize DataBase
install.packages("RMySQL") 
library(RMySQL)
drv <- dbDriver("MySQL")
mydb <- dbConnect(drv, user='andy', password='andy', dbname='mysql', host='128.173.212.125')
dbListTables(mydb)
dbListTables(mydb, "cap1_disk1_build_auth_M155")
#shows the columns in table "cap1_disk1_build_auth_M155"
dbListFields(mydb,"cap1_disk1_build_auth_M155")

#example
ex<-dbGetQuery(mydb, "SELECT * from cap1_disk1_build_M155 WHERE merchant_zip5=customer_zip5")
dbDisconnect(mydb)

library(RODBC)
ch <- odbcConnect("MySQL")
