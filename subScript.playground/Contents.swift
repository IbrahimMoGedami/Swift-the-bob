import Cocoa
import Foundation

//MARK:- Subscribt Usage
// - get the number of rows in table/collection
// - anything has to do with pair and value


struct WeakDays{
    
    var days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    
    subscript(index : Int) -> String {
        return days[index]
    }
    
}

let myDays = WeakDays()
print(myDays[0]) // in subscript ... but, in function -> myDays(0)


// Dictionary Types

struct HealthyInfo{
    var info = ["height" : 179 , "body fat" : 20 , "weight" : 90]
    subscript(key : String)-> Int{
        if let newKey = info[key]{
            return ((newKey))
        }else{
            return 0
        }
    }
}

let ebrahimInfo = HealthyInfo()
let heightInfo = ebrahimInfo["Height"]
let realHeight = ebrahimInfo["height"]
print(realHeight)




















