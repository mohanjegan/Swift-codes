func operate(with symbol:String) -> (Int, Int) -> Int {  
    func add(num1:Int, num2:Int) -> Int {  
        return num1 + num2  
    }  
    func subtract(num1:Int, num2:Int) -> Int {  
        return num1 - num2  
    }  
    let operation = (symbol == "+") ?  add : subtract  
    return operation  
}  
let operation = operate(with: "+")  
let result = operation(10, 20)  
print(result)
/*In the above program,
The outer function is operate(), with return value of type Function (Int,Int) -> Int.
The inner (nested) functions are add() and subtract().
The nested function add() and subtract() in a way are being used outside of the enclosing function operate(). This is possible because the outer function returns one of these functions.

We've used the inner function outside the enclosing function operate() as operation(10, 20). The program internally calls add(10, 20) which provides an output 30.*/
