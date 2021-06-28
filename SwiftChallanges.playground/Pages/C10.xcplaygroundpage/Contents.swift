//: [Previous](@previous)

import Foundation


let years = [15, 2, 67, 4, 5]
let sum = years.filter({ $0 < 10 }).map({ $0 * 2 }).reduce(5, +)
print(sum)
