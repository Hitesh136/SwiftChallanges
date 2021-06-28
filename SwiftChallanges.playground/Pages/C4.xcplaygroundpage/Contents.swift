//: [Previous](@previous)

import Foundation

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
