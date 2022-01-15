
import UIKit
//: Generic Struct
struct GenericStruct<T>{
    var Property : T?
}

let s1 = GenericStruct<Int>()
let s2 = GenericStruct<String>(Property: "Ebrahim")

/// Normal Protocol
protocol NormalProtocol{
    var Property : String { get set}
}

class NormalClass : NormalProtocol{
    var Property: String = "Ebrahim"
}


//:Generic Protocol
protocol GenericProtocol{
    associatedtype MyType
    var prorperty : MyType { get set }
    
}

struct SomeStruct : GenericProtocol{
    var prorperty = 190
    
    
}
