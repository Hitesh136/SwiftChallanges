//: [Previous](@previous)

import Foundation
//var motto = "Swift quiz at Turing"
//motto.replacingOccurrences(of: "Swift", with: "Android")
//print(motto)
//

//sc()

//c41()
//c42()
//c43()
//c44()
//c45()
//c46()
 
class Fruit {
    var name = "apple" {
        willSet {
            self.name = "banana"
        }
        didSet {
            self.name = "cherry"
        }
    }
    
    init() {
        self.name = "mango"
    }
}

let fruit = Fruit()
print(fruit.name)
