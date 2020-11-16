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

if let name2: String = myName2 {
    printName(name2)
} else {
    print("myName == nil")
}

// name定数はif-let 構文の中のみ使用可能
// 定数使用範囲ではなきため、Comfileエラー発生
//printName(name)

var myName3: String? = "yagom"
var yourName: String?

if let name3 = myName3, let friend = yourName {
    print("\(name3) and \(friend)")
}
// yourNameがnilなので実行できません。

yourName = "hana"

if let name3 = myName3, let friend = yourName {
   print("\(name3) and \(friend)")
}

//2.ForceUnwrapping : 強制抽出

func printName2(_ name4: String) {
    print(name4)
}

var myName4: String? = "yagom"

printName(myName4!)

myName = nil

print(myName!)
// 強制抽出する際に値がないのでrunTimeエラーが発生

var yourName2: String! = nil

printName2(yourName2)
// nilの値が伝達になるのでruntimeエラーが発生
