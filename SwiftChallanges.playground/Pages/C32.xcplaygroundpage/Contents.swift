//: [Previous](@previous)

import Foundation

class Count {
    var counter: Int
    init(counter: Int) {
        print("Init \(counter)")
        self.counter = counter
    }
    
    deinit {
        print("deinit \(counter)")
    }
}

func counter() -> (Int) -> Count {
    var count: Count? = Count(counter: 0)
    func add(_ x: Int) -> Count {
        count?.counter += x + 1
        return count!
    }
    return add
}

let f = counter()
f(3)
let g = counter()
g(2)
let r = f(4)
print("r is \(r.counter)")

// Is deinit call?
