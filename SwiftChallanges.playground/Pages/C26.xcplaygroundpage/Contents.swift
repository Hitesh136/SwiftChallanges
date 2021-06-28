//: [Previous](@previous)

import Foundation
import UIKit
 
//var count = 0
var screen = CGRect(x: 0, y:0, width: 320, height: 480) {
    didSet {
        print("Screen changed")
    }
}


screen.origin.x = 30
var screen2 = screen
screen2.size = CGSize(width: 20, height: 20)
screen2.origin.x = 10
screen.origin.x = 40

