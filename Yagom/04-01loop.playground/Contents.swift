import UIKit

var integers = [1, 2, 3]
let people = ["Yagom": 10, "eric": 15, "mike": 12]

//MARK: - for-in

//for item in items {
//    code
//}

for integer in integers {
    print(integer)
}

// Dictionaryのitemの場合はkeyとvalueに構成になったTupleタイプです。
for (name, age) in people {
    print("\(name): \(age)")
}

//MARK: - while
//while (condtion) {
//
//}

while integers.count > 1 {
    integers.removeLast()
}

//MARK: - repeat

//repeat {
//    code
//} while condition

repeat {
    integers.removeLast()
} while integers.count > 0

