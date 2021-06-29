//: [Previous](@previous)

import Foundation

enum Skill: Int {
    case swiftUI, combine, arket = 3 
    static subscript(n: Int) -> Skill? {
        return Skill(rawValue: n)
    }
}

let skill = Skill[2]

