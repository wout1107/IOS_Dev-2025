import UIKit

var text : String = "SWIFT"
let max : Int = 10
var average : Double = 0

var array : [String]

text.forEach {
    print($0)
}

var tuple: String?

var firstLastName = (voornaam: "Wout", achternaam: "Devriese")

print(firstLastName.voornaam)
print(firstLastName.achternaam)

var reversedString : String? = nil

//Deel 2

func reversedString(text: String) -> String {
    if text.elementsEqual("") {
        return "no result"
    }
    else
    {
        return String(text.reversed())
    }
}

print(reversedString(text: "VIVES"))

func getUpperLowerCount(text: String) ->(uppercase:String, lowercase: String, charcount: Int) {
    let upper = text.uppercased()
    let lower = text.lowercased()
    let char = text.count
    var result = (upper, lower, char)
    return result
}

print(getUpperLowerCount(text: "IOS 26").uppercase)
print(getUpperLowerCount(text: "IOS 26").lowercase)
print(getUpperLowerCount(text: "IOS 26").charcount)
print(getUpperLowerCount(text: "IOS 26"))

func divide(getal1: Int, getal2: Int) -> (Double) {
    return Double(getal1)/Double(getal2)
}

print(divide(getal1: 4, getal2: 3))

func calculate(numbers: Int...) -> (avg: Double, min: Int, max: Int, aantal: Int)
{
    let min = numbers.min()!
    let max = numbers.max()!
    let aantal = numbers.count
    let sum: Int = numbers.reduce(0, +)
    let avg = Double(sum)/Double(aantal)
    return(avg, min, max, aantal)
}

calculate(numbers: 10,0,5)
calculate(numbers: 4,5,6,-3)
calculate(numbers: -3)

var x: Double = 10.0
var y: Int = 3

func increment(x: inout Double, y: inout Int ) {
    x = x + 1
    y = y + 1
}
