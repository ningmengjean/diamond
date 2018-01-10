//Solution goes in Sources
import Foundation

class Diamond {
    static let array = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    static func makeDiamond(letter: String) -> [String] {
        var firstArray = [String]()
        if letter == "A" {
            return ["A"]
        } else {
            let idx = Int(array.index(of: letter)!)
            let subStr = Array(repeatElement(" ", count: idx)).joined()
            firstArray.append(subStr + "A" + subStr)
            var changeIdx = idx - 1
            var index = 1
            var midArray = [String]()
            for i in array[1...idx] {
                let subStr2 = Array(repeatElement(" ", count: changeIdx)).joined()
                let midSubStr = Array(repeatElement(" ", count: index)).joined()
                midArray.append(subStr2 + i + midSubStr + i + subStr2)
                index += 2
                changeIdx -= 1
            }
            firstArray.append(contentsOf: midArray)
            let reserveArray = firstArray.reversed().dropFirst()
            firstArray.append(contentsOf: reserveArray)
            return firstArray
        }
    }
}


