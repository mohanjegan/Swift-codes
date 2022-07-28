print("Function overloading")
struct Knife {  
}  
struct Grenade {  
}  
struct Gun {  
}  
func attack(with weapon:Knife) {  
    print("Attacking with Knife")  
}  
func attack(with weapon:Grenade) {  
    print("Attacking with Grenade")  
}  
func attack(with weapon:Gun) {  
    print("Attacking with Gun")  
}  
  
attack(with: Knife())  
attack(with: Grenade())  
attack(with: Gun()) 
/*In the above program, three different functions are created with a same name ?attack?. It takes different parameter types and by this way, we call this function in different conditions.*/
print("\nFunction Overloading with Different Parameter types")
func output(x:String) {  
    print("Welcome to \(x)")  
}  
func output(x:Int) {  
    print(" \(x)")  
}  
output(x: "Special")  
output(x: 26)
/*In the above program, both functions have same name output() and same number of parameter but the different parameter type. The first output() function takes a string as a parameter, and the second output() function takes an integer as a parameter.*/