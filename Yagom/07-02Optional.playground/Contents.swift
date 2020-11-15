import UIKit

//MARK:Optional抽出方法
//1.Optional Binding
//Optionalの値を持ち出してくる方法の一つ。
//nilチェック+安全に値を抽出する方法

func printName(_ name: String) {
    print(name)
}

var myName:String? = nil

//printName(myName)
//伝達する値のタイプが違うため、Comfileのエラーが発生する

var myName2:String! = nil

if let name: String = myName {
    printName(name)
} else {
    print("myName == nil")
}

// name定数はif-let 構文の中のみ使用可能
// 定数使用範囲ではなきため、Comfileエラー発生
//printName(name)

var myName2: String? = "yagom"
var yourName: String?
//2.ForceUnwrapping : 強制抽出


