//: [Previous](@previous)

import Foundation
 
protocol MyProtocol {
   func foo() -> String
   func bar() -> String
}

extension MyProtocol {
   func foo() -> String {
       return "foo"
   }
   func bar() -> String {
       return "bar"
   }

   func baz() -> String {
       return "baz"
   }
}

class ClassB : MyProtocol {
   func foo() -> String {
       return "FOO"
   }
   func bar() -> String {
       return "BAR"
   }
   func baz() -> String {
       return "BAZ"
   }
}
let a2 = ClassB()
a2.baz()

let b2: MyProtocol = ClassB()
b2.baz() 

let b3: MyProtocol = ClassB()
b3.bar()
