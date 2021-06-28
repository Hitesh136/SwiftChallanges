//: [Previous](@previous)

import Foundation


struct XA {
    static var xa = "Advanced"
    var xb: String {
        didSet {
            print("Changed")
            XA.xa = oldValue
        }
    }
    
    init(xb: String) {
        self.xb = xb
    }
}

var xa = XA(xb: "Swift")
xa.xb = "Swift"
