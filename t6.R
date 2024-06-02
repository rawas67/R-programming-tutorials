##Q1
data(AirPassengers, package = "datasets")
data(economics, package = "ggplot2")

##Q2
tut<-scan(file="C:/Users/rawas/OneDrive/Documents/Degree/Level 2/PFDA/tutorial.txt")
tut
max(tut)
min(tut)
mean(tut)

##Q3
web<-read.csv(url("http://www.jaredlander.com/data/TomatoFirst.csv"))
web
#a
nrow(web)
ncol(web)
#b
min(web[,c(5)])
#c
new<-web[,c(3,4)]
new
sum(web[web$Source=="Whole Foods",3])

##Q4
download.file(url="http://www.jaredlander.com/data/ExcelExample.xlsx", destfile="../data/ExcelExample.xlsx", method='libcurl')
library(readxl)
excel_sheets("C:/Users/rawas/Downloads/ExcelExample.xlsx")
ACSXL1<-read_excel("C:/Users/rawas/Downloads/ExcelExample.xlsx", sheet=3)
head(ACSXL1)

#Q5
#a
download.file("http://www.jaredlander.com/data/diamonds.db",destfile="C:/Users/rawas/Downloads/diamonds.db",mode="wb")
library(RSQLite)
dr<-dbDriver("SQLite")
class(dr)
con<-dbConnect(dr,"C:/Users/rawas/Downloads/diamonds.db")
class(con)
dbListTables(con)
dbListFields(con, name="diamonds")
#b
longQuery <- "SELECT * FROM diamonds, DiamondColors WHERE diamonds.color = DiamondColors.Color"
diamondsJoin <-dbGetQuery(con, longQuery,stringsAsFactors=FALSE)
head(diamondsJoin)


