//: [Previous](@previous)

import Foundation
 

struct XA {
    static var xa = "Advanced"
    var xb: String {
        didSet {
            XA.xa = oldValue
        }
    }
}

var objXA = XA(xb: "Turing")
print(XA.xa)
objXA.xb = "Swift"
print(XA.xa)
let objXB = XA(xb: "Quiz")
print(XA.xa)
