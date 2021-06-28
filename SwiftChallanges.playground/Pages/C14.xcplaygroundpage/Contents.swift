//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
 
class Q2 {
    var name: String = "abc"
    var value: Int = 2
    
    lazy var myLazyVar: Int = { [self] in
        return self.value * 2
    }()
    
    deinit {
        print("Q@ deinitialized")
        // Will this line call??????????
    }
}

var q2Obj: Q2? = Q2()
q2Obj?.myLazyVar
q2Obj = nil

