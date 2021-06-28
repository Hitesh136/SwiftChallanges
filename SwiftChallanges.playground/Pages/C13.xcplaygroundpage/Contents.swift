//: [Previous](@previous)

import Foundation

var closureArray: [() -> ()] = []
var i = 0
for _ in 1...5 {
    closureArray.append {
        print(i)
    }
    i += 1
}

//i = 6

closureArray[0]()
closureArray[3]()

