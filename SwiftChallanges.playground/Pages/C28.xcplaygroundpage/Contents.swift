//: [Previous](@previous)

import Foundation

 
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
// Answer is at bootom





































dict["none"] = .some(nil)
print(dict.count, Dicts.count, otherDict.count)
