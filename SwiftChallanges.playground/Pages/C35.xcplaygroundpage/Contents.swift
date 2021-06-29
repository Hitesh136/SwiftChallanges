//: [Previous](@previous)

import Foundation

struct CGSize {
    var width: Float = 0
    var height: Float = 0
}

extension CGSize {
    mutating func scale(by f: Float) {
        width *= f
        height *= f
    }
}

let s = CGSize(width: 100, height: 100)
s.scale(by: 2)
s.scale(by: 2)
s.width += 100
