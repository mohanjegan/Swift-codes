print("Swift Deinitialization")
/*Swift Deinitialization is a process where 'deinitializer' is called to deallocate the memory space before a class instance deallocated. The'deinit' keyword is used to deallocate the memory spaces occupied by the system resources. Deinitialization is available only on class types.

How Deinitialization Works
Swift automatically deallocates instances which are no longer needed, to free up resources. Swift uses Automatic Reference Counting (ARC) to handle the memory management of Instances. Usually, you don?t need to perform manual cleanup when your instances are deallocated. But, when you work with your own resources, you need to perform some additional cleanup.

For example: If you create a custom class to open a file and write some data to it, you might need to close the file before the class instance is deallocated.

Syntax:
deinit {  
// perform the deinitialization  
}*/  
print("Swift Deinitialization Example")
var counter = 0; // for reference counting  
class baseclass {  
   init() {  
      counter+=1;  
   }  
   deinit {  
      counter-=1;  
   }  
}  
var print1: baseclass? = baseclass()  
  
print(counter)  
print1 = nil 
print(counter)  
//Here, print1 = nil statement values of the counter retains the same since it is not deinitialized.
print("\n example without deinitialization")
var counter1 = 0; // for reference counting  
class baseclass1 {  
   init() {  
      counter1+=1;  
   }  
   deinit {  
      counter1-=1;  
   }  
}  
var print2: baseclass1? = baseclass1()  
print(counter1)  
print(counter1)
//here we didn't make the print2 to nil so there is no deinitialization