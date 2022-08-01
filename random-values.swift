print("create random values")
let random = Float.random(in: 1..<4) 
print(random)
//We can also generate Random numbers of type Int, Double, and CGFloat.

let intRandom = Int.random(in: 1..<10)  
print(intRandom)
let doubleRandom = Double.random(in: 1..<10)
print(doubleRandom)
//We can also use the random() method for Boolean values as well.

let booleanRandom = Bool.random() 
print(booleanRandom)
//Swift also provides shuffle() and shuffled() methods to provide randomness in arrays as shown below.

var nums = [1,2,3,2,1,3,4]  
debugPrint(nums.shuffled())  
//It prints the shuffled number arrays on the console. However, we can also use the randomElement() method for arrays to get the random element in the array. If the array is empty, it provides nil.

var nums1 = [1,2,3,2,1,3,4]  
if let num1 = nums1.randomElement(){  
    debugPrint(num1)  
}  
//It will print any random element from the nums array on the console.