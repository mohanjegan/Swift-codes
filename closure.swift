/*Swift Closures
Swift Closures are other types of Swift functions which can be defined without using keyword func and a function name.

Like Swift functions, swift closures also can accept parameters and return values. It also contains a set of statements which executes after you call it and can be assigned to a variable/constant as functions.

Reason behind using Swift Closures
There are mainly two reasons why swift closures are used:

Completion blocks
Closures are used to provide notification when some task has finished its execution.

Higher order functions
Closures can be passed as input parameters for higher order functions. A higher order function is just a type of function that accepts function as an input and returns value of type function as output. In this case, closures are used because closure omits the func keyword and function name that makes the code more readable and short.

Syntax:
{ (parameters) -> return type in  
   statements  
}  
Here, in is a keyword which is used to separate the return Type and statements inside the closure. A closure can accept parameter and return value.

Let's create our own closure:*/


print("\nSimple Closure")

let simpleClosure = {     
}  
simpleClosure()   
/*Here, we have declared a simple closure { } that takes no parameters, contains no statements and does not return a value. This closure is assigned to the constant simpleClosure.*/

print("\nClosure that contains statements")
let simpleClosure1 = {  
    print("Hello JavaTpoint")  
}  
simpleClosure1()  

/*In the above program, we have defined a closure named simpleClosure inferred to be of () -> () because it doesn't accept any parameter and does not return any value.*/

print("\nClosure that contains parameter")

let simpleClosure2:(String) -> () = { name2 in  
    print(name2)  
}  
simpleClosure2("Hello JavaTpoint")  

/*In the above program, the type closure (String) -> () takes an input of type string but doesn't return value. To use the value passed inside the statements of the closure, we have placed a parameter name name followed by in keyword.

Here, the closure accepts a String, we need to pass the string while we call the closure as simpleClosure("Hello JavaTpoint").*/

print("\nClosure that returns values")
/*Closures can return values like functions. To return a value from closure, we must explicitly add the type to return inside braces () followed by ->.*/
let simpleClosure3:(String) -> (String) = { name3 in      
    let greeting3 = "Hello JavaTpoint " + "A platform for all technologies"  
    return greeting3  
}  
let result3 = simpleClosure3("Hello JavaTpoint")  
print(result3)  

/*You can see that in the above program we have defined type as simpleClosure: (String) -> (String) because Swift cannot automatically infer the closure that returns a value. The type (String) -> (String) specifies that the closure takes an input of type String and also returns a value of type String.*/