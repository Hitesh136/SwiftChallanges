//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

enum Foo: RawRepresentable {
    case one
    case two
    case three
    case four
    
    init?(rawValue: Int) {
        self = .one
    }
    
    var rawValue: Int {
        return 1
    }
}

switch Foo.four {
    case .one: print("1")
    case .two: print("2")
    case .three: print("3")
    default: print(">3")
}
