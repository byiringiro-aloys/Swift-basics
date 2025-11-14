import Foundation

// abstraction in swift 

protocol Shape {
    func area()->Double    
}
// fileprivate - file scope 
// private - class scope or file scope
internal class Circle: Shape{
    fileprivate var radius: Double
    let PI=3.14
    init(radius: Double){
        self.radius=radius
    }
    func area()->Double{
        return PI*radius*radius
    }
}

struct Rectangle {
    var width: Double
    var height: Double
    init(width: Double,height: Double){
        self.width=width
        self.height=height
    }
    // Computed property
    var area: Double {
        return width * height
    }
    
    // Computed property with get & set
    var perimeter: Double {
        get {
            return 2 * (width + height)
        }
        set(newPerimeter) {
            width = newPerimeter / 4
            height = newPerimeter / 4
        }
    }
}
var rect = Rectangle(width:10,height:20)
print(rect.area)
rect.perimeter=29
print(rect.width)
print(rect.height)

var rectangle = Circle(radius: 3.5)
print(rectangle.area())
print(rectangle.radius)

class Animal{
    func speak(){
        fatalError("subclasses must implement this method speak")
    }
}

class Dog: Animal{
    override func speak(){
        print("Mooo!")
    }
}

let dog = Dog()
dog.speak()

open class UIController{
    open func viewLoading(){
        print("Loading...")
    }
}

class HomeScreem: UIController{
    override func viewLoading(){
        print("Homescreen loading...")
    }
}

let home1 = HomeScreem()
home1.viewLoading()

actor BankAccount{
    private var balance: Double

    init(amount balance: Double){
        self.balance=balance
    }

    public func deposit(amount: Double){
        balance+=amount;
    }

    public func withdraw(amount: Double){
        balance -= amount;
    }

    public func getBalance()->Double{
        return balance
    }
}

//concurrency- with async and await

func runOperations() async {
    let darius = BankAccount(amount:100)
    await darius.deposit(amount: 15200.5)
    let bal = await darius.getBalance()
    print("Darius balance: \(bal)")
}

//concurrence - with Task
Task{
    let darius = BankAccount(amount:100)
    await darius.deposit(amount: 15200.5)
    let bal = await darius.getBalance()
    print("Darius balance: \(bal)")
}

enum networkState{
    case loading
    case success(data: String)
    case failure(error: String)
}

func handleNetwork(state: networkState){
    switch state {  
    case .loading:
        print("Loading...")
    case .success(let data):
        print("Success with data: \(data)")
    case .failure(let error):
        print("Failure with error: \(error)")
}
}

let state = networkState.success(data:"Aloys fetched in 2s.")
handleNetwork(state: state)

enum Screen{
    case home(fullNames: String)
    case profile(fullNames: String)
    case about(fullNames: String)
    case settings
}   

func handleNavigation(screen: Screen){
    switch screen {
    case .home(let fullNames):
        print("Welcome \(fullNames) to home page")
    case .profile(let fullNames):
        print("Welcome \(fullNames) to profile section")
    case .about(let fullNames):
        print("Welcome \(fullNames) to about us section")
    case .settings:
        print("Welcome to settings section")
    }
}

let homeSection = Screen.home(fullNames: "Alliance")
handleNavigation(screen: homeSection)

let settingSection = Screen.settings
handleNavigation(screen: settingSection)

var Score: Int = 1{
    willSet(newScore){
        print("The score will change to \(newScore).")
    }

    didSet{
        print("The score changed from \(oldValue) to \(Score)")
    }
}

Score = 10