//: [Previous](@previous)

import Foundation
var x = 5
func increment() -> Int {
    defer {
        x += 1
            
    }
    return x
}
x = increment()
//x = 5
let result = increment()
print(x, result, x)

// x = 6
// x = 7
// result = 7
