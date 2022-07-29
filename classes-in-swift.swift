/*Swift Classes
Classes in Swift are similar to Structures in Swift. These are building blocks of flexible constructs. You can define class properties and methods like constants, variables and functions are defined. In Swift 4, you don't need to create interfaces or implementation files while declaring classes. Swift 4 facilitates you to create classes as a single file and the external interfaces will be created by default when the class is initialized.

Benefits of Swift Classes
By using classes, you can apply inheritance to acquire properties of one class to another class.
Type casting enables the user to check class type at run time.
Deinitializers take care of releasing memory resources.
Reference counting allows the class instance to have more than one reference.
Characteristics of Classes and Structures in Swift
In classes, properties are defined to store values.
Subscripts are defined for providing access to values.
Methods are initialized to improve functionality.
Initial states are defined by initializers.
Functionalities are expanded beyond default values.
Syntax
Class classname   
{  
// Definition goes here..  
}  
Example
In the following program there are two classes Salary and EmpSalary.*/

class Salary{  
   var salary: Int  
   init(salary: Int) {  
      self.salary = salary  
   }  
}  
class EmpSalary {  
   var salary = 10000  
}  
let Income = EmpSalary()  
print("Employee salary is \(Income.salary)") 

print("\nAnother Example")

class MarksStruct {
   var mark: Int
   init(mark: Int) {
      self.mark = mark
   }
}

class studentMarks {
   var mark = 300
}

let marks = studentMarks()
print("Mark is \(marks.mark)")

print("\nAccessing Class Properties as Reference Types")
/*Class properties can be accessed by the '.' syntax. Property name is separated by a '.' after the instance name.*/

class MarksStruct1 {
   var mark1: Int
   init(mark1: Int) {
      self.mark1 = mark1
   }
}

class studentMarks1 {
   var mark11 = 300
   var mark21 = 400
   var mark31 = 900
}

let marks1 = studentMarks1()
print("Mark1 is \(marks1.mark11)")
print("Mark2 is \(marks1.mark21)")
print("Mark3 is \(marks1.mark31)")

print("Class Identity Operators")
/*Classes in Swift 4 refers multiple constants and variables pointing to a single instance. To know about the constants and variables pointing to a particular class instance identity operators are used. Class instances are always passed by reference. In Classes NSString, NSArray, and NSDictionary instances are always assigned and passed around as a reference to an existing instance, rather than as a copy.

Identical to Operators	Not Identical to Operators
Operator used is (===)	Operator used is (!==)
Returns true when two constants or variables pointing to a same instance	Returns true when two constants or variables pointing to a different instance*/
class SampleClass: Equatable {
   let myProperty: String
   init(s: String) {
      myProperty = s
   }
}

func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
   return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

spClass1 === spClass2 // false
print("\(spClass1)")

spClass1 !== spClass2 // true
print("\(spClass2)")