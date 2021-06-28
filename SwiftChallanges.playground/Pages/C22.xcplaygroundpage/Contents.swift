//: [Previous](@previous)

import Foundation
 
protocol DrawingProtocol {
    func render()
}

extension DrawingProtocol {
    func circle() { print("protocol")}
    
    func render() { circle() }
}

class SVG: DrawingProtocol {
    func circle() { print("class") }
}
 
SVG().render()

let c1: DrawingProtocol = SVG()
c1.circle()
