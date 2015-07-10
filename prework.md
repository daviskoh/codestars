# Codestars Prework

## Basic Information

Full Name: Davis Koh

Email address: koh.davis@yahoo.com

## Programming Basics

To the best of your ability, describe the difference between programming and computer science.

Computer Science is the study of computation of which programming is only one of the many disciplines that fall under its umbrella.

What is binary?

Two numbers (0 and 1) that are used to represent information for a computer to process. 

What are bits?

Short for binary digits can only be 2 values: 0 or 1. 

What are bytes?

A unit of measurement of computer info. A byte holds 8 bits. 

What is ASCII?

Standard that maps numbers (patterns of bits) to uppercase letters. 

What are algorithms? Using pseudo code, write an algorithm that will reverse a string.

Sets of instructions used to solve problems.

```
func reverse(string) -> string
    if string length == 0 then return string
    return string last char + reverse(string without last char)
```

What does it mean to compile your code? Describe how a compiler works.

Compiling code is translating code into something a computer can read and understand. A compiler is a program that will read source code input and using a set of pre-programmed instructions, translate that code into 0's and 1's that a particular machine can run.

What is the new line character? How does it work?

The newline char is '\n'. It is a char that tells the compiler (or interpreter) to add a new line at the location where it is used. The compiler is pre-programmed to know what the '\n' character is.

What is the terminal or command line? How can we use it as developers?

Terminal is an terminal emulator whose UI is text-only and interface is the command line. It allows humans to type and execute commands for the OS to run. Developers can use ones packaged with their OS such as Terminal or download 3rd party ones like iTerm.

## The C Programming Language

What are header files and what are they used for? Write an example of how you would use a header file below.

Header files contain declarations for functionality (via functions) that is implemented in .c files. They are used for reusing other bits of already-written code. 

Ex:

```
#include <stdio.h>
```

List the different types used in C along with their size. What’s the difference between int, float and double?

Basic Types:  
char - 1 byte / 8 bits  
int - 4 bytes  
float - 4 bytes  
double - 8 bytes  
long long - 8 bytes  

An int is a data type that represents whole numbers (i.e. -1, 5, 1234123, etc), while floats and doubles are data types that represent decimal numbers. Floats and doubles differ in precision and thus size. Doubles are more precise and thus take up more space. When to use either can depend on the problem. For example, if accuracy is not a huge issue, then floats can be used over doubles.  

What are variables? How might we use them in our program? How do we declare variables in C?

Variables are named storages that can hold values. Variables can be used when certain values are accessible at one point in the code, but perhaps also needed in another. The variable referenced in order to access the stored value. 

Ex:

```
int age = 24;
```

How do we create strings in C?

There are 2 ways:

```
char *string1 = "hello";
char string2[] = "world";
```

What is a char*?

This is a C string, a pointer. It holds the memory address of a char type. It is used to hold a reference to the 1st character in a string. 

Write a simple if/else statement in C.

```
true ? "It is true" : "It is false";
```

Explain what functions are and they help us write better code?

Functions are groups are executable statements that can be used and reused by calling the function. It can help write better code allowing functionality to be reused and more testable given that it exists in a single isolated place.

Describe how strings are represented in C.

String literals are syntactically represented in C using double quotes (""). They are stored in memory as arrays of chars terminated by the null-terminator (\0). A variable that "stores" a string actually holds the memory address of the 1st char and knows where the string ends by the null terminator.

What is the null terminator character?

It is \0. It is a character used in a null-terminated string to mark the end of the string. Given that strings are stored as arrays of chars, The null terminator is used to distinguish between 1 string and another that is right "next" to it. 

What is an array? How are they represented in C? How are strings and arrays related in C?

An array is a data structure that is used to stored a fixed (length is specified upon declaration) collection of values. In C, they are represented using brackets. Ex declaration:

```
int numbers[9];
```

Strings are related to arrays because they are null-terminated arrays of chars. 

What does void represent?

Void means non type aka represents a lack of return value. Thus when you see:

```
void returnNothing(...
```

This means that the func returnNothing does not return any value.

What is argv? How does it work?

argv stands for argument vector or one-dimensional array. argv is an array of strings each of which is an argument passed to the program. The 1st element of argv is the name of the program run. Subsequent elements are arguments passed into the command. When running a program, simply pass arguments separated by whitespace. For example:

```
$ ./main arg1 arg2 arg3
```

What is a struct and why are they useful? Write a struct that represents an employee where an employ has a name, department, title and number of years on the job.

A struct is a data type that holds fields of data (called members). 

```
struct Employee {
    char name[];
    char department[];
    char title[];
    int yearsAtJob;
};
```

What is a memory address?

It is the location in memory where a value is stored. 

What are pointers? How do we use them when programming in C?

Pointers are variables that store the memory address of a type. They are declared like so:

```
// declares a pointer to an int
int *myPointer
```

What is memory?

Memory is space in a computer used to store info that can be retrieved quickly. Data from a program is stored in computer memory. 

How do we ask the operating system for memory using C?

To request memory on the heap, we use the `malloc()` func. Ex:

What is a segmentation fault?

Segmentation fault is an error that occurs when attempting to access memory in a way that is not permitted by the OS. A common cause is dereferencing (access the value specified by the memory address) a null pointer aka trying to access something that does not exist thus throwing the error. Exceptions thrown from segemenation faults are a necessary security feature given that C grants quite a bit of control to system memory. 

Describe what a memory leak is. How can we avoid them?

A memory leak is when computer memory is consumed without being freed. Ultimately, this can cause undesired effects like execution slowness or even an app crash. Other than using memory management tools, this can be avoided by making sure to free up memory when needed and debugged using memory profilers like that of Xcode or Chrome Dev Tools. 

What does it mean to pass-by-reference?

This means passing around the memory address. This is in constrast to passing by copy which is passing around the value itself. 

What is the difference between the stack and the heap? How does C use these data structures to perform memory management? You should explain, step-by- step, the process and key functions used in C to accomplish this.

The stack is a LIFO (last in / first out) data structure used for function memory. It is automatically allocated when the function is called and deallocated when terminated. Memory on the stack is scoped to whichever function owns it, but memory on the heap can be accessed across different functions. Memory on the stack is automatically managed. Memory on the heap needs to be managed manually like so:

1) Request buffer of memory using `malloc()` passing in memory size as the argument which would likely require using `sizeof()`
2) Use buffer received from the `malloc()` return value. Note that `malloc()` returns the memory address to the 1st element in the buffer.
3) Free memory using `free()` passing in the buffer as the argument. 

##Objective-C

What are classes, what are objects? How are the two related?

An object is a structure that can hold data and act upon it. A class describes a type of object aka the methods & instance variables. Before creating an instance of an object, we must specify what type of object (class).  

What are methods?

Methods are functions defined of objects that are triggered via messages. 

What are the difference between class methods and instance methods?

Class methods are ones that are defined and called on the class itself, while instance methods are called on an instance of a class. A class method may be useful when a class does not need to be instantiated. For example, convenient methods such as `NSString:stringWithFormat` are useful without the need to instantiate a new NSString. 

What does it mean to send a message in Objective-C? Give an example of how this works.

This is requesting a function of an object be called. Ex:

```
[NSString alloc];
```

What are alloc and init? What are they used for? What C functions do they remind you of?

`alloc` requests memory to be allocated and `init` initializes / sets up an object. This can include setting any instance variables or other setup work. The 2 are used to instantiate objects. They look similar to `malloc` in C. 

How does memory management work in Objective-C? How does it differ and/or resemble memory management in C?

TODO: memory mgmt in objc

What is NSString? How is it different from a regular C string?

It is a class whose instances hold string data types. It defers from a C string because it is a class which means there are methods & properties available. A C string is just a low level array of chars. 

Name some ways that we can create arrays in Objective-C? How is this different from how we create arrays in C?

```
NSString *name = @"Davis";
NSNumber *age = @21;

// using class method
NSArray *arrayOne = [NSArray arrayWithObjects:name, age, nil];
// literal
NSArray *arrayTwo = @[name, age];

NSMutableArray *mutableArray = [NSMutableArray array];
```

This is different from C where there is no OOP and thus convenience methods. Also as can be seen from above, NSArrays can hold different types. 

Explain what properties are.

At a high level, properties are fields that hold an object state / data. In Objective-C, you use the `@property` directive which creates getters and setters as an interface for interacting w/ the underlying instance variable.

What are instance variables?

Instance variables are variables that store data for an instance of a class. When you use setters to associate data w/ a particular object, the underlying storage is the instance variable. 

Explain what self is.

Self is a pointer to the object running a particular method. 

How does inheritance work in Objective-C? How do we override methods?

Via inheritance, classes inherit instance variables and methods from their parent classes. For example, when a subclass instance calls a method it inherited from its parent class, it uses the `isa` pointer to see up the inheritance chain whether it is available before calling it ulitmately failing if it does not find it.
Overriding methods is done by by rewriting the method implementation in the .m implementation file. Declaring is not necessary as the parent class has already done so.

Explain the “super” keyword.

It is a directive that specifies the super class when calling a specific method. Think `super` except it starts looking up method implementation starting with the super class.

Explain the inheritance hierarchy.

Classes have superclasses (with NSObject as the root class) and can have subclasses. This chain of inheritance allows children to inherit variables & methods from their parents. The hierarchy can be viewed as if it were a tree where classes can have multiple subclasses, but only a single superclass.

What are strong references?

This means that an object "owns" the object it is referencing w/ the property. The object assigned to this property will not be destroyed as long as there is a strong reference to it. When the property gets set to nil, the object will be destroyed. 

What are weak references?

This means that a pointer does not "own" the object. Unlike strongly referenced objects, it will get destroyed and set to nil automatically when no objects hold a strong reference to it. 

What are some ways that we can prevent memory leaks?

One way is to make sure retain cycles do not occur. This can be done making sure that only the parent object holds a strong reference cycle to the child object, while the child holds a weak one to the parent. Another is to make sure to use `__weak` for references to `self` accessed lexically from a block used within a instance method using `self` as blocks use strong references by default. The Instruments in Xcode help debug memory leaks. 

What are immutable objects in Objective-C? Name some immutable objects.

Immutable objects in Objective-C are objects that only be read and not modified. Some examples are NSArray, NSString, NSSet, and NSURLRequest.

What is the difference between an NSSet and an NSMutableSet?

NSSets are immutable (static / cannot add or remove objects dynamically) while NSMutableSets are. 

What is the difference between NSDictionary and NSMutable Dictionary?

NSDictionaries are static while NSMutableDictionaries allow adding of new key-value pairs. 

What are #import and #include used for?

These are preprocessor directives that add a specified file to the preprocessor output. `#import` makes sure that the file is only included once.

What are global variables?

Global variables are variables that can be accessed in any file without explicity inclusion. In Objective-C, it is one of 2 ways to define constants. 

Explain what a callback is. How might callbacks be useful?

Explain what a block is, what would we use one for?

What are protocols? What do we use them for?

## Problem Solving

1) Write a function that cubes the sum of three numbers and returns the result. Please complete this problem using C.

```
int cubedSum(int n1, int n2, int n3) {
    int sum = n1 + n2 + n3;
    return sum * sum * sum; 
}
```

2) If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000. Please complete this problem using C.

3) Write a short program that reverses a string using Objective-C.

4) In Objective-C write a simple class that represents a student. A student should have a first name, a last name, a major and a year (freshman, senior, etc.). Your student class should have two methods. One that allows the student to state his or her name and another that will allow the student to greet a person given a name.
