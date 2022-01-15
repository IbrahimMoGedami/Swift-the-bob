//: A Cocoa based Playground to present user interface

import Foundation

let sum : Int = 0
let total : Int = 10
let re : Int = sum + total
print(re)


var tahia : String? = "Hello, The Bob"
print(tahia ?? "" )

class Human{

    var name : String? = ""

    init?(name:String) {
        self.name = name
    }

    func sayHello(name:String){
        print("Hello ,I am \(name)")
    }

}

class Apartment{

    var human : Human? = nil
    
}

// MARK:- Inializing
// with init
var soulApartment = Apartment()
soulApartment.human = Human.init(name: "Ibrahim Mo Gedami")

// MARK:- Force Unwrapping
let name = soulApartment.human!.name
print("Name : \(name!)")
soulApartment.human?.sayHello(name: "Ibrahim Mo Gedami")

// MARK:- Implicite/Safe  Unwrapping
// without init
var objApartment = Apartment()
var objApartment2 = Apartment()
print(objApartment2.human?.name)

objApartment.human = Human.init(name: "WWWWW")

if let objName = objApartment.human?.name {
    print("objName : \(objName)" )
}else{
    print("no name available")
}

if let objName = objApartment2.human?.name {
    print("objName2 : \(objName)")
}else{
    print("no name available")
}

//MARK:- Guard Statement

let canDrink = true

func checkDrinkingAge(){

//    if canDrink {
//        print("may be enter")
//    }else{
//        print("let me make you to the jail")
//    }
    guard !canDrink else{
        print("you cant drink")
        return
    }
}
checkDrinkingAge()


//// MARK:- Unwrapping Multible Optionals
//
//var myName : String? = "Hello, The Bob"
//var myPhoto : String? = "The Bob's Photo"
//var myAge : Int? = 20
//
//func multibleUnwrapping(){
//    guard (myName != nil) ,  (myPhoto != nil) , (myAge != nil) else {
//        print("something go wrong")
//        return
//    }
//
//    if let name = myName , let photo = myPhoto , let age = myAge{
//        print("myName  : \(name)\nmyPhoto : \(photo)\nmyAge   : \(age)")
//    }else{
//        print("something go wrong")
//    }
//}
//
//multibleUnwrapping()
//
////MARK:- ===========================================================
//print("\n\n===================================")
//
//MARK:- Defer Statement

func deferStatement(){

    defer {
        print("later\n")
    }
    print("first")
}
//deferStatement()

for i in 1...3{
    defer {
        print("deferd \(i)")
    }
    print("first  \(i)")
}


