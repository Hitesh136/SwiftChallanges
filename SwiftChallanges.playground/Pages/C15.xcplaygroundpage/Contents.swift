//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

class Cred {
    var authToken: String
    
    init(token: String) {
        self.authToken = token
    }
}

class Demo {
    var auth: String = "123"
    lazy var credObject: Cred = {
        return Cred(token: auth)
    }()
}

var demo = Demo()
demo.credObject.authToken

demo.auth = "567"
demo.credObject.authToken
