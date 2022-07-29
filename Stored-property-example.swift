struct Number {
   var digits: Int
   let pi = 3.1415
}

var n = Number(digits: 12345)
n.digits = 67
//can change the value from 12345 to 67 in digits aas its var.
print("\(n.digits)")
print("\(n.pi)")

/*n.numbers = 8.7 this gives the error as its let variable
error: cannot assign to 'numbers' in 'n'
n.numbers = 8.7*/

print("\nLazy stored example")
class sample {
   lazy var no = number()    // `var` declaration is required.
}

class number {
   var name = "Swift 4"
}

var firstsample = sample()
print(firstsample.no.name)
/*Swift 4 provides a flexible property called 'Lazy Stored Property' where it won't calculate the initial values when the variable is initialized for the first time. 'lazy' modifier is used before the variable declaration to have it as a lazy stored property.

Lazy Properties are used −

To delay object creation.
When the property is dependent on other parts of a class, that are not known yet*/
