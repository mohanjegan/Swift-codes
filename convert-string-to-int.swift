let myString = "654"  
let b = Int(myString) 
print(b)
print("\nForced convert")
let myString1 = "654"  
let b1 = Int(myString1) ?? 0; 
print(b1)
print("\nconvert using nsstring")
let myString2 = "654"  
let b3 = (myString2 as NSString).integerValue
print(b3)