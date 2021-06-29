//: [Previous](@previous)

import Foundation
 
enum Foo: RawRepresentable {
    case one
    case two
    
    init?(rawValue: Int) {
        print("ssss")
        self = .one
    }
    
    var rawValue: Int {
        return 1
    }
}

let result = Foo.one == Foo.two
switch Foo.two {
case .one: print("1")
case .two: print("2")
}

print(result)

