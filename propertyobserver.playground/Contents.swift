import Cocoa

var str = "Hello, playground"
//MARK:- Note ==
// willSet is called just before the value is stored
// didSet is called immediately after the value has been stored

var grade = 80 {
    willSet(newGrade){
        print("About changing in grade value -> newGrade : \(newGrade)")
    }didSet(oldGrade){
        print("About grade old value : \(oldGrade) , now you have \(grade)")
    
        if grade >= oldGrade {
            print("Added \(grade - oldGrade) mark")
        }
    }
}
grade = 100
grade = 100
grade = 80

//MARK:- IN Application :-

var userIsLoggedin = false{
    willSet(newValue){
        print("the User is tried something")
    }
    didSet{
        if userIsLoggedin{
            print("the user has switched from '\(oldValue)' TO '\(userIsLoggedin)'")
            // change background color
            // popup
            // animation
        }
    }
}
userIsLoggedin = true
