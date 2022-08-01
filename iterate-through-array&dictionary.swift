//First, let's create a dictionary which we will iterate in this example.

var employee = ["name":"John","Id":"1","age":"20"]  
//Let's use the for-in loop to iterate over the employee dictionary.
print("\n for in loop")
for emp in employee{  
    debugPrint(emp.value)  
    debugPrint(emp.key)  
}  
//It will print all the keys and values of the dictionary. However, we can also iterate over the reverse of the dictionary like an array.
print("\n for in loop reversed")
for emp in employee.reversed(){  
    debugPrint(emp.value)  
    debugPrint(emp.key)  
}  
//It will print the keys and values of the dictionary in reverse order. We can also use enumerated() to get the keys, value relative to their dictionary positions.
print("\n for in loop enumerated")
for (index,emp) in employee.enumerated(){  
    debugPrint(emp.value)  
    debugPrint(index)  
}  
//It prints the values along with their index in the dictionary on the console.

//We can also use the higher-order function like forEach() to iterate over any collection. Using forEach() is similar to the for-in loop, as shown below.

var nums = [1,2,3,12,3,43,4]  
  print("\n for each loop")
nums.forEach{  
    debugPrint($0)  
}  
//However, we cannot use jump statements like break and continue using the forEach() method. We can perform various stuff using the forEach() method. Let's consider the following example, which prints the square of the first 100 numbers on the console.

func calculateSquare(_ number:Int){  
    print(number * number)  
}  
  print("\n for in loop calculate square")
(1...100).forEach(calculateSquare) 