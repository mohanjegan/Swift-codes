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