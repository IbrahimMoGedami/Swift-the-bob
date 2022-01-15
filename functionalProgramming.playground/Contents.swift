import UIKit
/// https://medium.com/@abhimuralidharan/higher-order-functions-in-swift-filter-map-reduce-flatmap-1837646a63e8
func summution(elements :[Int])->Int{
    var sum = 0
    for element in elements{
        sum += element
    }
    return sum
}

print("Sum : \(summution(elements: [1,2,3,4,5]))")

//: Filter Func

//print(Array(0...100).filter {
//    $0 % 2 == 0
//})


func genericFilter<T>(array:[T],operation:(T)->Bool)->[T]{
    var result : [T] = []
    for element in array{
        if operation(element){
            result.append(element)
        }
    }
    return result
}
//print(genericFilter(array: Array(1...100)) {
//    $0 > 50 && $0 % 2 == 0
//})

//: Map Func
/// 1. Map on set:
var numbers = [1,2,3,4,5]
var result : [Int] = []
for i in numbers{
    result.append(i*i)
}
print(result) 
//print(numbers.enumerated().map{(index , element) in
//    return "\(index):\(element)"
//})
print(numbers.enumerated().map{ "\($0):\($1)" })


/// 2. Map on Dictionary:
let bookAmount = ["harrypotter":100.0, "junglebook":100.0]
print(bookAmount.map { (key , value) in
    //    return value
    //    return key.self
    return key.capitalized
})

/// Generic Map
func genericMap <T> (_ items : [T] , _ operation : (T) -> T)-> [T] {
    var result : [T] = []
    for i in items{
        result.append(operation(i))
    }
    return result
}

func lowercase(enteredString : String) -> String{
    return enteredString.lowercased()
}
let names = ["EBRAHIM","EBRAHIM","EBRAHIM","EBRAHIM"]
print(genericMap(names, { (name) -> String in
    name.lowercased()
}))
print(genericMap(names, lowercase))
print(genericMap(names, {$0.lowercased()}))

func genericeMap<T,U>(_ itemes : [T] ,_ operation : (T) -> U)-> [U]{
    var result : [U] = []
    for i in itemes{
        result.append(operation(i))
    }
    return result
}
func convertToString(num : Int) -> String {
    return "String Number : \(String(num))"
}
let arrOfNumbers = [1,2,3,4,5,6]
print(genericeMap(numbers) { (num) -> String in
    return "The number is : \(String(num))"
})
print(genericeMap(numbers, convertToString(num:)))
print(genericeMap(numbers, {String($0)}))

extension Array{
    func myMap<U>(_ operation : (Element)-> U) -> [U] {
        var result : [U] = []
        for i in self{
            result.append(operation(i))
        }
        return result
    }
}
print(Array(1...3).myMap{$0 * 2})



//: Reduce Func

/*
 Declaration as in apple docs:
 func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Element) throws -> Result) rethrows -> Result
 */

let sum = Array(1...100).reduce(5){$0 + $1}
print(sum)

func myReduce<T>(_ seed : T , numbers : [T] , operation : (T,T) -> T){
    var current = seed
    for i in numbers{
        current = operation(current , i)
    }
    print(current)
}

myReduce(5, numbers: Array(1...100), operation: { $0 + $1})
myReduce(5, numbers: Array(1...100), operation: { min($0, $1)})


let pairs = [[1,4],[1,3],[2,6]]
let pairsResult = pairs.map { $0[0]+$0[1]}
pairsResult

let group = [[1,4],[1,2,6,3],[2,6]]
let groupResult = group.map({ group -> Int in
    var sum = 0
    for i in group{
        sum += i
    }
    return sum
})
groupResult

let testArr = [1,4,1,2,6,3,2,6,34]
let useCompactmap = [1,nil,4,1,2,6,3,2,6]
let useCompactmapResult = useCompactmap.compactMap({$0})
useCompactmapResult
let useFilterResult = testArr.filter {
    return $0 % 2 == 0
}
useFilterResult
