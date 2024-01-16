## Assignment Part-1
Q1. Why do we call Python as a general purpose and high-level programming language?
Ans: Python is called as a general purpose language because it can be used to create many things like web development,machine learning,artificial , web scrapping applications ,etc .Python is called high-level programming because it is easy to use and understand, has many libraries available, easy to access.

Q2. Why is Python called a dynamically typed language?
Ans: Python is called dynamically typed language because in that variable types are determined and checked at runtime rather than during compilation.That is why we do not need to give data types while declaring variables.

Q3. List some pros and cons of Python programming language?
Ans : Pros of Python- Beginner friendly. Well-supported. Flexible. Multiple libraries. Embeddable.  Highly scalable. Prototyping-friendly.
Cons of Python- Slower than compiled languages. Less secure. Not ideal work environment. Bad memory consumption and garbage collection. Dynamically typed. Poor multithreading

Q4. In what all domains can we use Python?
Ans: Python is used for web development, operating systems, AI, machine learning, numerical computing, mobile applications, and game development.

Q5. What are variable and how can we declare them?
Ans:Variables sole purpose is to label and store data in memory.Python has no command for declaring a variable. A variable is created when some value is assigned to it. The value assigned to a variable determines the data type of that variable. Thus, declaring a variable in Python is very simple

Q6. How can we take an input from the user in Python?
Ans: a=input("Enter:")

Q7. What is the default datatype of the value that has been taken as an input using input() function?
Ans:The input() function always returns a string.

Q8. What is type casting?
Ans:Type Casting is the method to convert the Python variable datatype into a certain data type in order to perform the required operation by users.

Q9. Can we take more than one input from the user using single input() function? If yes, how? If no, why?
Ans:Yes
a,b,c=input("Enter 3 numbers:")
print("a=",a,"b=",b,"c=",c)

Q10. What are keywords?
Ans:
Python keywords are special reserved words that have specific meanings and purposes and can't be used for anything but those specific purposes.

Q11. Can we use keywords as a variable? Support your answer with reason.
Ans:Keywords are case sensitive in python. We can't use a keyword as variable name, function name or any other identifier name.

Q12. What is indentation? What's the use of indentaion in Python?
Ans:
Indentation refers to the spaces at the beginning of a code line.Python uses indentation to indicate a block of code.


Q13. How can we throw some output in Python?
Ans:
print()

Q14. What are operators in Python?
Ans:  Operators are special symbols, combinations of symbols, or keywords that designate some type of computation.They are the building blocks of expressions, which you can use to manipulate your data.

Q15. What is difference between / and // operators?
Ans:
/ - Float division
//- floor division

Q16. Write a code that gives following as an output.
```
iNeuroniNeuroniNeuroniNeuron
```
Ans:
st="iNeuron"
print(st*4)

Q17. Write a code to take a number as an input from the user and check if the number is odd or even.
Ans:

num=int(input("Enter a number")):
if num%2==0:
    print("Even")
else:
    print("Odd")

Q18. What are boolean operator?
Ans:
Boolean and operator returns true if both operands return true.
Boolean or operator returns true if any one operand is true.
The not operator returns true if its operand is a false expression and returns false if it is true.

Q19. What will the output of the following?
```
1 or 0

0 and 0

True and False and True

1 or 0 or 0
```
Ans:
1
0
False
1

Q20. What are conditional statements in Python?
Ans:
Conditional statements (if, else, and elif) are fundamental programming constructs that allows to control the flow of  program based on conditions that is specified. They provide a way to make decisions in program and execute different code based on those decisions


Q21. What is use of 'if', 'elif' and 'else' keywords?
Ans: 
if:elif:else are conditional statements that helps with the decision making that is required when to execute code based on a particular condition.The if:elif:else statement used in Python helps automate that decision making process.


Q22. Write a code to take the age of person as an input and if age >= 18 display "I can vote". If age is < 18 display "I can't vote".
Ans:
age=int(input("Enter your age:"))
if age>=18:
    print("I can vote")
else:
    print("I can't vote")



Q23. Write a code that displays the sum of all the even numbers from the given list.
```
numbers = [12, 75, 150, 180, 145, 525, 50]
```
Ans:
numbers = [12, 75, 150, 180, 145, 525, 50]
sum_of_num=0
for num in numbers:
    if num%2==0:
        sum_of_num+=num
print(sum_of_num)



Q24. Write a code to take 3 numbers as an input from the user and display the greatest no as output.
Ans:
num=[]
for i in range (3):
    num.append(input ("Enter number :"))
print(max(num))



Q25. Write a program to display only those numbers from a list that satisfy the following conditions

- The number must be divisible by five

- If the number is greater than 150, then skip it and move to the next number

- If the number is greater than 500, then stop the loop
```
numbers = [12, 75, 150, 180, 145, 525, 50]
```
Ans:
numbers = [12, 75, 150, 180, 145, 525, 50]
for num in numbers:
    if num > 500 :
        break
    if num>150 :
        continue
    if num%5==0:
        print(num)