//: [Previous](@previous)

import Foundation
 
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
 
