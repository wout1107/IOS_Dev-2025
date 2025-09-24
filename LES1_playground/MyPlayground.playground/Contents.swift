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

print(reversedString(text: firstLastName.voornaam))



