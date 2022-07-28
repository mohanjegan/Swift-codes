print("String Concatenation")
let constA = "Hello "  
let constB = "JavaTpoint"  
  
var stringA = constA + constB  
print( stringA )
/*The + operator is used to concatenate two strings or a string and a character, or two characters in Swift*/
print("\n")
print("String Interpolation")
var varA1 = 10  
let constA1 = 1000  
var varC1:Float = 10.0  
  
var stringA1 = "\(varA1) times \(constA1) is equal to \(varC1 * 1000)"  
print(stringA1)
/*String interpolation is used to construct a new string value by mixing the values of constants, variables, literals, and expressions and include them inside a string literal. The values of variables and constants which you insert into string literal is wrapped in a pair of parentheses, prefixed by a backslash.*/
print("\n")
print("String length")
var varA2 = "Hello JavaTpoint"  
print( "\(varA2), string length is \((varA2.count))" )  
/*Swift 4 doesn't support length property, but we can use a global count() function to count the number of characters in a string.*/
print("\n")
print("String Comparison")
var varA3 = "Hello, JavaTpoint"  
var varB3 = "Hello, World!"  
  
if varA3 == varB3 {  
   print( "\(varA3) and \(varB3) are equal" )  
} else {  
   print( "\(varA3) and \(varB3) are not equal" )  
} 
//The == operator is used to compare two strings variables or constants.
print("\n")
print("String Iteration")
for chars in "WelcometoJavaTpoint" {  
   print(chars, terminator: " ")  
} 
/*In Swift 4, strings are the collection of values, so we can iterate over strings using loops:*/
print("\n")
print("Iteration of unicode strings")
var unicodeString = "JavaTpoint"  
  
print("UTF-8 Codes: ")  
for code in unicodeString.utf8 {  
   print("\(code) ")  
}  
  
print("\n")  
  
print("UTF-16 Codes: ")  
for code in unicodeString.utf16 {  
   print("\(code) ")  
}  
/*We can access the UTF-8 and UTF-16 representation of the Unicode strings over its utf8 and utf16 properties.*/
