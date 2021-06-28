//: [Previous](@previous)

import Foundation

class PersonalComputer {
    var system: String
    var price: Double
    init(system: String, price: Double) {
        self.system = system
        self.price = price
    }
}

class Client {
    var name: String
    var personalComputer: PersonalComputer
    init(name: String, pc: PersonalComputer) {
        self.name = name
        self.personalComputer = pc
    }
}

var PC = PersonalComputer(system: "MocOS", price: 12000)
var rian = Client(name: "Rian", pc: PC)
var daniel = Client(name: "Daniel", pc: PC)
daniel.personalComputer.price -= 1000

print(rian.personalComputer.price)
