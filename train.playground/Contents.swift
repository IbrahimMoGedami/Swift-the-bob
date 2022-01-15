import Cocoa

var str = "Hello, playground"
//struct Person {
//    var clothes: String
//    var shoes: String
//
//    func describe() {
//        print("I like wearing \(clothes) with \(shoes)")
//    }
//}
//
//let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
//let other = Person(clothes: "short skirts", shoes: "high heels")
//taylor.describe()
//other.describe()


///*  WillSet && DidSet *////
/// Property observers*////

//struct Person {
//    var clothes: String {
//        willSet {
//            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
//        }
//
//        didSet {
//            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
//        }
//    }
//}
//
//func updateUI(msg: String) {
//    print(msg)
//}
//
//var taylor = Person(clothes: "T-shirts")
//taylor.clothes = "short skirts"


/// Computed properties  *////
struct Person {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person(age: 25)
print(fan.ageInDogYears)




