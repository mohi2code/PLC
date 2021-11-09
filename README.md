##OVERVIEW ✨
This text file contains general semantic rules and briefly summarizes details regarding the lexical analyzer.

##GOAL 🎯
This semantic for the language was designed to be readable and easy to learn 

##How to run
`flex mohi.l`
`bison mohi.y -d`
`gcc mohi.tab.c -lfl -o mohi`
`./mohi`
Note: input3.mpl should generate an error


##Variable
**Types** 
* number: represents integers and float numbers.
* text  : represents all alphabet characters singular, or plural

**Variable declaration**
all variable identifiers should start with an underscore and every statement should end with a newline, no semicolons needed.

**Variables assignment**
assignment can be done upon declaration or in a new statement

*example*:
`number _apples`
`text   _name` 
`number _trees = _apples / 50`
<br>

##Arithmatic operations
`+` addition operator
`-` substraction operator
`*` multiplication operator
`/` division operator

*example*:
`number _x = 5 * 4`
<br>

##Boolean expressions & Comparison operators
`equals` checks for equality between two variabls
`not equals` to check for inequality between two variables
`bigger than` returns true if left hand variable is bigger than the right hand variable
`less than` returns true if the left hand variable is less than the right hand variable

*example*
`number _students = 5`
`number _teachers = 4`
`_x equals _y` should evaluate to false
<br>

## IF/ELSE Statement
*semantic and structure*
`if expression`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`statements`
`if not`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`statements`

*example*
`if _x equals 5`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`_x = _x + 1`
`if not`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`_x = 5`
<br>

## While Loop
*semantic and structure*
`while expression`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`statements`

*example*
`while _age bigger than 18`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`_adults = _adults + 1`
<br>

## Presedence and Associavity rules
`/ * - +` left to right
`equals, not equals, bigger than, less than` left to right