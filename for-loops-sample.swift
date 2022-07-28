print("for in loop example")
let names = ["Ajeet", "Aryan", "Ayan", "Alex"]  
for name in names {  
    print("Good Morning \(name)")  
}
print("\n")
print("for loop with stride")
for i in stride(from: 1, to: 10, by: 2) {
    print(i)
}
print("\n")
print("simple for loop example")
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// Prints "3 to the power of 10 is 59049"