//: [Previous](@previous)

import Foundation
 
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
