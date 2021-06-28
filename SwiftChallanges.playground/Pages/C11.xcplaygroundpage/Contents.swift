//: [Previous](@previous)

import Foundation

//extension Int {
//    convenience init(n1: int, n2: Int) {
//        self.init(n1 + n2)
//    }
//}

class Foo {
    var name: String
    init(someName: String) {
        self.name = someName
    }
    convenience init(name: String) {
        self.init(someName: "ssss")
    }
}

class SubFoo: Foo {
    var subName: String
    override init(someName: String) {
        self.subName = someName
        super.init(someName: someName)
    }
    
//    override convenience init(name: String) {
//        self.init(someName: "ssss")
//    }
}

extension Foo {


    init() {
        self.name = ""
    }
//    convenience init(name: String) {
//        self.init(someName: "ssss")
//    }
}

print("ss")
