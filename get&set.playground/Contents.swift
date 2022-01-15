import UIKit
//: { get set } vs. { get }


// { get set } :
// Stroed Property😃
// Computed Property -->  get , set(optional)


//{ get }
// Stroed Property😃
// Computed Property -->  get , set(must)

protocol Breathable{
    var isBreathing : Bool { get set }
    var isliving : Bool { get }
}

struct Human : Breathable{
    var isBreathing: Bool {
        get{ return true }
        set{ }
    }
    
    var isliving: Bool {
        get{ return true }
        set{ }
    }
}
