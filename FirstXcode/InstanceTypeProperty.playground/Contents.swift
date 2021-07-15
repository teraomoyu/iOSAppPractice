import UIKit

class Dog{
    var name = "" //インスタンスのプロパティ
    static var breed = ""　// 型プロパティ
}
let pochi = Dog()
pochi.name = "Pochi"
print(pochi.name)

Dog.breed = "Akitaken"
Dog.breed
