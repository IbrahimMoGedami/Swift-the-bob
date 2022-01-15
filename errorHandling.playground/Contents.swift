import Foundation

//MARK:- Designing Error
// use enum

enum ErrorName : Error {
    case maxHeight
    case minHeight
    case noName
}

func checkHeightError(height : Int) throws{
    
    if height > 200 {
        throw ErrorName.maxHeight
    } else if height < 140{
        throw ErrorName.minHeight
    }else{
        print("Enjoy")
    }
}

// handle with error
do {
    try checkHeightError(height: 30)
} catch ErrorName.maxHeight {
    print("You are too tall")
} catch ErrorName.minHeight {
    print("You are too short")
}

//MARK:- Error handling with object initialization

// Design Class

class Course {
    var name : String
    
    init(name : String) throws{
        if name == ""{
            throw ErrorName.noName
        }else{
            self.name = name
            print("Hey, You 've created an object : \(name)")
        }
    }
}

do {
    try Course(name: "Learn Swift")
} catch ErrorName.noName {
    print("Make sure you enter your name please! ")
}

//MARK:- Difference Between ["try" | "try!" | "try?"]

//"try?"
// if error thrown --> nil
// if error not thrown --> optional
let myCourse1 = try? Course(name: "Learn Swift Course")

//"try!"
// gurantee your code will never encounter an error
let myCourse2 = try! Course(name: "Learn Swift Course")
// but, if does thrown an error app will crash
// ->>> (will crash) let myCourse2 = try! Course(name: "")

