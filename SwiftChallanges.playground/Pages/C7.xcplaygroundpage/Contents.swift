//: [Previous](@previous)

import Foundation


var x = 5 {
    willSet {
        print("L1")
    }
    
    didSet {
        print("L4")
    }
}

var _x: Int {
    get {
        print("L8")
        return 10
    }
    set {
        print("L7")
    }
}
func increment() -> Int {
    defer {
        print("L2")
        x += 1
    }
    print("L3")
    return _x
}
var y = 5 {
    willSet {
        print("L5")
    }
    
    didSet {
        print("L6")
    }
}
//x = increment()
//let result = increment()
//print(x, result, x)

