print("method overiding")
class cricket {
   func print1() {
      print("Welcome to Swift 4 Super Class")
   }
}

class tennis: cricket {
   override func print1() {
      print("Welcome to Swift 4 Sub Class")
   }
}

let cricinstance = cricket()
cricinstance.print1()

let tennisinstance = tennis()
tennisinstance.print1()