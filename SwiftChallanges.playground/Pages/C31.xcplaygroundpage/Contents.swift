//: [Previous](@previous)

import Foundation

func counter() -> (Int) -> String {
    var total = 5
    func add(_ x: Int) -> String {
        total += x + 1
        return "\(total)"
    }
    return add
}

let f = counter()
f(3)
let g = counter()
g(2)
let r = f(4)
print(r)
