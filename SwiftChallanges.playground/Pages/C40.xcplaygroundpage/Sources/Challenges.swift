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

public func c44() {
    let numbers: [String?] = ["1", "two", nil]
    let mapped: [Any] = numbers.compactMap{ $0 }
    let intArray: [Int?] = numbers.compactMap{ Int($0 ?? "0") }
    print(mapped.count + intArray.count)
}

public func c45() {
    var x: Int? = nil
    x? = 10
    var y: Int? = 10
    y? = 5
    var z: Int? = nil
    z = 10
    
    print(x)
}

public func c46() {
    class BaseViewController {
        var view = "" {
            didSet {
                print("Base: \(view)")
            }
        }
    }
    
    class SubVC: BaseViewController {
        override var view: String {
            didSet {
                print("SubVC: \(view)")
            }
        }
    }
    
    let viewController = SubVC()
    viewController.view = "x"
    viewController.view = "y"
}


