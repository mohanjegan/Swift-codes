//Declare an empty array
print("Declaring empty array")
let emptyIntArr:[Int] = []  
print(emptyIntArr)  
//Or
let emptyIntArr1:Array<Int> = Array()  
print(emptyIntArr1) 

print("\nCreate an array directly")
/*Swift is a type inference language so, we can also create an array directly without specifying the data type but we have to initialise with some values so that compiler can finds out its type.*/

let someIntArr = [1, 2, 3, 4, 5]  
print(someIntArr) 

print("\nDeclare an array with specified number of single repeated value")
/*We can repeat a value to specific number of times to make an array in Swift. It is done by using the array initializer with repeating and count.*/

let arrWithRepeatingValues = Array(repeating: "JavaTpoint", count: 5)  
print(arrWithRepeatingValues) 

print("\nTo access array elements in Swift")
/*You have to use index of the value of that array you want to access within square brackets immediately after the name of the array.

Suppose, we declared an array intArray as above. The first element is intArray[0], second element is intArray[1] and so on. We use them to access the array's values.*/

let intArr = [10, 11, 12, 13, 14]  
print(intArr[0])  
print(intArr[1])  
print(intArr[2])  
print(intArr[3])  
print(intArr[4])

print("\nTo modify elements in Array")
/*We can modify elements of the array by using assignment operator. We have to add the index of the value we want to update within square brackets after the name of the array followed by the assignment operator and new value*/

var intArray = [10, 11, 12, 13, 14]  
intArray[0] = 12  
intArray[1] = 42  
intArray[2] = 45  
intArray[3] = 21  
intArray[3] = 36  
print(intArray)

print("\nYou can also modify the whole array completely.")
var intArr1 = [1, 2, 3, 4]  
intArr1 = [10,20,30, 40]  
print(intArr1) 