import Cocoa

var str = "Hello, playground"

/*
 
 
 Class: (ref Type)
 Must declare initialiser (constructer)
 Has deinitialisers
 Can inherit from other classes
 
 
 Struct: (val Type)
 It has free initialiser for you , you dont have to declare initaliser if you do free initialiser will be overwritten by your declared initialiser
 Dont have deinitialiser
 Cannot inherit from other struct
 
 
 * Both class and structure can do:

 Define properties to store values
 Define methods to provide functionality
 Be extended
 Conform to protocols
 Define intialisers
 Define Subscripts to provide access to their variables
 
 Only class can do:

 Inheritance
 Type casting
 Define deinitialisers
 Allow reference counting for multiple references.
 */

class SomeClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var aClass = SomeClass(name: "Bob")
var bClass = aClass // aClass and bClass now reference the same instance!
bClass.name = "Sue"
aClass.name = "Sue"
print(aClass.name) // "Sue"
print(bClass.name) // "Sue"


/*---------------------------------------------------------*/


struct SomeStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var aStruct = SomeStruct(name: "Bob")
var bStruct = aStruct // aStruct and bStruct are two structs with the same value!
bStruct.name = "Sue"
aStruct.name = "Sue"

print(aStruct.name) // "Bob"
print(bStruct.name) // "Sue"

/*---------------------------------------------------------*/
struct Resolution {
    var width = 2
    var height = 3
}

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
print("before change width value\n")
print("Width of cinema instance is : \(cinema.width)")
print("Width of  hd    instance is : \(hd.width)\n")

cinema.width = 2048
print("after change width value\n")

print("Width of cinema instance is : \(cinema.width)")
print("Width of  hd    instance is : \(hd.width)")
