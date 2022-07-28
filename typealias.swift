/*Swift TypeAlias
Swift Typealias is used to provide a new name for an existing data type in the program. Once you create a typealias, you can use the aliased name instead of the exsisting name throughout the program.

Typealias doesn't create a new data type, it simply provides a new name to the existing data type.

Purpose of using Typealias
The main purpose of using typealias is make our code clearer and human readable.

Create a typealias
Typealias is declared using the keyword typealias:

typealias name = existing type   
Swift facilitates you to use typealias for most of the types:

Built-in types (for.eg: String, Int)
User-defined types (for.e.g: class, struct, enum)
Complex types (for e.g: closures)*/

print("Typealias for Built-in Types")
/*Typealias can be used for all built-in data types i.e. String, Int, Float etc.

For example:*/
typealias EmployeeName = String  
/*Here, we have declared EmployeeName as typealias of String. So, we can use it later instead of String type.

For example:
Without using Typealias, the declaration would be:*/

//let name:String = "Alex"   
/*By creating Typealias EmployeeName, we can write the same above declaration as:*/

let name:EmployeeName = "Alex"  
/*You can see that both examples create the same constant type string but the later one is more understandable for human.*/

print("\nTypealias for user defined types")
/*In Swift, you can create your own data type. Suppose you have to create a data type Employee, so you can create it using a class as:*/

class Employee {  
  
}  
//Now, you can create a group of employees in an array as:

//var employees:Array<Employee> = []  
/*Here, you can create your own type for array using Typealias to make the code more readable:*/

typealias Employees = Array<Employee>  
//Now, the declaration would look like:

var employees:Employees = []  
//It is easy to understand in your code.