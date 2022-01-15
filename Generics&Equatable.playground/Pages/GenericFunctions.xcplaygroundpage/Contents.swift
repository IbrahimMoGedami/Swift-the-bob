import Foundation

func equals<T: Equatable>(lhs: T, rhs: T) -> Bool {
    return lhs == rhs
}
equals(lhs: "abcd", rhs: "dcba")
equals(lhs: "abcd", rhs: "abcd")
equals(lhs: Double.pi, rhs: 3.14)

let d1 = Data.init(repeating: 1, count: 10)
let d2 = Data.init(repeating: 1, count: 10)
equals(lhs: d1, rhs: d2)


/// another Example

struct Person: Equatable {
    var name: String
    var age: String
    
    static func equality(lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

Person.equality(lhs: Person.init(name: "aa", age: "aa"), rhs: Person.init(name: "ss", age: "aa"))


