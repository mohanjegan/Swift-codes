let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"
userDefinedColorName = "green"

colorNameToUse = userDefinedColorName ?? defaultColorName
print(colorNameToUse)
// userDefinedColorName isn't nil, so colorNameToUse is set to "green"