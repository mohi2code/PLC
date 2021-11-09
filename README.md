## OVERVIEW ✨
This documentation contains general semantic rules and briefly summarizes details regarding the lexical analyzer.

## GOAL 🎯
The semantic for the language was designed to be readable and easy to learn 

## How to run <br>
`flex mohi.l` <br>
`bison mohi.y -d` <br>
`gcc mohi.tab.c -lfl -o mohi` <br>
`./mohi` <br>
Note: input3.mpl should generate an error


## Variables
**Types** 
* **number**: represents integers and float numbers.
* **text**: represents all alphabet characters singular, or plural

**Variables declaration** <br>
all variables identifiers should start with an underscore and every statement should end with a newline, no semicolons needed.

**Variables assignment** <br>
assignment can be done upon declaration or in a new statement

*example*: <br>
`number _apples` <br>
`_apples = 5000` <br>
or <br>
`number _trees = _apples / 50`<br>
<br>

## Arithmatic operations
* `+` addition operator 
* `-` substraction operator
*  `*` multiplication operator
* `/` division operator

*example*:<br>
`number _x = 5 * 4` <br>
<br>

## Boolean expressions & Comparison operators
`equals` checks for equality between two variabls <br>
`not equals` checks for inequality between two variables <br>
`bigger than` returns true if left hand variable is bigger than the right hand variable <br>
`less than` returns true if the left hand variable is less than the right hand variable <br>

*example* <br>
`number _students = 5` <br>
`number _teachers = 4` <br>
`_students equals _teachers` should evaluate to false <br>
<br>

## IF/ELSE Statement
*semantic and structure* <br>
`if expression` <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`statements` <br>
`if not` <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`statements` <br>

*example* <br>
`if _x equals 5` <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`_x = _x + 1` <br>
`if not` <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`_x = 5` <br>
<br>

## While Loop
*semantic and structure* <br>
`while expression` <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`statements` <br>

*example* <br>
`while _age bigger than 18` <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`_adults = _adults + 1` <br>
<br>

## Presedence Rules
`/ * - +` left to right <br>
`equals, not equals, bigger than, less than` left to right <br>