##### 1 ####
r = as.integer(readline(prompt = "Enter a radius:"))
paste("Calculate: 
      1.Area
      2.Circumference 
      3.Diameter")
choice = as.integer(readline(prompt = "Select an option:"))

if(choice == 1)
  pi = 3.142
  area = pi*r*r
  paste("The area of the circle is", area)

if(choice == 2)
  pi = 3.142
  circum = 2*pi*r
  paste("The circumference of the circle is", circum)

if(choice == 3)
  pi = 3.142
  dia = 2*r
  paste("The diameter of the circle is", dia)
  
  
  
#### 2 ####
input = as.integer(readline(prompt = "Enter a number between 1-9999:"))
  rev = 0
  while (input > 0) {
    r = input %% 10
    rev = rev * 10 + r
    input = input %/% 10
  }
  
  paste("The reversed number is :", rev)



#### 3 ####
sales = as.integer(readline(prompt = "Enter the sales amount:"))
per = 0.15*sales+100
paste("The salary is RM",per)


#### 4 ####
num = as.integer(readline(prompt = "Enter an integer:"))
factorial = 1
for(i in 1:num) {
  factorial = factorial * i
}
paste("The factorial of",num,"is",factorial)
