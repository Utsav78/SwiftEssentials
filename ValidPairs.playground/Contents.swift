/*  Given a function func getValidPairs(pairs: [Int], addingTo value: Int) -> [[Int, Int]]. Find the pairs in the given array that will add up to the given value. Eg. if the array is [1,2,3,4] and the value is 5, the resulting pairs should be [[1,4], [2,3]] which adds up to 5. Return empty for no matches and the numbers should not be duplicated in pairs.
 */

import UIKit

func getValidPairs(pairs: [Int], addingTo value: Int) -> [[Int]] {
    
    var result = [[Int]] ()
    
    for i in 0..<pairs.count {
        
        for j in i+1..<pairs.count {
            
            if pairs[i]+pairs[j] == value {
                result.append([pairs[i],pairs[j]])
            }
            
        }
        
    }
    
    return result
    
}
print(getValidPairs(pairs: [1,2,3,4,5], addingTo: 5))



enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

var nothing = ASCIIControlCharacter.tab.rawValue
