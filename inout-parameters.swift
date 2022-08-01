func swap(_ a:inout Int, _ b:inout Int){  
    let temp = a  
    a = b  
    b = temp  
}  
var a = 10  
var b = 20  
debugPrint("a = \(a) b = \(b)")  
swap(&a, &b)  
debugPrint("a = \(a) b = \(b)")  
/*The above example shows that the original values of two integer variables, 
a and b, are modified by the swap(_:_:) function, 
even though they were originally defined outside of the function*/