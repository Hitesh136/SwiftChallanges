import Foundation
import UIKit
 
public func c1() {

    func XA(numberX: Int) {
        if numberX % 2 == 0 {
            defer {
                print("XA")
            }
            
            print("XB")
        } else {
            print("XC")
        }
        print("XD")
    }

    XA(numberX: 4)

}

public func c2() {
    /*
    struct IntegralSize {
        var width: Int
        var height: Int
        init(_ size: CGSize) {
            self.width = Int(size.width)
            self.height = Int(size.height)
            
            if size.height == 50 {
                self.height = 25
            }
            
            if size.width == 50 {
                self.width = 25
            }
        }
    }

    let size = IntegralSize(width: 50, height: 50)
    let sizeOfBoard = IntegralSize(CGSize(width: 50, height: 50))
    print(size, sizeOfBoard)
     */

}
public func c3() {

    
    var thing = "Turing"
    var count = 0
    let closure = { [thing] in
        count += 1
        print("i love \(thing) in \(count)")
    }
    count = 2019
    thing = "Swift"
    closure()
}
public func c4() {

    var count = 0
    var book: String = {
        count += 1
        print("Calling")
        return "Advanced Swift \(count)"
    }()

    //func add(_ completion: @autoclosure () -> String) -> Int {
    //    defer { count += 1}
    //    return count
    //
    //}

    //let reuslt = add(book)
    //print(result, count)

    print(book)
    print(book)
    print(book)
}
public func c5() {
    
   var count = 0
   var book: String = {
       count += 1
       return "Advanced Swift \(count)"
   }()

   func add(_ completion: @autoclosure () -> String) -> Int {
       defer { count += 1 }
       return count
   }

   //let result = add {
   //    return book
   //}
   //
   //let cls: () ->  String = {
   //    return book
   //}
   let result = add(book)
   print(result, count)
    
}
public func c6() {

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

}

public func c7() {
    var x = 5
    func increment() -> Int {
        defer {
            x += 1
                
        }
        return x
    }
    x = increment()
    //x = 5
    let result = increment()
    print(x, result, x)

    // x = 6
    // x = 7
    // result = 7

}

public func c8() {

    
    var x = 5 {
        willSet {
            print("L1")
        }
        
        didSet {
            print("L4")
        }
    }

    var _x: Int {
        get {
            print("L8")
            return 10
        }
        set {
            print("L7")
        }
    }
    func increment() -> Int {
        defer {
            print("L2")
            x += 1
        }
        print("L3")
        return _x
    }
    var y = 5 {
        willSet {
            print("L5")
        }
        
        didSet {
            print("L6")
        }
    }
    //x = increment()
    //let result = increment()
    //print(x, result, x)
}

public func c9() {
//    final class Dog {
//        func bark() {
//            print("Woof!")
//        }
//    }
//
//    class Corg1: Dog {
//        override func bark() {
//            print("Yip")
//        }
//    }
//
//    let mutface = Corgi()
//    mutface.bark()

}

public func c10() {

    let years = [15, 2, 67, 4, 5]
    let sum = years.filter({ $0 < 10 }).map({ $0 * 2 }).reduce(5, +)
    print(sum)

}

public func c11() {
    //extension Int {
    //    convenience init(n1: int, n2: Int) {
    //        self.init(n1 + n2)
    //    }
    //}
//    class Foo {
//        var name: String
//        init(someName: String) {
//            self.name = someName
//        }
//        convenience init(name: String) {
//            self.init(someName: "ssss")
//        }
//    }

//    class SubFoo: Foo {
//        var subName: String
//        override init(someName: String) {
//            self.subName = someName
//            super.init(someName: someName)
//        }
//
//    //    override convenience init(name: String) {
//    //        self.init(someName: "ssss")
//    //    }
//    }

//    extension Foo {
//
//
//    //    init() {
//    //        self.name = ""
//    //    }
//    //    convenience init(name: String, ss: Bool) {
//    //        self.init(someName: "ssss")
//    //    }
//    }

//    print("ss")

}

public func c12() {
    class Fruti {
        var name = "apple" {
            willSet {
                self.name = "banana"
            }
            
            didSet {
                self.name = "cherry"
            }
        }
        
        init() {
            self.name = "mango"
        }
    }

    let fruit = Fruti()
    print(fruit.name)
}

public func c13() {

    var closureArray: [() -> ()] = []
    var i = 0
    for _ in 1...5 {
        closureArray.append {
            print(i)
        }
        i += 1
    }

    //i = 6

    closureArray[0]()
    closureArray[3]()
}

public func c14() {
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

}

public func c15() {
//    class Cred {
//        var authToken: String
//
//        init(token: String) {
//            self.authToken = token
//        }
//    }
//
//    class Demo {
//        var auth: String = "123"
//        lazy var credObject: Cred = {
//            return Cred(token: auth)
//        }()
//    }
//
//    var demo = Demo()
//    demo.credObject.authToken
//
//    demo.auth = "567"
//    demo.credObject.authToken

}

public func c16() {
    
   struct Objcio {
       var book: String
       var body: String {
           return book
       }
   }

   var objcio = Objcio(book: "App Architecture")
   var objCopy = objcio
   objcio.book = "Advanced Swift"
   print(objcio.body, objCopy.body)

}

public func c17() {
    
   let x = 15
   var result = 0
   switch x {
   case 1...15:
       result = 1
       fallthrough
   case 2:
       result = 102
   case 5:
       result = 103
   default:
       result = 104
   }


   print(result)
}

public func c18() {

    class PersonalComputer {
        var system: String
        var price: Double
        init(system: String, price: Double) {
            self.system = system
            self.price = price
        }
    }

    class Client {
        var name: String
        var personalComputer: PersonalComputer
        init(name: String, pc: PersonalComputer) {
            self.name = name
            self.personalComputer = pc
        }
    }

    var PC = PersonalComputer(system: "MocOS", price: 12000)
    var rian = Client(name: "Rian", pc: PC)
    var daniel = Client(name: "Daniel", pc: PC)
    daniel.personalComputer.price -= 1000

    print(rian.personalComputer.price)

}

public func c19() {

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
}

public func c20() {
    

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
}

public func c21() {
//    var count = 0
//    class AX {
//        var BX: (() -> Void)?
//
//        func update(@escaping completion: (() -> Void)) {
//            BX = completion
//            completion()
//            BX?()
//            count += 1
//        }
//    }
//
//    AX().update{ count += 1}
//    print(count)

}

public func c22() {
//    protocol DrawingProtocol {
//        func render()
//    }
//
//    extension DrawingProtocol {
//        func circle() { print("protocol")}
//
//        func render() { circle() }
//    }
//
//    class SVG: DrawingProtocol {
//        func circle() { print("class") }
//    }
//
//    SVG().render()
//
//    let c1: DrawingProtocol = SVG()
//    c1.circle()

}

public func c23() {
//    protocol MyProtocol {
//       func foo() -> String
//       func bar() -> String
//    }
//
//    extension MyProtocol {
//       func foo() -> String {
//           return "foo"
//       }
//       func bar() -> String {
//           return "bar"
//       }
//
//       func baz() -> String {
//           return "baz"
//       }
//    }
//
//    class ClassB : MyProtocol {
//       func foo() -> String {
//           return "FOO"
//       }
//       func bar() -> String {
//           return "BAR"
//       }
//       func baz() -> String {
//           return "BAZ"
//       }
//    }
//    let a2 = ClassB()
//    a2.baz()
//
//    let b2: MyProtocol = ClassB()
//    b2.baz()
//
//    let b3: MyProtocol = ClassB()
//    b3.bar()

}

public func c24() {

    for i in stride(from: 1, to: 10, by: 1) {
       print(i)
    }

    print("**************")
    for i in stride(from: 1, through: 10, by: 1) {
       print(i)
    }

}

public func c25() {

//    func square<T>(_ value: T) -> T {
//        return value * value
//    }
//
//    print(square(2))

}

public func c26() {
    //var count = 0
    var screen = CGRect(x: 0, y:0, width: 320, height: 480) {
        didSet {
            print("Screen changed")
        }
    }


    screen.origin.x = 30
    var screen2 = screen
    screen2.size = CGSize(width: 20, height: 20)
    screen2.origin.x = 10
    screen.origin.x = 40
}

public func c27() {
    
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

}

public func c28() {
    var dict: [String: Int?] = [
        "one": 1,
        "two": 2,
        "none": nil
    ]

    var otherDict: [String: Int?] = [
        "one": 1,
        "two": 2,
        "none": nil
    ]

    let Dicts = dict
    dict["two"] = nil
    dict["none"] = nil
    print(dict.count, Dicts.count, otherDict.count)
    // how to insert nil value in dict????

}

public func c29() {
 
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

}

public func c30() {
    enum Population: RawRepresentable {
        case one
        case two
        
        init?(rawValue: Int) {
            self = .one
        }
        
        var rawValue: Int {
            switch self {
            case .one:
                return 2
            case .two:
                return 1
            default:
                return 0
            }
        }
    }

    print(Population.one)


}

public func c31() {
    func counter() -> (Int) -> String {
        var total = 5
        func add(_ x: Int) -> String {
            total += x + 1
            return "\(total)"
        }
        return add
    }

    let f = counter()
    f(3)
    let g = counter()
    g(2)
    let r = f(4)
    print(r)
}


public func c32() {
    
    class Count {
        var counter: Int
        init(counter: Int) {
            print("Init \(counter)")
            self.counter = counter
        }
        
        deinit {
            print("deinit \(counter)")
        }
    }

    func counter() -> (Int) -> Count {
        var count: Count? = Count(counter: 0)
        func add(_ x: Int) -> Count {
            count?.counter += x + 1
            return count!
        }
        return add
    }

    let f = counter()
    f(3)
    let g = counter()
    g(2)
    let r = f(4)
    print("r is \(r.counter)")

    // Is deinit call?

}

public func c33() {
    enum Skill: Int {
        case swiftUI, combine, arket = 3
        static subscript(n: Int) -> Skill? {
            return Skill(rawValue: n)
        }
    }

    let skill = Skill[2]
}

public func c34() {
    let nsString = NSString("Hello")
    let swiftString = String(nsString)
    print(swiftString)

}


public func c35() {
//    struct CGSize {
//        var width: Float = 0
//        var height: Float = 0
//    }
//
//    extension CGSize {
//        mutating func scale(by f: Float) {
//            width *= f
//            height *= f
//        }
//    }
//
//    let s = CGSize(width: 100, height: 100)
//    s.scale(by: 2)
//    s.scale(by: 2)
//    s.width += 100
}

public func c36() {
    
   var code = 200
   let result: Result<Int, Error> = .success(code)
   code = 404
   switch result {
   case .success(code):
       print("Code: \(code)")
   case .failure(_):
       print("failure: 403")
   default:
       print("default: 500")
   }

}

public func c37() {
    class A {
        var b: B
        init(b: B) {
            self.b = b
        }
        
        deinit {
            print("A")
        }
    }

    class B {
        weak var a: A?
        deinit {
            print("B")
        }
    }

    var b: B? = B()
    var a: A? = A(b: b!)
    b?.a = a

    //Case 1
    //b = nil

    //Case 2
    //a = nil

    //Case 3
    b = nil
    a = nil
}

public func c38() {
    
}


public func c39() {
    
}

public func c40() {
    
}
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


