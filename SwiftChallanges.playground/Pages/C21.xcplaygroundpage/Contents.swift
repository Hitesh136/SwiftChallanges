//: [Previous](@previous)

import Foundation

var count = 0
class AX {
    var BX: (() -> Void)?
    
    func update(@escaping completion: (() -> Void)) {
        BX = completion
        completion()
        BX?()
        count += 1
    }
}

AX().update{ count += 1}
print(count)
