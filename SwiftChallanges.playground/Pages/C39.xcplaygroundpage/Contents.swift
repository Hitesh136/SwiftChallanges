//: [Previous](@previous)

import Foundation


let x: String?? = .some(nil)
let outputX = (x ?? "inner") ?? "outer"
let y: String?? = nil
let outputY = (y ?? "inner") ?? "outer"
let string = "\(x) \(y) \(outputX) \(outputY)"
print(string)
