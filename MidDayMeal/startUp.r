#Execute Lines on after other.
setwd(getwd())
link <- getwd()
readDict <- "/DataDictionary.csv"
location <- paste(link,readDict,sep = "") #Path of Directory File
dictDf <- read.csv(location) #Reading Directory
dateFileAccess <- dictDf[1] 
#Extracting the required file name
#Enter the Day numeric value i.e 1,2,3,....etc any one
fileName <- as.character(dateFileAccess$File.Name[as.integer(readline("Enter which day of december you want:"))])
fileDirectoryName <- "/DataSet-December2017/"
filePath <- paste(link,fileDirectoryName,fileName,".csv",sep = "") 
dayDf <- read.csv(filePath)
#Data Extraction Complete
