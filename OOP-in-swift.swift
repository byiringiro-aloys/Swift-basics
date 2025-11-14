import Foundation

// abstraction in swift 

protocol Shape {
    func area()->Double    
}
// fileprivate - file scope 
// private - class scope or file scope
internal class Rectangle: Shape{
    fileprivate var radius: Double
    let PI=3.14
    init(radius: Double){
        self.radius=radius
    }
    func area()->Double{
        return PI*radius*radius
    }
}

var rectangle = Rectangle(radius: 3.5)
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

let home = HomeScreem()
home.viewLoading()

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