import Cocoa
struct NuclearRocket{
    var meters : Double
    var liters : Double
    
    init(meters : Double , liters : Double) {
        self.meters = meters
        self.liters = liters
    }
    
    init(ft : Double , gallon : Double) {
        let convertedMeters = ft / 3.28
        let convertedLiters = gallon * 3.78
        
        self.init(meters : convertedMeters , liters : convertedLiters)
    }
}

var rocket = NuclearRocket(meters: 30, liters: 30)
rocket.liters

var newRocket = NuclearRocket(ft: 300, gallon: 300)
newRocket.meters
newRocket.liters

class GrandParent {
    
    static var numberOfYears = 30
    static func introduce(){ //MARK:-  static func ==> can't be overriden
        print("30 == \(numberOfYears)")
    }
    class func introducing(){
        print("30 == \(numberOfYears)")
    }
    final func cantoverride(){ //MARK:-  final func ==> can't be overriden but is a snormal method
        print("Helloo")
    }
}
class Parent: GrandParent {
    override class func introducing() {
        print("5 != \(numberOfYears)")
    }
//    override func cantoverride(){
//        print("hey, helloo")
//    }
}
Parent.introducing()
GrandParent().cantoverride()
Parent().cantoverride()
