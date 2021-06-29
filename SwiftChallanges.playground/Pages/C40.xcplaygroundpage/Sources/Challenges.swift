import Foundation

public func c41() {
    
    func swapTwoIntegers(a: inout Int, b: inout Int) {
        let tempA = a
        a = b
        b = tempA
    }
    
    var a = 20
    var b = 10
    swapTwoIntegers(a: &a, b: &b)
    print(a)
    print(b)
}

public func c42() {
    func doSomething() {
        defer { print("a") }
        defer { print("b") }
        defer { print("c") }
        print("d")
    }
    doSomething()
}

public func c43() {
    class Startship {
        var type: String = "John"
        var age: Int = 10
    }
    
    var serenity = Startship()
    print(serenity.type, serenity.age)
}

