print("Swift - Initialization")
struct rectangle {
   var length: Double
   var breadth: Double
   init() {
      length = 6
      breadth = 12
   }
}

var area = rectangle()
print("area of rectangle is \(area.length*area.breadth)")

print("\nSetting Property Values by Default")
struct rectangle1 {
   var length1 = 6
   var breadth1 = 12
}

var area1 = rectangle1()
print("area of rectangle is \(area1.length1*area1.breadth1)")

print("\n Parameters Initialization")
struct Rectangle2 {
   var length2: Double
   var breadth2: Double
   var area2: Double
   
   init(fromLength2 length2: Double, fromBreadth2 breadth2: Double) {
      self.length2 = length2
      self.breadth2 = breadth2
      area2 = length2 * breadth2
   }
   init(fromLeng2 leng2: Double, fromBread2 bread2: Double) {
      self.length2 = leng2
      self.breadth2 = bread2
      area2 = leng2 * bread2
   }
}

let ar = Rectangle2(fromLength2: 6, fromBreadth2: 12)
print("area is: \(ar.area2)")

let are = Rectangle2(fromLeng2: 36, fromBread2: 12)
print("area is: \(are.area2)")

