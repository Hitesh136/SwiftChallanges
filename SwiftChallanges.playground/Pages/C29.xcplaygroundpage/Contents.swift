//: [Previous](@previous)

import Foundation


func check(a: () -> ()) {
    func a() {
        print("Turing")
    }
    a()
}

func addition(y a: () -> ()) {
    func y() {
        print("Quiz")
    }
    
    y()
}

check {
    print("Swift")
}

addition {
    print("Turing")
}
