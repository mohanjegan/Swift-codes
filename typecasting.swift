print("Typecasting:To Define a Class Hierarchy")
class Subjects {  
   var physics: String  
   init(physics: String) {  
      self.physics = physics  
   }  
}  
class Chemistry: Subjects {  
   var equations: String  
   init(physics: String, equations: String) {  
      self.equations = equations  
      super.init(physics: physics)  
   }  
}  
class Maths: Subjects {  
   var formulae: String  
   init(physics: String, formulae: String) {  
      self.formulae = formulae  
      super.init(physics: physics)  
   }  
}  
let sa = [ Chemistry(physics: "Mechanics", equations: "Hertz"),  
   Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")]  
let samplechem = Chemistry(physics: "Mechanics", equations: "Hertz")  
print("Instance physics is: \(samplechem.physics)")  
print("Instance equation is: \(samplechem.equations)")  
let samplemaths = Maths(physics: "Fluid Dynamics", formulae: "Giga Hertz")  
print("Instance physics is: \(samplemaths.physics)")  
print("Instance formulae is: \(samplemaths.formulae)") 
print(sa)