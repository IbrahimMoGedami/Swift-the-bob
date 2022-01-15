import UIKit
//:Delegate RetainCycle (DRC)
//: Problem :- why delegate should be weak var

/*
 explain what are strong and weak references. When declaring a variable we define if it is strong or weak. Variables are strong by default :-
 
 ->Strong variables increase the reference count. For instance, if an object has a reference count of 2 and is assigned to a new strong variable, its reference count increases to 3.
 ->Weak variables do not increase the reference count. If an object with a reference count of 2 is assigned to a new weak variable, its reference count will still be 2.
 */

struct Example {
    var strongView = UIView()
    weak var weakView = UIView()
}


//MARK:- Retain Cycle
//: Solution
//:1.using Delegate
///https://medium.com/mackmobile/avoiding-retain-cycles-in-swift-7b08d50fe3ef
protocol ListViewControllerDelegate : class {
    func configure(with list : [Any])
}

class ListViewController : UIViewController {
    
    weak var delegate : ListViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

protocol SendDelegate{ }

class SendingVC{
    
    var delegate : SendDelegate?
    
    deinit {
        print("Delegate run out")
    }
}

class ReceiverVC : SendDelegate{
    
    lazy var sendingVC : SendingVC = {
        let vc = SendingVC()
        vc.delegate = self
        return vc
    }()
    
    deinit {
        print("Delegate run out")
    }
}

let vc2 = ReceiverVC()

var receivingVC : ReceiverVC? = ReceiverVC()
receivingVC = nil

//:2.using Struct
///ex:1
/*
 You have probably seen a model in which an entity A has multiple instances of an entity B and each B entity is associated with an A entity. For example, a book can have many pages and every page belongs to a book
 
 Can you see that the book has a strong reference to its pages and the page has a strong reference to the book? Guess what happens next. That’s right, a memory leak.
 A memory leak occurs when a content remains in memory even after its lifecycle has ended.
 In this case, the memory leak is caused by two strong variables that address each other. This problem is known as the retain cycle problem.
 **/

class Book {
    private var pages = [Page]()
    
    func add(_ page : Page) {
        pages.append(page)
    }
}

class Page {
    private var book : Book
    
    required init(book : Book) {
        self.book = book
    }
}

let book = Book()
let page = Page(book: book)
book.add(page)

   /// solution 👇
struct MyBook {
    private var pages = [BookPage]()
    
    mutating func add(_ page : BookPage) {
        pages.append(page)
    }
}

struct BookPage {
    private var book : MyBook
    
    init(book : MyBook) {
        self.book = book
    }
}

var myBook = MyBook()
let bookPage = BookPage(book: myBook)
myBook.add(bookPage)

//:3.using Classes
///We can also keep using classes, but using a weak variable:

class SolvedBook {
    private var pages = [SolvedPage]()
    
    func add(_ page : SolvedPage) {
        pages.append(page)
    }
}

class SolvedPage {
    private weak var book : SolvedBook?
    
    required init(book : SolvedBook) {
        self.book = book
    }
}

let solvedBook = SolvedBook()
let solvedPage = SolvedPage(book: solvedBook)
solvedBook.add(solvedPage)

//:4.using Closure
class Examplee {

    private var counter = 0
    
    private var closure : (() -> ()) = { }
    
    init() {
        closure = {
            self.counter += 1
            print("Counter : \(self.counter)")
        }
    }
    
    func foo() {
        closure()
    }
    
}
Examplee().foo()

let a: Decimal = 4
let b: Decimal = 3.14
let c = a - b
print(c)





