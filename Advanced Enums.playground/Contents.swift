import Foundation
//: There are three types of enum :-
//:1. basic enum
//:2. enum that have row value
//:3. enum that have associated value


//MARK:- ###  Basic enum

enum CompassPoint {
    case north
    case south
    case east
    case west
}

let direction = CompassPoint.north /// init

switch direction {
case .north:
    print("go to north")
default:
    print("stop in your place")
}

//MARK:- ###  Raw Values
/// Here’s an example that stores raw ASCII values alongside named enumeration cases:

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let tabb = ASCIIControlCharacter.tab.rawValue
/*:
 ### Raw Value :
 Swift supports the following types for the value of enums :-
 - Integer
 - Float
 - String
 - Bool
 
 */
enum Food: String {
    case pizza ,shawerma = "sh",bashmil
}

let pizza = Food.pizza.rawValue
let shaw = Food(rawValue: "sh")
print(shaw!)

//Mark:- Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
var proBarcode = Barcode.qrCode("ABCDEFGHIJKLMNOP")

/// : Validation
if case let Barcode.qrCode(value) = proBarcode{
    print("This is qrCode")
    print(value)
}

if case let Barcode.upc(numberSystem, manufacturer, product, check) = productBarcode{
    print("This is upc")
    print("numberSystem : \(numberSystem)\nproduct : \(product)\nmanufacturer : \(manufacturer)\ncheck : \(check)")
}
