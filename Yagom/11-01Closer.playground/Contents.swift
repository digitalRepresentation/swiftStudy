import UIKit

//コードのブロック
//一級市民(first-citizen)
//variable, constanceなどに保存、伝達パラメータに伝達が可能
//function : 名前があるクローザー

//MARK : - 定義

//{ (parameter list) -> 変換タイプ in
//    実行コード
//}

//functionを使うなら
func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 2)

print(sumResult) // 3

//クローザーの使用
var sum: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

sumResult = sum(1, 2)
print(sumResult) // 3

// functionはクローザーの一つなので
// sum変数は関数も割り当てることができます
sum = sumFunction(a:b:)

sumResult = sum(1, 2)
print(sumResult) // 3

//MARK: - 関数の伝達パラメータとしてのクローザー

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) -> Int in
    return a - b
}

let divide: (Int, Int) -> Int
divide = {(a: Int, b: Int) -> Int in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)

print(calculated) // 60

calculated = calculate(a: 50, b: 10, method: substract)

print(calculated) // 40

calculated = calculate(a: 50, b: 10, method: divide)

print(calculated)

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

print(calculated)
