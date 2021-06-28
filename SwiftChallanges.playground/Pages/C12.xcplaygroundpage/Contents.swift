//: [Previous](@previous)

import Foundation

class Fruti {
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

let fruit = Fruti()
print(fruit.name)
