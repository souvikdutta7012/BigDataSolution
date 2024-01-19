## Assignment Part-1
Q1. Why do we call Python as a general purpose and high-level programming language?
```
Ans: Python is called as a general purpose language because it can be used to create many things like web development,machine learning,artificial , web scrapping applications ,etc .Python is called high-level programming because it is easy to use and understand, has many libraries available, easy to access.
```

Q2. Why is Python called a dynamically typed language?
```
Ans: Python is called dynamically typed language because in that variable types are determined and checked at runtime rather than during compilation.That is why we do not need to give data types while declaring variables.
```

Q3. List some pros and cons of Python programming language?
```
Ans : Pros of Python- Beginner friendly. Well-supported. Flexible. Multiple libraries. Embeddable.  Highly scalable. Prototyping-friendly.
Cons of Python- Slower than compiled languages. Less secure. Not ideal work environment. Bad memory consumption and garbage collection. Dynamically typed. Poor multithreading
```
Q4. In what all domains can we use Python?
```
Ans: Python is used for web development, operating systems, AI, machine learning, numerical computing, mobile applications, and game development.
```
Q5. What are variable and how can we declare them?
```
Ans:Variables sole purpose is to label and store data in memory.Python has no command for declaring a variable. A variable is created when some value is assigned to it. The value assigned to a variable determines the data type of that variable. Thus, declaring a variable in Python is very simple
```
Q6. How can we take an input from the user in Python?
``` 
a=input("Enter:")
```
Q7. What is the default datatype of the value that has been taken as an input using input() function?
```
Ans:The input() function always returns a string.
```
Q8. What is type casting?
```
Ans:Type Casting is the method to convert the Python variable datatype into a certain data type in order to perform the required operation by users.
```
Q9. Can we take more than one input from the user using single input() function? If yes, how? If no, why?
```
Ans:Yes
a,b,c=input("Enter 3 numbers:")
print("a=",a,"b=",b,"c=",c)
```
Q10. What are keywords?
```
Ans:
Python keywords are special reserved words that have specific meanings and purposes and can't be used for anything but those specific purposes.
```
Q11. Can we use keywords as a variable? Support your answer with reason.
```
Ans:Keywords are case sensitive in python. We can't use a keyword as variable name, function name or any other identifier name.
```
Q12. What is indentation? What's the use of indentaion in Python?
```
Ans:
Indentation refers to the spaces at the beginning of a code line.Python uses indentation to indicate a block of code.
```

Q13. How can we throw some output in Python?
```
print()
```
Q14. What are operators in Python?
```
Ans:  Operators are special symbols, combinations of symbols, or keywords that designate some type of computation.They are the building blocks of expressions, which you can use to manipulate your data.
```

Q15. What is difference between / and // operators?
```
Ans:
/ - Float division
//- floor division
```
Q16. Write a code that gives following as an output.
```
iNeuroniNeuroniNeuroniNeuron
```
```
st="iNeuron"
print(st*4)
```
Q17. Write a code to take a number as an input from the user and check if the number is odd or even.
Ans:
```
num=int(input("Enter a number")):
if num%2==0:
    print("Even")
else:
    print("Odd")
```
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

Q26. What is a string? How can we declare string in Python?
```
Ans:Python strings are immutable. We can declare them using single, double, or triple quotes, or using the str() function.
```
Q27. How can we access the string using its index?
```
i=int(input("Enter the index to access:"))
string="abcd"
print(string[i])
```
Q28. Write a code to get the desired output of the following
```
string = "Big Data iNeuron"
desired_output = "iNeuron"
```
```
string = "Big Data iNeuron"
print(string.split()[2])
```
Q29. Write a code to get the desired output of the following
```
string = "Big Data iNeuron"
desired_output = "norueNi"
```
```
string = "Big Data iNeuron"
print(string.split()[2][::-1])
```
Q30. Resverse the string given in the above question.
```
string = "Big Data iNeuron"
print(string[::-1])
```
Q31. How can you delete entire string at once?
```
string = "Big Data iNeuron"
del(string)
```
Q32. What is escape sequence?
```
Ans:To insert characters that are illegal in a string, use an escape character. An escape character is a backslash \ followed by the character we want to insert.
```
Q33. How can you print the below string?
```
'iNeuron's Big Data Course'
```
```
print("\'iNeuron\'s Big Data Course\'")
```
Q34. What is a list in Python?
```
Ans:Python's list is a flexible, versatile, powerful, and popular built-in data type. It allows us to create variable-length and mutable sequences of objects. In a list, we can store objects of any type. We can also mix objects of different types within the same list, although list elements often share the same type.
```
Q35. How can you create a list in Python?
```
mylist = ["apple", "banana", "cherry"]
print(mylist)
```
Q36. How can we access the elements in a list?
```
i=int(input("Enter the index of element to access:"))
mylist = ["apple", "banana", "cherry"]
print(mylist[i])
```
Q37. Write a code to access the word "iNeuron" from the given list.
```
lst = [1,2,3,"Hi",[45,54, "iNeuron"], "Big Data"]
``` 
```
lst = [1,2,3,"Hi",[45,54, "iNeuron"], "Big Data"]
print(lst[4][2])
```
Q38. Take a list as an input from the user and find the length of the list.
```
lst=[item for item in input("Enter the elements:").split()]
print(len(lst))
```
Q39. Add the word "Big" in the 3rd index of the given list.
```
lst = ["Welcome", "to", "Data", "course"]
```
```
lst = ["Welcome", "to", "Data", "course"]
lst[2]="Big"+lst[2]
print(lst)
```
Q40. What is a tuple? How is it different from list?
```
Ans:Tuples are used to store multiple items in a single variable.The key difference between the tuples and lists is that while the tuples are immutable objects the lists are mutable.
```
Q41. How can you create a tuple in Python?
```
mytuple = ("apple", "banana", "cherry")
print(mytuple)
```
Q42. Create a tuple and try to add your name in the tuple. Are you able to do it? Support your answer with reason.
```
Ans:No we can't because tuples are immutable.The only way we can do is delete that existing tuple and create a new tuple with required changes.
```
Q43. Can two tuple be appended. If yes, write a code for it. If not, why?
```
Ans:No we can't because tuples are immutable.The only way we can do is delete that existing tuple and create a new tuple with required changes.
```
Q44. Take a tuple as an input and print the count of elements in it.
```
tup=tuple(input("Enter elements:").split())
print(len(tup))
```
Q45. What are sets in Python?
```
Ans:A set is a collection which is unordered, unchangeable,unindexed and duplicates are not allowed.
```
Q46. How can you create a set?
```
thisset = {"apple", "banana", "cherry", "apple"}
print(thisset)
```
Q47. Create a set and add "iNeuron" in your set.
```
thisset = {"apple", "banana", "cherry", "apple"}
thisset.add("iNeuron")
print(thisset)
```
Q48. Try to add multiple values using add() function.
```
thisset = {"apple", "banana", "cherry", "apple"}
thisset.add("iNeuron")
thisset.add("Big")
thisset.add("Data")
thisset.add("Course")
print(thisset)
```
Q49. How is update() different from add()?
```
Ans:Add accepts an element and put it in the set if it is not already there but update takes an iterable and makes a unions of the set with that iterable.
```
Q50. What is clear() in sets?
```
Ans:Removes all the elements from the set.
```
Q51. What is frozen set?
```
Ans:An immutable version of a Python set object is a frozen set.
```
Q52. How is frozen set different from set?
```
Ans:While parts of a set can be changed at any moment, elements of a frozen set don’t change after they’ve been created. As a result, frozen sets can be used as Dictionary keys or as elements of other sets.
```
Q53. What is union() in sets? Explain via code.
```
Ans:Return a set containing the union of sets.
```
```
set1 = {"a", "b" , "c"}
set2 = {1, 2, 3}
set3 = set1.union(set2)
print(set3)
```
Q54. What is intersection() in sets? Explain via code.
```
Ans:Returns a set, that is the intersection of two or more sets.
```
```
x = {"apple", "banana", "cherry"}
y = {"google", "microsoft", "apple"}
x.intersection(y)

print(x)
```
Q55. What is dictionary in Python?
```
Ans:A dictionary in Python is a data structure that stores the value in value:key pairs.
```
Q56. How is dictionary different from all other data structures.
```
Ans:A dictionary in Python is a data structure that stores the value in value:key pairs.While other data structures stores only values which system generated indexes.
```
Q57. How can we delare a dictionary in Python?
```
var = {}
print(type(var))
```

Q58. What will the output of the following?
```
var = {}
print(type(var))
```
```
Ans:<class 'dict'>
```
Q59. How can we add an element in a dictionary?
```
statesAndCapitals = {
    'Gujarat': 'Gandhinagar',
    'Maharashtra': 'Mumbai',
    'Rajasthan': 'Jaipur',
    'Bihar': 'Patna'
}
statesAndCapitals[input('Enter the key to be inserted:')]=input('Enter the value to be inserted:')
 
for capital in statesAndCapitals.values():
    print(capital)
```
Q60. Create a dictionary and access all the values in that dictionary.
```
myfamily = {
  "child1" : {"name" : "Emil","year" : 2004},
  "child2" : {"name" : "Tobias","year" : 2007},
  "child3" : {"name" : "Linus","year" : 2011}
}
for items1,dict1 in myfamily.items():
    print("\n",items1,"==>",end=" ")
    for items2,value2 in dict1.items():
        print(items2,value2,end=",")
```
Q61. Create a nested dictionary and access all the element in the inner dictionary.
```
myfamily = {
  "child1" : {"name" : "Emil","year" : 2004},
  "child2" : {"name" : "Tobias","year" : 2007},
  "child3" : {"name" : "Linus","year" : 2011}
}
for items1,dict1 in myfamily.items():
    print("\n",items1,"==>",end=" ")
    for items2,value2 in dict1.items():
        print(items2,value2,end=",")
```
Q62. What is the use of get() function?
```
Ans:Returns the value of the specified key.
```
Q63. What is the use of items() function?
```
Ans:Returns a list containing a tuple for each key value pair.
```
Q64. What is the use of pop() function?
```
Ans:Removes the element with the specified key.
```
Q65. What is the use of popitems() function?
```
Ans:Removes the last inserted key-value pair.
```
Q66. What is the use of keys() function?
```
Ans:The keys() method returns a view object. The view object contains the keys of the dictionary, as a list.
```
Q67. What is the use of values() function?
```
Ans:The values() method returns a view object. The view object contains the values of the dictionary, as a list.
```
Q68. What are loops in Python?
```
Ans:Looping means repeating something over and over until a particular condition is satisfied.
```
Q69. How many type of loop are there in Python?
```
Ans:There are two types of loops in python: for loop and while loop.
```
Q70. What is the difference between for and while loops?
```
Ans:for loop is used when the number of iterations is known, whereas execution is done in a while loop until the statement in the program is proved wrong.
```
Q71. What is the use of continue statement?
```
Ans:The continue statement in Python is used to skip the remaining code inside a loop for the current iteration only.
```
Q72. What is the use of break statement?
```
Ans:A break statement in Python alters the flow of a loop by terminating it once a specified condition is met.
```
Q73. What is the use of pass statement?
```
Ans:The pass statement is used as a placeholder for future code. When the pass statement is executed, nothing happens, but we avoid getting an error when empty code is not allowed. Empty code is not allowed in loops, function definitions, class definitions, or in if statements.
```
Q74. What is the use of range() function?
```
Ans:The range() function is used in loops like for loop,while loop etc. to iterate through the sequences.It generates a sequence of numbers within a given range.
```
Q75. How can you loop over a dictionary?
```
statesAndCapitals = {
    'Gujarat': 'Gandhinagar',
    'Maharashtra': 'Mumbai',
    'Rajasthan': 'Jaipur',
    'Bihar': 'Patna'
}
print('Looping over dictionary:\n')
 
for capital in statesAndCapitals.values():
    print(capital)
```

### Coding problems
Q76. Write a Python program to find the factorial of a given number.
```
Input=int(input("Enter a number:"))
Factorial=1
while Input!=1:
    Factorial*=Input
    Input-=1
print("Factorial is",Factorial )    

```
Q77. Write a Python program to calculate the simple interest. Formula to calculate simple interest is SI = (P*R*T)/100
```
P=int(input("Enter Principal:"))
R=int(input("Enter Rate:"))
T=int(input("Enter Time:"))
print("Simple Interest is:",P*R*T*0.01)
```
Q78. Write a Python program to calculate the compound interest. Formula of compound interest is A = P(1+ R/100)^t.
```
P=int(input("Enter Principal:"))
R=int(input("Enter Rate:"))
T=int(input("Enter Time:"))
print("Compound Interest is:",(P(1+(R*0.01))**T))

```
Q79. Write a Python program to check if a number is prime or not.
```
p=int(input("Enter Number:"))
if p==1 :
    print("Not a prime number")
for i in range(2,p+1):
    if i==p:
        print("Prime Number")
        break
    if p%i==0 :
        print("Not a prime number")
        break
```
Q80. Write a Python program to check Armstrong Number.
```
num=input("Enter Number:")
size=len(num)
temp=0
for i in num:
    temp+=int(i)**size
if temp==int(num):
    print("Armstrong Number")
else:
    print("Not Armstrong Number")
    
```
Q81. Write a Python program to find the n-th Fibonacci Number.
```
Input= int(input("Enter the nth term if Fibonacce : "))
Output=[0]*Input
Output[0]=0
Output[1]=1
for i in range(2,Input):
    Output[i]=Output[i-1]+Output[i-2]
print(Output[-1])

```
Q82. Write a Python program to interchange the first and last element in a list.
```

Input=[]
Input=[item for item in input("Enter the list items : ").split()]
temp=Input[0]
Input[0]=Input[len(Input)-1]
Input[len(Input)-1]=temp
print(Input)
```
Q83. Write a Python program to swap two elements in a list.
```
Input=[]
Input=[item for item in input("Enter the list items : ").split()]
Index=[int(item) for item in input("Enter which indexes to swap: ").split()]

temp=Input[Index[0]]
Input[Index[0]]=Input[Index[1]]
Input[Index[1]]=temp
print(Input)
```
Q84. Write a Python program to find N largest element from a list.
```
Input=[]
Input=[int(item) for item in input("Enter the list items : ").split()]
Find=int(input("Enter which largest element to find: "))
Input.sort(reverse=True)
print(Input[Find-1])

```
Q85. Write a Python program to find cumulative sum of a list.
```
Input=[1,2,3,4,5,6,7,8,9,10]
Output=[0]*len(Input)
Output[0]=Input[0]
for i in range(0,len(Input)-1):
    Output[i+1]=Input[i]+Input[i+1]
print(Output)
```
Q86. Write a Python program to check if a string is palindrome or not.
```
Input=input("Enter a string:")
if Input[::-1]==Input:
    print("Palindrome")
else:
    print("Not Palindrome")
```

Q87. Write a Python program to remove i'th element from a string.
```
Input="abcdefghijklmnopqrstuvwxyz"
i=int(input("Enter the ith elment of string to remove:"))
Output=Input[0:i-1:]+Input[i:len(Input):]
print(Output)

```

Q88. Write a Python program to check if a substring is present in a given string.
```
Input="abcdefghijk"
Substring="def"
if(Substring in Input):
    print("Found")
else:
    print("Not Found")

```

Q89. Write a Python program to find words which are greater than given length k.
```
Input=['Sachin','MSD','Kohli','Rohit','Dravid','Kapil']
k=int(input("Enter the minimum length of string:"))
for elements in Input:
    if len(elements)>k:
        print(elements)
```

Q90. Write a Python program to extract unquire dictionary values.
```
Input={'Sachin': 10, 'MSD': 7, 'Kohli': 18, 'Rohit': 45,'Dravid':18,'Kapil':10}
Output=set(Input.values())
print(Output)
```

Q91. Write a Python program to merge two dictionary.
```
Input1={'Sachin': 10, 'MSD': 7}
Input2={'Kohli': 18, 'Rohit': 45}
Input1.update(Input2)
print(Input1)

```

Q92. Write a Python program to convert a list of tuples into dictionary.
```
Input : [('Sachin', 10), ('MSD', 7), ('Kohli', 18), ('Rohit', 45)]
Output : {'Sachin': 10, 'MSD': 7, 'Kohli': 18, 'Rohit': 45}
```
```
Input = [('Sachin', 10), ('MSD', 7), ('Kohli', 18), ('Rohit', 45)]
Output=dict(Input)
print(Output)
```

Q93. Write a Python program to create a list of tuples from given list having number and its cube in each tuple.
```
Input: list = [9, 5, 6]
Output: [(9, 729), (5, 125), (6, 216)]
```
```
Input = [9, 5, 6]
Output=[]
for i in Input:
    Output.append((i,i**3))
print(Output)
    
```

Q94. Write a Python program to get all combinations of 2 tuples.
```
Input : test_tuple1 = (7, 2), test_tuple2 = (7, 8)
Output : [(7, 7), (7, 8), (2, 7), (2, 8), (7, 7), (7, 2), (8, 7), (8, 2)]
```
```
test_tuple1 = (7, 2) 
test_tuple2 = (7, 8)
Output=[]
for i in test_tuple1:
    for j in test_tuple2:
        Output.append((i,j))
        
for i in test_tuple2:
    for j in test_tuple1:
        Output.append((i,j))

print(Output)
```

Q95. Write a Python program to sort a list of tuples by second item.
```
Input : [('for', 24), ('Geeks', 8), ('Geeks', 30)] 
Output : [('Geeks', 8), ('for', 24), ('Geeks', 30)]
```
```
Input = [('for', 24), ('Geeks', 8), ('Geeks', 30)]
Output=[]
temp=[]
for i in Input:
    temp.append(i[1])
while len(temp)!=0:
    min_Element=min(temp)
    for i in Input:
        if i[1]==min_Element:
            Output.append(i)
    temp.pop(temp.index(min_Element))
print(Output)
```

Q96. Write a python program to print below pattern.
```
* 
* * 
* * * 
* * * * 
* * * * * 
```
```
n=int(input("Enter length of pattern:"))
for i in range(1,n+1):
    for j in range(1,i+1):
        print('*',end="")
    print("")
```
Q97. Write a python program to print below pattern.
```
    *
   **
  ***
 ****
*****
```
```
n=int(input("Enter length of pattern:"))
for i in range(n-1,-1,-1):
    for j in range(1,i+1):
        print(' ',end="")
    print('*'*(n-i))
    print("")
```
Q98. Write a python program to print below pattern.
```
    * 
   * * 
  * * * 
 * * * * 
* * * * * 
```
```
n=int(input("Enter length of pattern:"))
for i in range(n-1,-1,-1):
    for j in range(1,i+1):
        print(' ',end="")
    print('* '*(n-i))
    print("")
```

Q99. Write a python program to print below pattern.
```
1 
1 2 
1 2 3 
1 2 3 4 
1 2 3 4 5
```
```
n=int(input("Enter length of pattern:"))
for i in range(1,n+1):
    for j in range(1,i+1):
        print(j,end="")
    print("")
```

Q100. Write a python program to print below pattern.
```
A 
B B 
C C C 
D D D D 
E E E E E 
```
```
n=int(input("Enter length of pattern:"))
letter='A'
for i in range(1,n+1):
    letter=chr(i+64)
    print(letter*i)
```