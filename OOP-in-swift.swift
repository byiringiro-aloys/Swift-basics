import Foundation

// abstraction in swift 

protocol Shape {
    func area()->Double    
}

class Rectangle: Shape{
    var radius: Double
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