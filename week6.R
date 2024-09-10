i = 0
j = rnorm(1, 0, 1)
print(j)

while(i < 6){
  i = i + 1
  if(i == 3){
  next #到i=3的時候直接省略下面指令
  }
  print(i)
  j = j + 1
  print(j)
}


_repeat_

repeat{
  if(x^2 > 20){
  break
  }
  print(x)
  x = x + 1
}

x = 1
i = 1
repeat{
  if(x[i] > 10){break}
  x = c(x, 1.5 * x[i])
  i = i + 1
  print(x)
}


number = 1
while(number <= 10) {
  if (number %% 2 == 0) {
  number = number + 1
  next 
  }
  print(number)

  number = number + 1 
}


__Exercise__

number = sample(0:50, 10^3, replace = T)
i = 1
s = number[i]
repeat{
  i = i + 1
  s = s + number[i]
  print(s)
  if((s-number[i])<1000 & s>1000){
    #(s-number[i]<1000可省略)
    break
    }
}

#改用for

for(i in 1:length(number)){
  s = sum(number[1:i])
  if(s>1000){break}
}


number = runif(1000, 0, 2)
i = 1
p = number[i]
repeat{
  i = i + 1
  p = p * number[i]
  if(p/number[i]>0.7 & p<0.7){break}
}


_Exercise_

x = 0
repeat{
  x = x + 1
  y = rbinom(1, 1, 0.05)
  print(y)
  if(y == 1){break}
}


_Exercise_

i = 1
s = 1
repeat{
  s = s * i
  i = i + 1
  if(i > 15){break}
}
s


number = sample(1:100, 10^5, replace = T)

y = 0
for(i in 1:length(number)){
  if(number[i] == 50){
    y = y + 1
    if(y == 10){break}
  }
}
i

i = 1
y = 0
repeat{
  y = y + 1*(number[i]==50)
  i = i + 1
  if(y == 10){break}


}






















