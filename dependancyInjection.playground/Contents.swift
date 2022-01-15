//: A UIKit based Playground for presenting user interface
  
import UIKit

protocol Driving{
    
    func startDriving()
    func isDriving() -> Bool
    func endDriving()
}

class BMW : Driving{
    func startDriving() {
    }
    
    func isDriving() -> Bool {
        return true
    }
    
    func endDriving() {
        
    }
}

class Mercides : Driving{
    func startDriving() {
        
    }
    
    func isDriving() -> Bool {
        return true
    }
    
    func endDriving() {
        
    }
}


class SelectedCar{
    
    let car : Driving
    
    init(car : Driving) {
        self.car = car
    }
}

let selection1 = SelectedCar(car: BMW())
let selection2 = SelectedCar(car: Mercides())
selection1.car.isDriving()
