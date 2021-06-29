//: [Previous](@previous)

import Foundation
 
class A {
    var b: B
    init(b: B) {
        self.b = b
    }
    
    deinit {
        print("A")
    }
}

class B {
    weak var a: A?
    deinit {
        print("B")
    }
}

var b: B? = B()
var a: A? = A(b: b!)
b?.a = a

//Case 1
//b = nil

//Case 2
//a = nil

//Case 3
b = nil
a = nil
    

