import Foundation

var greeting: String = "Hello, playground"

let today: Date = .now

print(today)
print(greeting)

let name:String = "Aloys"
var testaments: String = """
                        😍
                        No one is perfect
                        God is good
                        Jesus saved us
                        😍
                        """

var fruits:[String] = ["Apple","Mango","Banana"]

let dictionary: [Int:String] = [
    1:"The river between",
    2:"Tender memories"
]

fruits.append("Orange")
print(fruits)

print("Good morning \(name)")
print(testaments)

var individualScores:[Float] = [78,24,63,90,95]

var teamScore=0

for score in individualScores{
    if score>50{
        teamScore+=3
    }else{
        teamScore+=1
    }
}

var scoreDecoration = if teamScore>10{
    "🎉"
}else{
    ""
}
print("Team score is",teamScore,scoreDecoration)

var weatherData: String? = "Kigali, Rwanda 75 F"

var dataAvailable = "Welcome"

if let weather = weatherData{
    dataAvailable="Welcome, \(weather)"
}

print(dataAvailable)

let vegetables: String = ""

switch vegetables {
case "dodo":
    print("Perfect vegetable for eating")
    break;
case "celery":
    print("Add some more avocadoes for balanced diet.")
    break;
default:
    print("Not qualified for classification")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

for (type,numbers) in interestingNumbers{
    print(type)
    for number in numbers {
//        print(number)
    }
}

repeat{
    print("Hello world.")
}while 1>2

for i in 1..<6{
    print(i)
}

func greet(_ person: String,on day:Int){
    print("Hello, \(person) on day \(day)")
}

greet("Aloys" ,on: 1)

func calculateStatistics(scores:[Int])->(min:Int, max:Int, sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum=0
    
    for score in scores{
        if(score>max){
            max=score
        }else if(score<min){
            min=score
        }
        sum+=score
    }
    return (min,max,sum)
}

let statistics = calculateStatistics(scores: [23,3,2,5,75]);

print("The sum is " + String(statistics.0))

func makeIncrement()->((Int)->Int){
    func Increment(number: Int)->Int{
        return 1+number
    }
    return Increment
}

let increment = makeIncrement()
print(increment(7))

let Arrays: [Int] = [24,42,25,64,77]

let multiplied = Arrays.map({(number:Int)->Int in
    let result = number * 3
    return result
})

print(multiplied)

//classes and objects
class Shape{
    var numberofSides=0
    //constructor
    init(numberofSides: Int) {
        self.numberofSides = numberofSides
    }
    func shapeDescription()->String{
        return "The number of side of the shape are \(numberofSides)"
    }
}


var rectangle = Shape(numberofSides:4)
//rectangle.numberofSides=4
print(rectangle.shapeDescription())
