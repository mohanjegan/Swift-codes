print("Declaring an empty dictionary")
/*To create an empty dictionary, we specify the key:value Data type inside square brackets [].*/
let emptyDictionary:[Int:String] = [:]  
print(emptyDictionary)  

//Or

let emptyDictionary1:Dictionary<Int, String> = [:]  
print(emptyDictionary1) 

print("\nDeclaring a dictionary with some values")
let valDictionary = ["a":10, "b":20, "c":30, "d":40, "e":50, "f":60, "g":70, "h":80, "i":90]  
print(valDictionary)  

print("\nCreating Dictionary from two arrays")
let customKeys = ["India", "Pakistan", "United Kingdom"]  
let customValues = ["New Delhi", "Islamabad", "London"]  
let newDictionary = Dictionary(uniqueKeysWithValues: zip(customKeys,customValues))  
print(newDictionary) 

print("\nAccess Dictionary elements in Swift")
let valDictionary1 = ["a":10, "b":20, "c":30, "d":40, "e":50, "f":60, "g":70, "h":80, "i":90]  
print(valDictionary1 ["c"])  
print(valDictionary1 ["f"]) 

print("Access Dictionary elements in Swift using for-in loop")
let valDictionary2 = ["a":10, "b":20, "c":30, "d":40, "e":50, "f":60, "g":70, "h":80, "i":90]  
for (key,value) in valDictionary2 {  
    print("key:\(key) value:\(value)")  
} 

print("\nModify dictionary elements in Swift")
/*We can add a new element in a Swift dictionary by using a new key as index and assign to a new value.*/

var valDictionary3 = ["India":"New Delhi", "China":"Beijing", "USA":"Washington D.C."]  
valDictionary3["Germany"] = "Berlin"  
print(valDictionary3) 

print("Changing elements in Dictionary")

var valDictionary4 = ["India":"New Delhi", "China":"Beijing", "USA":"Washington D.C."]  
valDictionary4["India"] = "NEW DELHI"  
print(valDictionary4) 