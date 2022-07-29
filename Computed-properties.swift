print("Computed properties")
/*Consider the following example that defines a class Person. The Person has a name, age, and a special message for the world. While the name and age are stored properties, the message is a computed property whose value is determined based on Person's name and age.*/

class Person{  
    var name:String  
    var age:Int  
    var festival:String  
    var message: String{  
        return "Hi I am \(name), and I am \(age) years old. I wish you all a very Happy \(festival)"  //its the computed property
    }  
      
    init(name:String,age:Int,festival:String) {  
        self.name = name  
        self.age = age  
        self.festival = festival  
    }  
} 
var person = Person(name: "John", age: 23, festival: "Diwali")  
debugPrint(person.message)

print("\nExample 2:")

/*Consider the following example where the class Circle contains two properties. The radius is the stored property, whereas; the area is computed depending upon the circle's radius.*/

class Circle{  
    var radius:Double  
    var area:Double{  
        get{  
            return 3.14 * radius * radius  
        }  
    }  
    init(radius:Double) {  
        self.radius = radius  
    }  
}  
  
var circle = Circle(radius: 100)  
debugPrint("Area of circle is \(circle.area)")
print("\nExample 3:")

/*Let's extend the Circle class defined in example 2 and calculate the radius if the circle area is given.*/

class Circle1{  
    var radius1:Double  
    var area1:Double{  
        get{  
            return 3.14 * radius1 * radius1  
        }  
        set(newValue){  
            radius1 = sqrt(newValue/3.14)  
        }  
    }  
    init(radius1:Double) {  
        self.radius1 = radius1  
    }  
}  
/*If we assign some value for the circle's area, it will calculate the radius according to the area and assign it to the stored property radius.*/

var circle1 = Circle1(radius1: 100)  
circle1.area1 = 31400  
debugPrint("Radius of Circle is \(circle1.radius1)") 
/*Computed Properties
Rather than storing the values computed properties provide a getter and an optional setter to retrieve and set other properties and values indirectly.*/
print("Computed properties getter setter")
class sample {
   var no1 = 0.0, no2 = 0.0
   var length = 300.0, breadth = 150.0

   var middle: (Double, Double) {
      get {
         return (length / 2, breadth / 2)
      }
      
      set(axis){
         no1 = axis.0 - (length / 2)
         no2 = axis.1 - (breadth / 2)
      }
   }
}

var result = sample()
print(result.middle)
result.middle = (0.0, 10.0)

print(result.no1)
print(result.no2)

print("\nComputed Properties as Read-Only Properties")
/*A read-only property in computed property is defined as a property with getter but no setter. It is always used to return a value. The variables are further accessed through a '.' Syntax but cannot be set to another value.*/
class film {
   var head = ""
   var duration = 0.0
   var metaInfo: [String:String] {
      return [
         "head": self.head,
         "duration":"\(self.duration)"
      ]
   }
}

var movie = film()
movie.head = "Swift 4 Properties"
movie.duration = 3.09

print(movie.metaInfo["head"]!)
print(movie.metaInfo["duration"]!)

print("\nComputed Properties as Property Observers")
/*In Swift 4 to observe and respond to property values Property Observers are used. Each and every time when property values are set property observers are called. Except lazy stored properties we can add property observers to 'inherited' property by method 'overriding'.

Property Observers can be defined by either

Before Storing the value - willset

After Storing the new value - didset

When a property is set in an initializer willset and didset observers cannot be called.*/

class Samplepgm {
   var counter: Int = 0 {
      willSet(newTotal){
         print("Total Counter is: \(newTotal)")
      }
      
      didSet {
         if counter > oldValue {
            print("Newly Added Counter \(counter - oldValue)")
         }
      }
   }
}

let NewCounter = Samplepgm()
NewCounter.counter = 100
NewCounter.counter = 800

print("\nQuerying and Setting Properties")
/*Just like instance properties Type properties are queried and set with '.' Syntax just on the type alone instead of pointing to the instance.*/
struct StudMarks {
   static let markCount = 97
   static var totalCount = 0
   
   var InternalMarks: Int = 0 {
      didSet {
         if InternalMarks > StudMarks.markCount {
            InternalMarks = StudMarks.markCount
         }
         if InternalMarks > StudMarks.totalCount {
            StudMarks.totalCount = InternalMarks
         }
      }
   }
}

var stud1Mark1 = StudMarks()
var stud1Mark2 = StudMarks()

stud1Mark1.InternalMarks = 98
print(stud1Mark1.InternalMarks)

stud1Mark2.InternalMarks = 87
print(stud1Mark2.InternalMarks)