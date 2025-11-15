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