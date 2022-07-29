/*Swift Properties
We can define properties to associate values with a class, structure, and enumerations. In swift, we can define two types of properties as Stored property and computed property. However, the stored property store variables and constant values as the class attributes. On the other hand, the computed properties calculate values based on a particular value. We can define computed properties in Classes, Structures, and Enumerations; however, the stored properties can only be defined in classes and structures.

The instance of a particular type, including Structure, Class, and Enum, is associated with all the properties defined in the type. However, instead of instances, the properties can also be associated with types only. Such properties are called Type properties.

In this section of the tutorial, we will discuss the various type of swift properties like Stored and Computed properties.*/

/*Stored Properties
In simple words, the Stored Property is the constant or variable defined as the part of an instance of a particular Class or Structure. The stored properties are either constant (defined using let keyword) or variable (defined using var keyword). We can give the default values to stored properties at the time of declaring it. However, we can modify the stored property's default value later when initializing the Class or Structure.

Let's consider the following example, which defines a class as a Person. It contains variable stored properties as name and age. Every person has a default name and age, which can be changed later while initializing it.*/

class Person{  
    var name:String = "Anonymous"  
    var age:Int = 20  
    init() {  
          
    }  
    init(name:String, age:Int) {  
        self.name = name  
        self.age = age  
    }  
}  
/*Now, if we create an instance of the Person class and mark it as constant, it doesn't affect our variable stored properties as we can still change their values, as shown below.*/

var person = Person()  
person.name = "John"  
person.age = 23  
debugPrint(person.name + " " + person.age.description)  

/*However, the same is not true for Structure types as structure are value types. If we mark a structure as constant, we can't change all of its stored properties despite the property being a variable. Consider the following example.*/

/*struct Person{  
    var name:String = "Anonymous"  
    var age:Int = 20  
}  
  
  
let person = Person()  
person.name = "John" // will give compiler error as "Cannot assign to property: 'person' is a 'let' constant"  
person.age = 23  
debugPrint(person.name + " " + person.age.description)*/  

/*Lazy Stored Property
A lazy stored property doesn't occupy memory in the system until the first time it is used. In other words, the value of the lazy stored property is not calculated until the first time it is accessed. We can use the "lazy" keyword in swift to define a property as lazy. However, we can't define lazy stored property as constant since its value might not be retrieved at the time of declaration.

Lazy properties are useful in the scenario where the value of our property depends on the outside factors and needs to be calculated once those values are known. We can also use lazy properties if the property requires complex setup while initialization and is not needed until the value is accessed the first time.

Consider the following example, which defines the relationship between classes Employee and Department. Here, the class Department contains a lazy stored property of type Employee indicating that the Employee property will be created whenever the Department will be associated with the Employee.*/
print("\nLazy Stored operator")
import Foundation  
  
class Employee{  
    var name:String  
    var id:Int  
    var salary:Double  
    var department:Department?  
    init(name:String,id:Int,salary:Double) {  
        self.name = name  
        self.id = id  
        self.salary = salary  
    }  
}  
  
  
class Department{  
    var name:String = "IT"  
    lazy var employees = Array<Employee>()  
}  
  
  
var dep = Department()  
dep.name = "CS"  
  
  
var emp = Employee(name: "John", id: 102, salary: 25000.0)  
emp.department = dep  
  
  
dep.employees.append(emp) 
//the employee property will be created now