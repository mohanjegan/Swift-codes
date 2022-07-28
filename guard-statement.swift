/*Here, expression is a Boolean expression which either evaluated to true or false.
If the expression is evaluated to false, it will execute the statements inside the guard.
If the expression is evaluated to true, it will skip the execution of the statements inside the guard.
Note: The guard statement must contain a control statement return, break, continue or throw at the end of the code.*/
func Function1() {  
    guard false else {  
        print("Condition is not satisfied.")  
        return  
    }  
    print("Condition is satisfied.")  
}
func Function2()
{
guard true else {  
    print("Condition is not satisfied.")
    return
}  
print("Condition is satisfied.")
}
Function1()
Function2()
print("Hello after function call")