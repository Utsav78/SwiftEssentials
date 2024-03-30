import UIKit

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String {
        get {
            return self
        }
        set {
            self = newValue
        }
    }
    
}

var kiran = Person(fullName: "Kiran")
kiran.fullName = "Kiran Karki"
print(kiran.fullName)
