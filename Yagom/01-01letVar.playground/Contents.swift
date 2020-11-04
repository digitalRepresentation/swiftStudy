import Swift

//定数 = let
//変数 = var
let constant: String = "後で変更が不可能な文字列"
var variable: String = "後で変更が可能な文字列"

variable = "変数はこういう風に値が変更できるが"
//constant = "定数は変更ができない"

//定数は宣言した上で、値を入れると最初のみ適応される。
let sum: Int
let inputA: Int = 100
let inputB: Int = 200

sum = inputA + inputB

//sum = 1

var nickName:String

nickName = "金ジニョン"
nickName = "KimJinYoung"
