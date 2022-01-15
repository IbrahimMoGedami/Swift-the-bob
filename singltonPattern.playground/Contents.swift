import UIKit

class AccountManager {
    static let sharedInstance = AccountManager()
    var userInfo = (id : 1 , passwd : "1234567")
    
    func network(){}
    
    private init (){
        print("I'm created")
    }
}

//MARK:- Examples :-
// UIApplication , UserDeafults , NSNotifications

//print(AccountManager.sharedInstance.userInfo.passwd)
AccountManager.sharedInstance
AccountManager.sharedInstance

// ViewController One
AccountManager.sharedInstance.userInfo.id

// ViewController Two
AccountManager.sharedInstance.userInfo.id = 2

// ViewController Three
AccountManager.sharedInstance.userInfo.id
