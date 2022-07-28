let dayOfWeek = 4  
switch dayOfWeek {  
    case 1 :  
        print("It is Sunday today")      
    case 2:  
        print("It is Monday today")       
    case 3:  
        print("It is Tuesday today")          
    case 4:  
        print("It is Wednesday today")
        fallthrough
    case 5:  
        print("It is Thursday today")
    case 6:  
        print("It is Friday today")       
    case 7:  
        print("It is Saturday today")         
    default:  
        print("Invalid day")  
} 
//In the above example, you can see that case 4 executes the statement print("It is Wednesday today") and fallthrough keyword proceeds to case6 which prints print("It is Thursday today").