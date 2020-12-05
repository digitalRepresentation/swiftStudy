import UIKit

/*
　Trailing Closer
 returnタイプ
 
 
 */


func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var result: Int

//MARK: - Trailing Closer
//Closerが関数の最後のパラメーターなら
//最後のパラメーター名前を総略した後
//関数の小括弧の外部にCloserを実装できる

result = calculate(a: 40, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}
