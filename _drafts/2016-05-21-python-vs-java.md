---
layout: post
title: "Python vs Java"
date: 2016-05-21
---
<table class="comparison">

<tbody>

<tr>

<td>Python</td>

<td>Java</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Data Types</td>

</tr>

<tr>

<td>[Primitive: byte, short, int, long, float, double, boolean, char](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html) String Integer (¿what the diff between int and Integer?)</td>

<td>¿Primitive? String Integer</td>

</tr>

<tr>

<td>Boolean (True or False (Capitalised), 1 or 0 )</td>

<td>Boolean (true or false, lower case)</td>

</tr>

<tr>

<td>None (¿this is an object not a data type?)</td>

<td>null (¿this is not an object. is it a data type?)</td>

</tr>

<tr>

<td></td>

<td>Char (single character enclosed in single quotes)</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Variables</td>

</tr>

<tr>

<td>declared on assignment, can be any data type `someVariable = 1`</td>

<td>can be declared before assignment. Type is explicit ¿and can't be changed? `int someVariable = 1;` or `int someVariable; someVariable = 1;`</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Syntax</td>

</tr>

<tr>

<td># single line comments indicated by a hash</td>

<td>// single line comments indicated by a double forward slash</td>

</tr>

<tr>

<td>¿Multi-line comments in Python?</td>

<td>/* multiple line comments indicated like so */</td>

</tr>

<tr>

<td>no end of line characters (except for when defining methods or classes, when a : (colon) is used)</td>

<td>A ; (semicolon) is used to end all Java single code statements</td>

</tr>

<tr>

<td>code blocks are identified by indentation, the code interpreter identifies the end of a method, class, loop, etc, by the indentation returning back to where the method/class/loop was defined.  This is sometimes stated as one of the reasons Python is good for beginners (there is less syntax to forget, indentation forces better readability).</td>

<td>code blocks are encased with {} (curly braces) and not followed by a ; (semicolon)</td>

</tr>

<tr>

<td>code block example: `if (1 < 2): # some code here`</td>

<td>code block example: `if (1 < 2) { // some code here }`</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Controlling Flow</td>

</tr>

<tr>

<td>`if (someVariable > 5): # some code elif (someVarialbe < 5): # some code else: # some code`</td>

<td>`if (someVariable > 5) { &nbsp// some code that would run if someVariable was equal to 7 } else if (someVarialbe < 5) { &nbsp// some code that would run if someVariable was equal to 3 } else { &nbsp// some code that would run if someVariable was equal to 5 }`</td>

</tr>

<tr>

<td>The writers of Python intended that, ["There should be one-- and preferably only one --obvious way to do it."](https://www.python.org/dev/peps/pep-0020/), which is why I assume there is no ternary conditional statement equivalent in Python (as you would use an if/else statement).</td>

<td>ternary conditional statement exist that put an if/else statement into a single line: `boolean timeToProceed = (timeInSeconds > 10) ? true : false;` ¿are ternary conditional statements only used in variable assignment? would this code work? `(timeInSeconds > 10) ? variable1 = timeInSeconds : variable1 = 0;`</td>

</tr>

<tr>

<td>[No switch/case statements in python. Use if/elif/else instead.](http://stackoverflow.com/questions/1429505/python-does-python-have-an-equivalent-to-switch)</td>

<td>[Switch statements](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/switch.html) are like long if/else statements `int i = 1; switch (i) { case 1: // some code that would run. break; case 2: // some code that wouldn't run in this case break; default: // some code that would run if no cases above are matched }`</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Controling flow (for loops)</td>

</tr>

<tr>

<td>for variable in iterable object, eg, `for x in [3, 4, 5]: // some code`</td>

<td>[General form: for (variable initial condition; while this condition is true; how to change the variable after each iteration)](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/for.html), eg, `for (int i = 0; i<3; i++) { // some code }` [Enhanced form: for (variable : iterable object) {}](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/for.html), eg, `int[] someList = {1, 2, 3}; for (int i : someList) { // some code }`</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Controling flow (while loops)</td>

</tr>

<tr>

<td>while (condition): code block `while (x == true): # some code that potentially changes x`</td>

<td>[while (condition) {code block}](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/while.html) `while (x = True) { // some code that potentially changes x }` [do-while loop](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/while.html) which executes the code first, then checks the conditional statement, so it will execute the code block at least once. `do { // some code } while (x = True);`</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Controlling flow (continue and break)</td>

</tr>

<tr>

<td>`continue` ¿Only found within loops. Applies to the innermost loop in which is it found.? Skips the current iteration of the loop and continues with the next one. `break` ¿only found within loops.? stops the current iteration and ends the loop.</td>

<td>[The continue and break statements](https://docs.oracle.com/javase/tutorial/java/nutsandbolts/branch.html) have two forms: labeled and unlabeled. The unlabeled forms function just as Python's do. `continue;` `break;` Labeled continue and break statements apply (in the same way as unlabeled continue and break statements) to the for statement immediately proceeding the label that follows the continue or break statement, eg, `while (True) { while (True) { break; } // any code here would get run }` `someLabel: while (True) { while (True) { break someLabel; } // any code here would not get run }`</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Unary Operators</td>

</tr>

<tr>

<td>i++ i-- ¿only these?</td>

<td>i++ or ++i i-- or --i</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">Assignment Operators</td>

</tr>

<tr>

<td>http://www.tutorialspoint.com/python/python_basic_operators.htm **= //=</td>

<td>http://www.tutorialspoint.com/java/java_basic_operators.htm <<= >>= &= ^= |=</td>

</tr>

<tr>

<td class="subheading" colspan="2" align="center">WHAT</td>

</tr>

<tr>

<td></td>

<td>/td></td>

</tr>

<tr>

<td>PYTHON</td>

<td>JAVA</td>

</tr>

<tr>

<td>PYTHON</td>

<td>JAVA</td>

</tr>

<tr>

<td>PYTHON</td>

<td>JAVA</td>

</tr>

<tr>

<td>PYTHON</td>

<td>JAVA</td>

</tr>

<tr>

<td>PYTHON</td>

<td>JAVA</td>

</tr>

</tbody>

</table>

  Comparison (syntax continued)

*   Python
    *   == (equal to), != (not equal to), is (is the same object), is not (is not the same object), etc
*   Java
    *   ¿= (equal to), != (not equal to), == (is the same object), ?

Boolean Operators

*   Python
    *   and, or, not (what is the precedence in pythin? is there any?
*   Java
    *   !, &&, || (in order of precedence)
*   read more about not: http://www.thomas-cokelaer.info/tutorials/python/boolean.html
*   understand this for the finer differences: https://stackoverflow.com/questions/18195322/pythons-logical-operator-and

Other:

*   [This is **favorite interview question**. Interviewer tries to find out here, how much you understand about behavior of objects with respect to constructors, methods, class variables(static variables), instance variables.](https://stackoverflow.com/questions/15655012/how-final-keyword-works)
*   Are classes called constructors in Java?
*   java = compiled, python = ¿interpreted/compiled line by line? [https://stackoverflow.com/questions/6889747/is-python-interpreted-or-compiled-or-both#6889798](https://stackoverflow.com/questions/6889747/is-python-interpreted-or-compiled-or-both#6889798)
*   What are pointers in Java and in Python?
*   java static
*   java keywords (what is python equivalent?) @ thingys?
*   java final keyword
    *   https://stackoverflow.com/questions/15655012/how-final-keyword-works
    *   A final **class** cannot be subclassed.
    *   A final **method** cannot be overridden by subclasses
    *   A final **variable** can only be initialized once
    *   http://javamex.com/tutorials/synchronization_final.shtml
    *   When the **constructor exits**, the values of **final** fields are **guaranteed to be visible** to other threads accessing the constructed object.
    *   if a field is <tt>final</tt>, it is part of the JVM specification that it must effectively ensure that, once the object pointer is available to other threads, so are the correct values of that object's final fields.
    *   J: why is this not an issue in Python?
    *   Stu says that one of the best things about Java is the fact that all the code is checked when it compiles. With Python this doesn't happen and you must write many more tests to get the same effect.

        Python learnt through Learn Python The Hard Way and Koans. Java learnt through Codeacademy and Koans. TODO: read these and check them against my own: - https://blog.udemy.com/python-vs-java/ - http://javarevisited.blogspot.com.au/2013/11/java-vs-python-which-programming-laungage-to-learn-first.html
