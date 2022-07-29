/*Swift Enumerations / Swift Enum
Swift Enumeration is also known as Swift Enum. It is a data type which consists of set of related values. It is declared in a class and its values are accessed through the instance members of that class.

Syntax:
enum enum_name  
{  
// values are described here  
}  
Example:
Let's take an example to understand it well. Here, we shall an enum named "Connection Status" and see the possible condition using switch statement.*/

enum ConnectionStatus  
{  
    case Unknown  
    case Disconnected  
    case Connecting  
    case Connected  
      
}  
var connectionStatus = ConnectionStatus.Connecting  
connectionStatus = .Connected  
  
switch connectionStatus {  
  
    case .Disconnected:  
    print("Disconnected")  
      
    case .Connecting:  
    print("Connecting")  
      
    case .Connected:  
    print("Connected")  
      
    default:  
    print("Unknown Status")  
}  

print("\nEnum with Associated Values")
/*Consider for example to access the students name and marks secured 
in three subjects enumeration name is declared as student and the members 
present in enum class are name which belongs to string datatype, 
marks are represented as mark1, mark2 and mark3 of datatype Integer. 
To access either the student name or marks they have scored*/
enum Student {
   case Name(String)
   case Mark(Int,Int,Int)
}

var studDetails = Student.Name("Swift 4")
var studMarks = Student.Mark(98,97,95)

switch studMarks {
   case .Name(let studName):
      print("Student name is: \(studName).")
   case .Mark(let Mark1, let Mark2, let Mark3):
      print("Student Marks are: \(Mark1),\(Mark2),\(Mark3).")
}
print("\nEnum with Raw values")
/*Raw values can be strings, characters, or any of the integer or 
floating-point number types. Each raw value must be unique within 
its enumeration declaration. When integers are used for raw values, 
they auto-increment if no value is specified for some of the 
enumeration members.*/
enum Month: Int {
   case January = 1, February, March, April, May, June, July, August,
      September, October, November, December
}

let yearMonth = Month.May.rawValue
print("Value of the Month is: \(yearMonth).")