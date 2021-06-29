//: [Previous](@previous)

import Foundation
 
enum Population: RawRepresentable {
    case one
    case two
    
    init?(rawValue: Int) {
        self = .one
    }
    
    var rawValue: Int {
        switch self {
        case .one:
            return 2
        case .two:
            return 1
        default:
            return 0
        }
    }
}

print(Population.one)

