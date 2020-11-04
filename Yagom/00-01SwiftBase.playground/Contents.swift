import UIKit

let age: Int = 10

"こんにちは！私は\(age)歳です。"

"こんにちは！私は\(age + 5)歳です。"

print("こんにちは！私は \(age + 5)歳です。")

print("\n###################\n")

class Person {
    var name: String = "Yagom"
    var age: Int = 10
}

let yagom: Person = Person()

print(yagom)

print("\n###################\n")

dump(yagom)
