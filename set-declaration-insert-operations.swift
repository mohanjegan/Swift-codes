/*What is Swift Sets?
Swift set is a simple container which can hold multiple values of a data type in an unordered list. It can't store same value twice. Here, the unordered list means you won't get the items in the same manner in which you have enter in the set.

Swift Sets vs. Swift Arrays
The main difference between the Swift set and Swift array is that the Swift set can't store the same value twice unlike the Swift array. Swift sets ensure you that an item appears only once and order of items is not important.

Values stored in a Swift set must be hashable. Hashable means, it must provide a hashValue property. HashValue is used to access the elements of the sets because sets are unordered.

All Swift basic data types (such as String, Int, Double, and Bool) are hashable by default, and can be used as set value types. We can also create our Hashable Type in Swift that can be stored in a set.

How to declare a set in Swift?
We can declare a set that can store some values.*/

print("\nTo Declare a set")
let someIntSet:Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]  
print(someIntSet)  

print("\nDeclare a set containing duplicate values")
let someIntSet1:Set = [1, 2, 3, 4, 8, 8, 8, 5, 5]  
print(someIntSet1)  

/*In the above program, we have entered the repeated value of 5 and 8. But in output, we can see that the repeated values have been removed.*/

/*Access set elements in Swift
We cannot access elements of set in the same way we access elements of array in Swift because set elements are unordered.

So, we have to access set elements using its methods and properties or using for-in loops.*/

print("\nAccess all set elements in Swift")
var someIntSet2:Set = [1, 2, 3, 4, 5, 6]  
for val in someIntSet2 {  
    print(val)  
}  

/*Using remove() method to access selective set elements
We can access the selective elements from the set by using remove() method.*/

print("\nRemove a selective element")
var someIntSet3:Set = [1, 2, 3, 4, 5, 6]  
let someVal3 = someIntSet3.remove(5)  
print(someVal3)  
print(someIntSet3)  

/*In the above program, you can see that the remove() method returns an optional string. It is recommended to do optional handling as follows.*/

print("\nOptional handling for using remove() method")
var someIntSet4:Set = [1, 2, 3, 4, 5, 6]  
if let someVal4 = someIntSet4.remove(5) {  
    print(someVal4)  
    print(someIntSet4)  
} else {  
    print("cannot find element to remove")  
}

print("\nAdd new elements in a set in Swift")
/*The insert() method is used to add new elements in set in Swift.

To add single element*/

var someIntSet5:Set = [1, 2, 3, 4, 5, 6]  
someIntSet5.insert(7)  
print(someIntSet5)  

/*In the above example, we have added a new element 7 in a predefined set.

To add multiple elements*/

print("\nAdd many elements")
var someIntSet6:Set = [1, 2, 3, 4, 5, 6]  
someIntSet6.insert(7)  
someIntSet6.insert(8)  
someIntSet6.insert(9)  
someIntSet6.insert(10)  
print(someIntSet6)  

print("\nSet operations in Swift")
/*Another advantage of using set is that it facilitates you to perform set operations, i.e. union, intersection etc. It is same as set operation in Mathematics.

Union Set Operation
The union of two sets a and b is the set of all elements combined in set a and set b. It is accessed by using a.union(b).*/

print("\nunion operation on set")
let a: Set = [1, 3, 5, 7, 9]  
let b: Set = [0, 2, 4, 6, 8]  
print(a.union(b))  

print("\nIntersection Set Operation")
/*The intersection of two sets a and b is the set of elements which are common in both sets. It is accessed by using a.intercection(b).*/

let a1: Set = [1, 3, 5, 7, 9]  
let b1: Set = [0, 3, 4, 7, 8]  
print(a1.intersection(b1))  

print("\nSubtracting Set Operation")
/*The subtraction of two sets a and b is the set which contains all elements of a but excludes the elements that also belongs to b. It is accessed by using a.subtracting(b).*/

let a2: Set = [1, 3, 5, 7, 9]  
let b2: Set = [0, 3, 4, 7, 8]  
print(a2.subtracting(b2))  

print("\nSymmetric Difference Set Operation")
/*The symmetric difference of two sets a and b is the set which contains all elements which are in either of the sets but not in both of them. It is accessed by using a.symmetricDifference(b).*/

let a3: Set = [1, 3, 5, 7, 9]  
let b3: Set = [1, 3, 7, 6, 8]  
print(a3.symmetricDifference(b3))  