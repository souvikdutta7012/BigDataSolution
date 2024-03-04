## Python OOP Assignment
Q1. What is the purpose of Python's OOP?
```
Ans: In Python, object-oriented Programming (OOPs) is a programming paradigm that uses objects and classes in programming. It aims to implement real-world entities like inheritance, polymorphisms, encapsulation, etc. in the programming.

```

Q2. Where does an inheritance search look for an attribute?
```
Ans: An inheritance search looks for an attribute first in the instance object, then in the class the instance was created from, then in all higher superclasses, progressing from left to right (by default). The search stops at the first place the attribute is found.
```

Q3. How do you distinguish between a class object and an instance object?
```
Ans: Class variables are declared inside a class but outside of any function. Instance variables are declared inside the constructor which is the __init__method.
```
Q4. What makes the first argument in a class’s method function special?
```
Ans:The calling process is automatic while the receiving process is not (its explicit). This is the reason the first parameter of a function in class must be the object itself. Writing this parameter as self is merely a convention. It is not a keyword and has no special meaning in Python.
```
Q5. What is the purpose of the init method?
```
Ans:The __init__ method lets the class initialize the object's attributes and serves no other purpose. It is only used within classes.
```
Q6. What is the process for creating a class instance?
```
Ans: To create instances of a class, we call the class using class name and pass in whatever arguments its __init__ method accepts.
```
Q7. What is the process for creating a class?
```
Ans: In Python, a class can be created by using the keyword class, followed by the class name.
e.g class ClassName:    
    #statement
```
Q8. How would you define the superclasses of a class?
```
Ans: A superclass is the class from which many subclasses can be created. The subclasses inherit the characteristics of a superclass. The superclass is also known as the parent class or base class.
```
Q9. What is the relationship between classes and modules?
```
Ans: Modules are collections of methods and constants. They cannot generate instances. A module in python is simply a way to organize the code, and it contains either python classes or just functions. 
Classes may generate instances (objects).
```
Q10. How do you make instances and classes?
```
Ans: In python a class is created by the keyword class.
To create instances of a class, we call the class using class name and pass in whatever arguments its __init__ method accepts.
```
Q11. Where and how should be class attributes created?
```
Ans: A class attribute is shared by all instances of the class. To define a class attribute, you place it outside of the __init__() method.
```
Q12. Where and how are instance attributes created?
```
Ans: We add instance attributes usually by defining the constructor method “__init__”. Within __init__ we pass the first parameters self which represents an object from a class that is currently being defined, and usually, we attach instance attributes to these objects using the dot operator.
```
Q13. What does the term "self" in a Python class mean?
```
Ans: The self parameter is a reference to the current instance of the class, and is used to access variables that belongs to the class.
```
Q14. How does a Python class handle operator overloading?
```
Ans: The operator overloading in Python means provide extended meaning beyond their predefined operational meaning. We use the "+" operator for adding two integers as well as joining two strings or merging two lists. We can achieve this as the "+" operator is overloaded by the "int" class and "str" class.
```
Q15. When do you consider allowing operator overloading of your classes?
```
Ans: The operator overloading in Python means provide extended meaning beyond their predefined operational meaning.
```
Q16. What is the most popular form of operator overloading?
```
Ans: A very popular and convenient example is the Addition (+) operator. Just think how the '+' operator operates on two numbers and the same operator operates on two strings. It performs “Addition” on numbers whereas it performs “Concatenation” on strings.
```
Q17. What are the two most important concepts to grasp in order to comprehend Python OOP code?
```
Ans: Both inheritance and polymorphism are fundamental concepts of object oriented programming. These concepts help us to create code that can be extended and easily maintainable.
```
Q18. Describe three applications for exception processing.
```
Ans:
```
Q19. What happens if you don't do something extra to treat an exception?
```
Ans: When an exception occurred, if you don't handle it, the program terminates abruptly and the code past the line that caused the exception will not get executed.
```
Q20. What are your options for recovering from an exception in your script?
```
Ans: You can also provide a generic except clause, which handles any exception. After the except clause(s), you can include an else-clause. The code in the else-block executes if the code in the try: block does not raise an exception. The else-block is a good place for code that does not need the try: block's protection.
```
Q21. Describe two methods for triggering exceptions in your script.
```
Ans: There are two methods to handle Python exceptions: Try – This method catches the exceptions raised by the program. Raise – Triggers an exception manually using custom exceptions.
```
Q22. Identify two methods for specifying actions to be executed at termination time, regardless of  
whether or not an exception exists.
```
Ans: Finally block always executes irrespective of an exception being thrown or not. The final keyword allows you to create a block of code that follows a try-catch block. Finally, clause is optional.
```
Q23. What is the purpose of the try statement?
```
Ans: The try block is used to check some code for errors i.e the code inside the try block will execute when there is no error in the program.
```
Q24. What are the two most popular try statement variations?
```
Ans: There are two other optional segments to a try block: else and finally . Both of these optional blocks will come after the try and the except .
```
Q25. What is the purpose of the raise statement?
```
Ans: Python raise Keyword is used to raise exceptions or errors. The raise keyword raises an error and stops the control flow of the program.
```
Q26. What does the assert statement do, and what other statement is it like?
```
Ans: The assert keyword is used when debugging code. The assert keyword lets you test if a condition in your code returns True, if not, the program will raise an AssertionError.
```
Q27. What is the purpose of the with/as argument, and what other statement is it like?
```
Ans: In Python, with statement is used in exception handling to make the code cleaner and much more readable. It simplifies the management of common resources like file streams.
```
Q28. What are *args, **kwargs?
```
Ans: Both Python *args and **kwargs let you pass a variable number of arguments into a function. *args arguments have no keywords whereas **kwargs arguments each are associated with a keyword.
```
Q29. How can I pass optional or keyword parameters from one function to another?
```
Ans: The user can call the function by either passing those optional parameters or just passing the required parameters.
# Here b is predefined and hence is optional.
def func(a, b=1098):
    return a+b 
print(func(2, 2)) 
# this 1 is represented as 'a' in the function and
# function uses the default value of b
print(func(1))
```
Q30. What are Lambda Functions?
```
Ans: Python Lambda Functions are anonymous function means that the function is without a name. As we already know that the def keyword is used to define a normal function in Python. Similarly, the lambda keyword is used to define an anonymous function in Python.
```
Q31. Explain Inheritance in Python with an example?
```
Ans: Inheritance is a mechanism in which one class acquires the property of another class. For example, a child inherits the traits of his/her parents. With inheritance, we can reuse the fields and methods of the existing class. Hence, inheritance facilitates Reusability and is an important concept of OOPs.
```
Q32. Suppose class C inherits from classes A and B as class C(A,B).Classes A and B both have their own versions of method func(). If we call func() from an object of 
class C, which version gets invoked?
```
Ans: It will return results from class A since it is considered first in statement class C(A,B).
class xyz:
    def test(self):
        print("This is a test meth from xyz")

class xyz1:
    def test(self):
        print("This is a test1 meth from xyz1")

class child(xyz,xyz1):  
    pass
ch = child()
ch.test() # by default child class will show results from 1st class only

```
Q33. Which methods/functions do we use to determine the type of instance and inheritance?
```
Ans: isinstance() and issubclass() The isinstance() method checks whether an object is an instance of a class whereas issubclass() method asks whether one class is a subclass of another class (or other classes).
```
Q34.Explain the use of the 'nonlocal' keyword in Python.
 The nonlocal keyword is used to work with variables inside nested functions, where the variable should not belong to the inner function. Use the keyword nonlocal to declare that the variable is not local.
```
Ans:
```

Q35. What is the global keyword?
- In Python, the global keyword allows us to modify the variable outside of the current scope. It is used to create a global variable and make changes to the variable in a local context.
```
Ans:
```