//: [Previous](@previous)

import Foundation


var thing = "Turing"
var count = 0
let closure = { [thing] in
    count += 1
    print("i love \(thing) in \(count)")
}
count = 2019
thing = "Swift"
closure()
