import Cocoa

// problem can init fail ?
// the first method :
enum ErrorName : Error{
    case noName
}

struct UdemyCourseName{
    let courseName : String
    init(name : String)throws {
        if name.isEmpty{
            throw ErrorName.noName
        }
        self.courseName = name
    }
}

do {
    try UdemyCourseName(name: "Bob")
} catch ErrorName.noName {
    print("enter name")
}

// the first method :
//MARK:- Design Failable Init

class Driver{
    let name : String
    let age : Int
    
    init?(name : String , age : Int) {
//        if age < 21{
//            return nil 
//        }
        guard age >= 21 else { return nil }
        self.age = age
        self.name = name
    }
}
let driver = Driver(name: "memi", age: 20)
print(driver)

