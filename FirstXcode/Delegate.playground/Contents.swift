import UIKit

protocol SardineDeligate: class {
    func didEatSardine()
}

class Sardine {
    weak var deligate: SardineDeligate?
    func eaten() {
        print("I was eaten...")
        deligate?.didEatSardine()
    }
}

class Shark: SardineDeligate {
    func eat(){
        let sardine = Sardine()
        sardine.deligate = self
        sardine.eaten()
    }
    func didEatSardine() {
        print("I ate a sardine!")
    }
}

let shark = Shark()
shark.eat()

//詳しくは循環参照
