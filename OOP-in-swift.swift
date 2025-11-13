import Foundation

// abstraction in swift 

protocol Shape {
    func area()->Double    
}

class Rectangle: Shape{
    var radius: Double
    let PI=22/7
    init(radius: Double){
        self.radius=radius
    }
    func area()->Double{
        return PI*radius*radius
    }
}

var rectangle = Rectangle(3.5)
print(rectangle.area())