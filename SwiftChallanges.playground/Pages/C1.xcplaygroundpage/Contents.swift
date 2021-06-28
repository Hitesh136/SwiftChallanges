//: [Previous](@previous)

import Foundation


func XA(numberX: Int) {
    if numberX % 2 == 0 {
        defer {
            print("XA")
        }
        
        print("XB")
    } else {
        print("XC")
    }
    print("XD")
}

XA(numberX: 4)

