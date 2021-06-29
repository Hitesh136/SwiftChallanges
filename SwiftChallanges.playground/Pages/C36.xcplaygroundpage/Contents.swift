//: [Previous](@previous)

import Foundation
 
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




