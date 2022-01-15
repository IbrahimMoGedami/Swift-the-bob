//: A UIKit based Playground for presenting user interface
  
import UIKit
import Foundation

class Human {
    var name : String
    init(name : String) {
        self.name = name
    }
    // convenience init initialize the designated init method
    convenience init() {
        self.init(name : "Mohammed Gedami")
    }
}

let mhmd = Human(name: "Mohammed")
let myFather = Human()
print(myFather.name)

// In Real Life
let randomColor = UIColor(red: 255/80, green: 80/255, blue: 80/255, alpha: 1)

//extension UIColor {
//    
//    convenience init() {
//        
//    }
//}



