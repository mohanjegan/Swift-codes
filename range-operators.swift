print("Closed range operator")
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
print("Half open range operator")
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
print("one sided range operator")
print("from second index")
for name in names[2...] {
    print(name)
}
print("upto second index")
for name in names[...2] {
    print(name)
}
print("Half open with one sided range operator")
for name in names[..<2] {
    print(name)
}