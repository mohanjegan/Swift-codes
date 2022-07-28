print("while loop example")
var currentLevel:Int = 0, finalLevel:Int = 6  
let gameCompleted = true  
while (currentLevel <= finalLevel) {  
    //play game  
    if gameCompleted {  
        print("You have successfully completed level \(currentLevel)")  
        currentLevel += 1  
    }  
}  
//outside of while loop  
print("Terminated! You are out of the game ")  
print("/n")
print("repeat while loop example")
var currentLevel:Int = 0, finalLevel:Int = 5  
let gameCompleted = true  
repeat {  
    /*the statements in repeat block executed atleast once as it checks the condition in last*/
    if gameCompleted {  
        print("You have successfully completed level \(currentLevel)")  
        currentLevel += 1  
    }  
} while (currentLevel <= finalLevel)  
print("Terminated! outside of repeat while loop")