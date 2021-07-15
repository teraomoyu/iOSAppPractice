import UIKit

class Dog{
    func bark(){
        print("Bow-wow!")
    }//インスタンスメソッド　インスタンスを設定しないと使えない
    
    static func barkstatic(){
        print("Bow-wow-wow!")
    }//型メソッド　インスタンスなくても使えるs
}

let pochi = Dog()
pochi.bark()

Dog.barkstatic()
