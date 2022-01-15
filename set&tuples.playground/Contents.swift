//: A Cocoa based Playground to present user interface

import Foundation
// elimnate duplicated items (sets)
// combine all kinds of types (tuples)
// Array is ageneric type

//MARK:- multiple ways to declare Array
let myArr1 : [Double] = [] //👍
let myArr2 = [Double]()
let myArr3 : Array<Double> = Array()
let myArr4 : Array<Double> = []
let myArr5 = Array([1.0,2.0])
let myArr6 = Array(1...10)
let myArr7 = Array(repeating: "Arr", count: 5)

//MARK:- multiple ways to declare Set
let set1 : Set = [1,2,3,4,5,1,2,3,4,5,1,2,3,4,5]
let set2 : Set<String> = ["Bob","Bob","Bob","Bob"]
let set3 = Set<String>()
let set4 = Set(["Bob","Bob","Bob","Bob"]) //👍
print(set1.sorted{ $0<$1})

//MARK:- Convert Array into Set

let convertedArray = Set(myArr7)
print(convertedArray)

//MARK:- Usage Of Sets
// 1- find unique value
// 2- any game logic

//MARK:- take array of type (Any)
let firstScore = ( name : "Bob" , score : 9)
firstScore.0
print(firstScore.0)

// enumerate() : create tuple
let shoppingArr = ["eggs","fish","banana","watermelon","apple"]
for (index , value) in shoppingArr.enumerated(){
    print("the index of \(value) is \(index)" )
}
