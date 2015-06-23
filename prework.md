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

func reverse(string) -> string
    if string length == 0 then return string
    return string last char + reverse(string without last char)

What does it mean to compile your code? Describe how a compiler works.

Compiling code is translating code into something a computer can read and understand. A compiler is a program that will read source code input and using a set of pre-programmed instructions, translate that code into 0's and 1's that a particular machine can run.

What is the new line character? How does it work?

The newline char is '\n'. It is a char that tells the compiler (or interpreter) to add a new line at the location where it is used. The compiler is pre-programmed to know what the '\n' character is.

What is the terminal or command line? How can we use it as developers?

Terminal is an terminal emulator whose UI is text-only and interface is the command line. It allows humans to type and execute commands for the OS to run. Developers can use ones packaged with their OS such as Terminal or download 3rd party ones like iTerm.

## The C Programming Language

What are header files and what are they used for? Write an example of how you would use a header file below.

Header files contain declarations for functionality that is implemented in .c files. They are used for reusing other bits of already-written code. 

Ex:
#include <stdio.h>

List the different types used in C along with their size. What’s the difference between int, float and double?

What are variables? How might we use them in our program? How do we declare variables in C?

How do we create strings in C?

What is a char*?

Write a simple if/else statement in C.

Explain what functions are and they help us write better code?

Describe how strings are represented in C.

What is the null terminator character?

What is an array? How are they represented in C? How are strings and arrays related in C?

What does void represent?

What is argv? How does it work?

What is a struct and why are they useful? Write a struct that represents an employee where an employ has a name, department, title and number of years on the job.

What is a memory address?

What are pointers? How do we use them when programming in C?

What is memory?

How do we ask the operating system for memory using C?

What is a segmentation fault?

Describe what a memory leak is. How can we avoid them?

What does it mean to pass-by-reference?

What is the difference between the stack and the heap? How does C use these data structures to perform memory management? You should explain, step-by- step, the process and key functions used in C to accomplish this.

##Objective-C

What are classes, what are objects? How are the two related?

What are methods?

What are the difference between class methods and instance methods?

What does it mean to send a message in Objective-C? Give an example of how this works.

What are alloc and init? What are they used for? What C functions do they remind you of?

How does memory management work in Objective-C? How does it differ and/or resemble memory management in C?

What is NSString? How is it different from a regular C string?

Name some ways that we can create arrays in Objective-C? How is this different from how we create arrays in C?

Explain what properties are.

What are instance variables?

Explain what self is.

How does inheritance work in Objective-C? How do we override methods?

Explain the “super” keyword.

Explain the inheritance hierarchy.

What are strong references?

What are weak references?

What are some ways that we can prevent memory leaks?

What are immutable objects in Objective-C? Name some immutable objects.

What is the difference between an NSSet and an NSMutableSet?

What is the difference between NSDictionary and NSMutable Dictionary?

What are #import and #include used for?

What are global variables?

Explain what a callback is. How might callbacks be useful?

Explain what a block is, what would we use one for?

What are protocols? What do we use them for?

## Problem Solving

1) Write a function that cubes the sum of three numbers and returns the result. Please complete this problem using C.

2) If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000. Please complete this problem using C.

3) Write a short program that reverses a string using Objective-C.

4) In Objective-C write a simple class that represents a student. A student should have a first name, a last name, a major and a year (freshman, senior, etc.). Your student class should have two methods. One that allows the student to state his or her name and another that will allow the student to greet a person given a name.
