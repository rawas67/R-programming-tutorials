#1
max = 0
for (i in 1:5){
  num1 = as.integer(readline(prompt=paste("Number",i,":")))
  if(max<num1) 
    max=num1
}
paste('The maximum value is: ',max)


#2        
prod = 1
for (i in 1:10){
  num2 = as.integer(readline(prompt=paste('Please enter an integer:')))
  if(num2>0)
    product = prod*num2
}
paste('Product is:',product)



#3
paste("Please choose your favourite programming language: 1. C, 2. Java, 3. VB.Net")
choice = as.integer(readline(prompt = 'Please enter integer between 1-3: '))
fav = switch(choice,"C", "Java", "VB.Net")
paste("Your favourite programming language is",fav)






#4
v4 = sample(c(1:20,20,TRUE))

#####for####
totalsum = 0
for (i in v4){
  totalsum = totalsum + i
} 

####while####
count = 1
totalsum = 0
while (count < length(v4)){
  totalsum = totalsum + v4[count]
  count = count + 1
}

####repeat####
count = 1
totalsum = 0
repeat {
  totalsum = totalsum + v4[count]
  count = count + 1
  if (count == length(v4)){
    break;
  }
}




#5
m1 = matrix(sample(1:20),5,5) 
v5 = m1[,1]

####for#####
totalsum = 0
for (i in v5){
  totalsum = totalsum + i
} 

#####while####
count = 1
totalsum = 0
while (count < length(v5)){
  totalsum = totalsum + v5[count]
  count = count + 1
}

####repeat####
count = 1
totalsum = 0
repeat {
  totalsum = totalsum + v5[count]
  count = count + 1
  if (count == length(v5)){
    break;
  }
}




url <- "http://stat.ethz.ch/Teaching/Datasets/WBL/legierung.dat"
data <- read.table(url, header = TRUE)
