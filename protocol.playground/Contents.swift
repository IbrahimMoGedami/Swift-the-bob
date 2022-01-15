import UIKit
//: Drawbacks of oop : 👇
//: 1. when you subclass , you 've to inherite properities and methodes which you may not to need , your obj become unnecessarily bloated
//: 2. when you make alot of super classes , it's become extremly hard to navigate between each class and fix bugs
//: 3. since objs are refrencing to the same location in memory , if you make a copy and creat a small change it's property , will miss all the rest
protocol Humanable{
    var name : String { get set}
    var rece : String { get set}
    func sayHi()
}

struct Egyption : Humanable{
    var name: String = "Hassan Shahta"
    
    var rece: String = "African"
    
    func sayHi() {
        print("Hi , i'm \(name)")
    }
}

class Algerien : Humanable{
    var name: String = "Zeineldin Zidan"
    
    var rece: String = "African"
    
    func sayHi() {
        print("Hi , i'm \(name)")
    }
}

//MARK:- Protocol Inheritance

protocol SuperProtocol : Humanable {
    var canFly : Bool { get set }
    func punch()
}

struct HassanShahta : SuperProtocol{
    var canFly: Bool = false
    
    func punch() {
        switch canFly {
        case false:
            print("I don't punch")
        case true:
            print("I always punch")
        }
    }
    
    var name: String = "Hassan Shahta"
    
    var rece: String = "African"
    
    func sayHi() {
        print("Hi , i'm \(name)")
    }
}

//: Protocol Extensions
protocol MathGenuis {
    func calcGPA()
}

extension MathGenuis{
    func calcGPA(){
        print("I'm good in school")
    }
}

class Student : MathGenuis {}

class FacultyStudent : MathGenuis {
    func calcGPA(){
        print("I 've 3.8 in GPA")
    }
}

//Student().calcGPA()
//FacultyStudent().calcGPA()

protocol CalcArea{
    func calcArea(side : Double , length : Double) -> String
}

extension CalcArea {
    func calcArea(side: Double, length: Double) -> String {
        let res = 3.14 * length * length
        return "The area = \(res)"
    }
}

class Rectangle : CalcArea{}
Rectangle.init().calcArea(side: 5.0, length: 2.5)

//: Protocol as type
let randomObj : Any = [1,"1",["1"]]

protocol EastAsianable{
    var useChopstics : Bool {get}
    var origin : String {get}
}

extension EastAsianable{
    var useChopstics : Bool{
        return true
    }
}

class Italian : EastAsianable{
    var origin: String = "Italia"
}

class Korean : EastAsianable{
    var origin: String = "Korea"
}
class Japanese : EastAsianable{
    var origin: String = "Japane"
}
class Chinese : EastAsianable{
    var origin: String = "China"
}

/// Protocol can be a type , that is what means 👇
let originArr : [EastAsianable] = [Italian(),Korean(),Japanese(),Chinese()]
for i in originArr{
    print("I'm from \(i.origin)")
}

/// Protocol met Generic

func stateOrigin<T : EastAsianable>(enterOrigin : T){
    print("I'm from Cairo. but, I live in \(enterOrigin.origin)")
}

//stateOrigin(enterOrigin: Italian())

//:Protocol As Delegate Pattern












