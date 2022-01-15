import Foundation
var str = "Hello, playground"

let gpaMarks = [2.2 , 1.3 , 2.8 , 2.99 , 3.0 , 2.5]
let favoritePeople = ["MySis","MyBro","Eissa","Yahia","Fizo","Gafar","Soda"]
let favoriteNumber = [ 1 , 3 , 2]

func printGpaMarks(arr : [Double]){
    for i in arr{
        print(i)
    }
}

printGpaMarks(arr: gpaMarks)

//MARK:- Generics

func genericFunc<T>(value :  T) {
    print(value)
}
genericFunc(value: "Ebrahim")

// after eidting with Generics

func printGpaMarks<T>(arr : [T]){
    for i in arr{
        print(i)
    }
}
print("printGpaMarksFunc after eidting with Generics:[")
printGpaMarks(arr: gpaMarks);print("]")


//MARK:- Struct Met Generics
// non-Generic code

struct Family {
    
    var members = [String]()
    
    mutating func push(member : String) {
        self.members.append(member)
    }
}

var myFamily = Family()
myFamily.push(member: "IbrahiMoGedami")
print(myFamily.members)

//
struct NumberFamily {
    
    var members = [Int]()
    
    mutating func push(member : Int) {
        members.append(member)
    }
}

// generic code

struct GenericFamily<T> {
    var members = [T]()
    
    mutating func push(member : T) {
        members.append(member)
    }
}

// generic initialization
//T implicite definition
var myFamilyMember = GenericFamily(members: [1,2,3])
print(myFamily.members)

//T explicite definition
var genericFamily = GenericFamily<Int>()
//genericFamily.push(member: 0)

for i in 1...6{
    genericFamily.push(member: i)
}
print(genericFamily.members)

//MARK:- Generics Extension

extension GenericFamily{
    
    var firstEelement : T?{
        if members.isEmpty{
            return nil
        }else{
            return members[0]
        }
    }
}

print(genericFamily.firstEelement!)

//MARK:- Type Constraints
class Lol{}
class EbrahimLol: Lol {}
let ex = Lol()
func addLolClass<T:Lol>(arr:[T]){
    for i in arr {
        print(i)
    }
}
addLolClass(arr: [ex , ex])
// OR
//addLolClass(arr: [EbrahimLol() , EbrahimLol()])

//MARK:- NEW
















