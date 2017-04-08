read.csv("classnames.csv")
read.csv("classnames.csv")
babynames = null
babynames = NULL
years = seq(1880,2014)
print(years)


babynames=NULL
for(i in years) {
a = as.data.frame(read.csv(paste("yob", toString(i), ".txt", sep=''), header = FALSE, col.names = c("Name", "Gender",  "Count")))
b = cbind(a, i)
babynames = rbind(babynames, b)
}

a = (which(babynames$Name=="Vinit"))
Year = babynames[a,4]
Count = babynames[a,3]
plot(Year, Count)
title("Number of babies named Vinit")

female = babynames[which(babynames$Gender=="F"),]
girlnamecount = as.data.frame(table(female$i))
names(girlnamecount) = c("year", "namecounts")
plot(girlnamecount$year, girlnamecount$namecounts, xlab="Year", ylab="Number of unique girl names", main="Growth in number of unique girl names")

top_names = function(year, gender) {
    pho = babynames[which(babynames$Gender==gender&babynames$i==year),]
    ttn = pho[order(pho$count, decreasing = TRUE),]
    return(ttn[(1:10),]) 
}

