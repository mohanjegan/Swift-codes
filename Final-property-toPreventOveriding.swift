/*Final Property to prevent Overriding
When the user need not want others to access super class methods, properties or subscripts Swift 4 introduces 'final' property to prevent overriding. Once 'final' property is declared the subscripts won't allow the super class methods, properties and its subscripts to be overridden. There is no provision to have 'final' property in 'super class'. When 'final' property is declared the user is restricted to create further sub classes.*/
final class Circle {
   final var radius = 12.5
   var area: String {
      return "of rectangle for \(radius) "
   }
}

class Rectangle: Circle {
   var print = 7
   override var area: String {
      return super.area + " is now overridden as \(print)"
   }
}

let rect = Rectangle()
rect.radius = 25.0
rect.print = 3
print("Radius \(rect.area)")

class Square: Rectangle {
   override var radius: Double {
      didSet {
         print = Int(radius/5.0)+1
      }
   }
}

let sq = Square()
sq.radius = 100.0
print("Radius \(sq.area)")