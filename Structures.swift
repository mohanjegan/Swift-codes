/*Definition of a structure
Suppose, you have to access your bank account having some amount in rupees and paisa here, Here Amount is structure's name which is used to initialize a structure with rupees and paisa as datatype 'Int'*/
struct  Amount  
{  
    var rupees: Int  
    var paisa: Int  
}  
var x = Amount (rupees: 10000, paisa: 50)  
print(x)  
print("Amount in rupees is \(x.rupees)")  
print("Amount in paisa is \(x.paisa)")  
/*
Swift Structure Usage
Swift4 language facilitates you to define structures as custom data types for building the function blocks. The instances of structure are passed by its value to the defined blocks for further changes.

Structures are used to encapsulate simple data values.
Structures are used to copy the encapsulated data and its associated properties by 'values' rather than by 'references'.*/
print("\nAnother example")
struct markStruct {
   var mark1: Int
   var mark2: Int
   var mark3: Int

   init(mark1: Int, mark2: Int, mark3: Int) {
      self.mark1 = mark1
      self.mark2 = mark2
      self.mark3 = mark3
   }
}

var marks = markStruct(mark1: 98, mark2: 96, mark3:100)
print(marks.mark1)
print(marks.mark2)
print(marks.mark3)