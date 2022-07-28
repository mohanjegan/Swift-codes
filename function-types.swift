print("a) Functions with no parameter and no return value")
 func greeting() {  
    print("Good Morning Everyone")  
}  
greeting()
print("\nb) Functions with no parameters but having return value")
func greeting1() -> String {  
    return "Good Morning Everyone"  
}  
let msg1 = greeting1()  
print(msg1)  
print("\nc) Function with Parameter but having no return value")  
func greeting2(msg2:String) {  
    print(msg2)  
}  
greeting2(msg2: "Good Morning Everyone")
print("\nd) Functions with Parameter and Return Value")
func greeting3(name:String) -> String {  
    return "Welcome to JavaTpoint " + name  
}  
let msg3 = greeting3(name: "Ajeet")  
print(msg3)
print("\ne) Function with multiple parameters and multiple return values")
func greeting4(name:String, coin:Int) -> (String, Int) {  
      
    let msg4 = "Hello Mr./Ms." + name  
    var userCoin = coin  
    if coin < 0 {  
            userCoin = 0  
    }  
    return (msg4, userCoin)  
}  
let msg4 = greeting4(name: "Ajeet", coin: 20)  
print(msg4.0)  
print("You have \(msg4.1) coins left in your wallet.")  
//These functions are used to take multiple parameters separated by comma and return multiple return values. In Swift, tuples are used to return multiple values.