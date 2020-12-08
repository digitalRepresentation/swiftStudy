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

result = calculate(a: 10, b: 10) { (left: Int, right: Int) -> Int in
    return left + right
}

print(result)

//MARK: - 変換タイプ省略
// calculate関数のmethodパラメーターは
// Intタイプを変換タイプする事実をコンパイラーも分かるため
// あえてクローザーで変換タイプを明示しなくても大丈夫です。
// 代わりに in キーワードは省略できます。

result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) in
    return left + right
})

print(result)

// Trailing Closerと一緒に使用ができます。
result = calculate(a:10, b:10) { (left: Int, right: Int) in
    return left + right
}

//　MARK: - 短縮パラメーター
// Closerのパラメーターの名前があえて不必要であれば短縮パラメーターを活用できます。
//　短縮パラメーターはクローザーのパラメーター順番の通りに $0, $1...のように表現できます。

result = calculate(a: 10, b: 10, method: {
    return $0 + $1
})

print(result)

result = calculate(a: 10, b: 10) {
    return $0 + $1
}

print(result)

// 完結に一つのぎょうで表現ができます。
result = calculate(a: 10, b: 10) { $0 + $1 }

print(result)

// 縮約しないクローザー文法と縮約しない後の文法
result = calculate(a: 10, b: 10, method: { (left: Int, right: Int) -> Int in
    return left + right
})

result = calculate(a: 10, b: 10) { $0 + $1 }

print(result)
