import Cocoa

var str = "Hello, playground"

class GrandFather{

    var name : String {
        return "GrandFatherName : AbdElghani"
    }
    func description(){
        print("AbdElghani Mo Gedami")
    }
}

class Father : GrandFather{
    override var name: String{
        //return "FatherName : Mo "
        return super.name
    }
}
print(Father().name)
