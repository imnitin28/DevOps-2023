print("This program contains basics of Python")
description1 = "Variables and datatypes"
print(description1)

name = "Nitin"
age = 28
is_Student = False

print("Name is, " + name)
print("Age is , " + str(age))
print("Are you a studnent?  " + str(is_Student))

description2 = "Operators"
print(description2)

number1 = 20
number2 = 50

print(number1 + number2)

print(number1 > number2)

description3 = "Input Variables"
print(description3)

name = input("Enter your name: ")
print("Hello, " + name + "!")

print("Conditionals, Loops and Functions!")

if age >= 25:
    print("age above 25")
elif age <= 20:
    print("age under 20")
else:
    print("current age")

print("Loops")
print("Loops thorugh a list of numbers")
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    print(num)
for i in range(5):
    print(i)

print("while loop")
count = 0
while count < 5:
    print(count)
    count += 1

print ("Functions")

def greet(name):
    print(f"Hello, {name}!")
greet("Nitin")

print("Function with return value")
def add(a, b):
    return a + b

result  = add(3, 5)
print(result)