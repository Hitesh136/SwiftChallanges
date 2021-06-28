//: [Previous](@previous)

import Foundation

final class Dog {
    func bark() {
        print("Woof!")
    }
}

class Corg1: Dog {
    override func bark() {
        print("Yip")
    }
}

let mutface = Corgi()
mutface.bark()
