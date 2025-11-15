import Foundation

protocol NotificationDelegate{
    func didSendMessage(_ message: String)
}

class Messenger{
    var delegete: NotificationDelegate?

    func sendMessage(){
        delegete?.didSendMessage("Hello Aloys")
    }
}

class viewController: NotificationDelegate{
    func didSendMessage(_ message: String){
        print("Received message: \(message)")
    }
}

let vc = viewController()

let messenger = Messenger()
messenger.delegete = vc
messenger.sendMessage()

let greet: (String) -> String = { name in
    return "Hello \(name)!"
}

print(greet("Alliance"))

func swapValues<T>(_ a: inout T,_ b: inout T){
    let temp = a
    a=b
    b=temp
}

var x=4
var y=9

swapValues(&x,&y)
print(x,y)