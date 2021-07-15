import UIKit

protocol Fish {
    var color: String{get set}
    func swim()
}

class Shark: Fish{
    var color: String = "Blue"
    func swim() {
        print("Now quickly swimming...")
    }
}

struct Ray: Fish{
    var color: String = "Brown"
    func swim() {
        print("Now slowly swimming...")
    }
}
