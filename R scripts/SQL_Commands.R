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
dbListTables(mydb, "cap1 disk1 build_auth_155")
dbDisconnect(mydb)

library(RODBC)
ch <- odbcConnect("MySQL")
