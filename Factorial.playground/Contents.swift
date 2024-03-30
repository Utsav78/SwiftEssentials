import UIKit

func factorial(number : Int) -> Int {
    var result = 1
    for i in stride(from: number, to: 1, by: 1) {
        result = result * i
        print(i)
    }
    return result
}

var result = factorial(number: 5)
print(result)
