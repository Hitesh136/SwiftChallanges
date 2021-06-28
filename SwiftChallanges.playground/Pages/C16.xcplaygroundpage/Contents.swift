//: [Previous](@previous)

import Foundation
 
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
