print("Instance Methods")
/*Instance methods are the methods which are associated with instances of class, structure or enum. Instance methods are written inside the body of that type.

Instance methods provide functionalities related to instance's need and also to access and modify instance properties. Instance methods are written inside the curly barces {}. It has implicit access to methods and properties of the type instance. When a specific instance of the type is called, it will get access to that particular instance.

Syntax:
func funcname(Parameters) -> returntype {  
   Statement1  
   Statement2  
   ---  
   Statement N  
   return parameters  
}  
*/
class calculate {  
   let a: Int  
   let b: Int  
   let res: Int  
   init(a: Int, b: Int) {  
      self.a = a  
      self.b = b  
      res = a + b  
   }  
   func tot(c: Int) -> Int {  
      return res - c  
   }  
   func result() {  
      print("Result is: \(tot(c: 20))")  
      print("Result is: \(tot(c: 50))")  
   }  
}  
let pri = calculate(a: 200, b: 300)  
pri.result()  

print("\nLocal and External Parameter Names")
/*In Swift4, function can describe both local and global declarations for their variables. The characteristics of local and global parameter name declarations are different for functions and methods. The first parameter in Swift 4 is referred by preposition named as 'with', 'for' and 'by' for easy to access naming conventions.

In Swift 4, you can declare first parameter name as local parameter and the remaining parameter names as global parameter names.

Let's see an example. Here 'no1' is declared as local parameter names and 'no2' is used for global declarations and accessed through out the program.*/
class divide {  
   var count: Int = 0  
   func incrementBy(no1: Int, no2: Int) {  
      count = no1 / no2  
      print(count)  
   }  
}  
let counter = divide()  
counter.incrementBy(no1: 100, no2: 3)  
counter.incrementBy(no1: 200, no2: 5)  
counter.incrementBy(no1: 400, no2: 7)  

print("\nSelf property in Methods")
/*Methods have an implicit property called 'self' for all its defined type instances. 'Self' property or Self method is provided with methods to access the instance itsel.*/
class calculate1 {  
   let a: Int  
   let b: Int  
   let res: Int  
   init(a: Int, b: Int) {  
      self.a = a  
      self.b = b  
      res = a + b  
      print("Result Inside Self Block: \(res)")  
   }  
   func tot(c: Int) -> Int {  
      return res - c  
   }  
   func result1() {  
      print("Result is: \(tot(c: 20))")  
      print("Result is: \(tot(c: 50))")  
   }  
}  
let pri1 = calculate1(a: 100, b: 200)  
let sum = calculate1(a: 300, b: 400)  
pri1.result1()  
sum.result1()  

print("\nModify Value Types from Instance Methods")
/*In Swift 4, structures and enums belong to value types which cannot be altered by its instance methods but we can modify the value types by 'mutating' behavior. Mutate will make any changes in the instance methods and will return back to the original form after the execution of the method. Also, by the 'self' property new instance is created for its implicit function and will replace the existing method after its execution.*/
struct area {  
   var length = 1  
   var breadth = 1  
   func area() -> Int {  
      return length * breadth  
   }  
   mutating func scaleBy(res: Int) {  
      length *= res  
      breadth *= res  
      print(length)  
      print(breadth)  
   }  
}  
var val = area(length: 3, breadth: 5)  
val.scaleBy(res: 2)  
val.scaleBy(res: 20)  
val.scaleBy(res: 200)