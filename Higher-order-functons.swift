print("iterate in array using forEach loop")
let marks = [10,20,21,65,32,21]  
//1st  
marks.forEach{(marks) in  
    debugPrint(marks, terminator:" ")  
}  
debugPrint()  
  
  
//2nd
print("\nIt's printed using higher order funtion")
marks.forEach{ debugPrint($0, terminator:" ")} 

print("\n\niterate in array using map")
var names = ["John K", "David Garner", "Mike Smith", "Will lee"]  
  
//1st 
let firstNames = names.map{(name) -> String in  
  
  
    name.split(separator: " ").first!.description  
}  
  
  
debugPrint(firstNames)  
  
//2nd
print("\nIt's printed using higher order funtion")
let newNames = names.map{$0.split(separator: " ").first!.description}  
  
  
debugPrint(newNames) 
print("\ncompact map")

var marks1 = ["ten ", "10", "20", "thrty one"]  
  
  
let intMarks1 = marks1.compactMap{(marks1) in  
    Int(marks1)?.description  
}  
  
  
debugPrint(intMarks1)  
  
print("\nIt's printed using higher order function") 
let newMarks1 = marks1.compactMap{Int($0)?.description}  
  
  
debugPrint(newMarks1)
print("\nFlat Map")
var arrayOfNames2 = [["John", "Rockey", "David"],  
                    ["Smith","Roy","Max"]]  
let names2 = arrayOfNames2.flatMap{name in  
    name  
}  
debugPrint(names2)  
  
print("\nIt's printed using Higher order funtion")  
let arrnames2 = arrayOfNames2.flatMap{$0}  
  
  
debugPrint(arrnames2) 
print("\nfilter array")
var numbers = [1,2,3,4,5,6,7,8,9,10,11,12]  
  
let evenNumbers = numbers.filter{(num) in  
    num%2 == 0  
}  
debugPrint(evenNumbers)  
  
 print("\nIt's printed using higher order functon") 
let oddNumbers = numbers.filter{$0%3 == 0}  
debugPrint(oddNumbers)  

print("\nReduce")
var numbers3 = [1,2,3,4,5,6,7,8,9]  
  
let sum3 = numbers3.reduce(0) { (result3, num3)  in  
    result3 + num3  
}  
debugPrint(sum3)  
print("\nIt's printed using higher order function")  
let s3 = numbers3.reduce(0){$0 + $1}  
debugPrint(s3) 

print("\nswift sorted and sort functions")
var numbers4 = [10,12,3,14,52,61,17,82,19]  
var nums4 = numbers4  
  
  
//sorted function  new array createe
let sortedNumbers4 = numbers4.sorted { (a, b) -> Bool in  
    a<b  
}  
debugPrint(sortedNumbers4)  
  
  
//sort function  sorted in old array
numbers4.sort{(a,b) -> Bool in  
    a<b  
}  
debugPrint(numbers4)  
  
  
//shorthand syntax of sorted  
let sortedNums4 = numbers4.sorted{$0 < $1}  
debugPrint(sortedNums4)  
  
  
//shorthand syntax of sort  
nums4.sort{$0 < $1}  
debugPrint(nums4)