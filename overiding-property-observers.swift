print("Overriding Property Observers")
/*When a new property needs to be added for an inherited property, 'property overriding' concept is introduced in Swift 4. This notifies the user when the inherited property value is altered. But overriding is not applicable for inherited constant stored properties and inherited read-only computed properties.*/
class Circle {
   var radius = 12.5
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