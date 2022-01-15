import Foundation
import UIKit


var lable = UILabel() as UIView //MARK:- (UILabel is a subClass from UIView ) is named as downCastion

class Human {
    
    func introduce() {
        print("I'm a human")
    }
}

class Egyption : Human {
    
    func modaStyle(){
        print("Fashion Style")
    }
}

class Turkish : Human {
    
    func modaStyle(){
        print("Turkish Style")
    }
}

let ebrahim = Egyption()
ebrahim.modaStyle()

let sherif = ebrahim as Human // MARK:- is named upCasting


// MARK:- UpCasting with normal/common types
var name = "Ebrahim" as Any
var age = 22 as Any

var ebrahimArr = [name , age]


//MARK:- DownCasting
// Explicite/Force DownCasting

let newArr = ebrahimArr[0]
print(newArr)

// Implicite/Safe DownCasting
let newArr1 = ebrahimArr[0] as? Int
print(newArr1 ?? "r")
//print(newArr1!) // App will crash


//MARK:- Grouping

let ozil = Turkish()
let trika = Egyption()
let handeAritchle = Turkish()

let persons : [Human] = [ozil as Human , trika as Human , handeAritchle as Human , ebrahim as Human]

let humans : [Human] = [ozil , trika , handeAritchle , ebrahim ]

