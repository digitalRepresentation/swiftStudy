import UIKit

//Any - swiftの全てのタイプを表すキーワード
//AnyObject - 全てのクラスタイプを表すプロトコル
//nil - 「なし」を意味するキーワード

//MARK - Any
var someAny: Any = 100
someAny = "どんなタイプもできます"
someAny = 123.12

//let someDouble: Double = someAny

//MARK: - AnyObject

class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

//someAnyObject = 123.12


// MARK: Nil
// someAny = nil
//someAnyObject = nil
