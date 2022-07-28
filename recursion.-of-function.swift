print("\nRecursion Example")
func countDownToZero(num: Int) {  
    print(num)  
    if num > 0 {  
        countDownToZero(num: num - 1)  
    }  
}  
print("Countdown:")  
countDownToZero(num:6) 
print("\nRecursion for factorial")
func findFactorial(of num1: Int) -> Int {  
    if num1 == 1 {  
        return 1  
    } else {  
        return num1 * findFactorial(of:num1 - 1)  
    }  
}  
  
let x = 6  
let result = findFactorial(of: x)  
print("The factorial of \(x) is \(result)")   