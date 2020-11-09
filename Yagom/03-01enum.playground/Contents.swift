import UIKit

// enumは大文字キャメルケースで使用します。
//　各々のCaseは小文字キャメルケースに定義します。
// 各々のCaseはそのものが固有な値です。

//enum 名前 {
//    case 名前１
//    case 名前2
//    case 名前3, 名前4,　名前5
//    ：：：
//}

//MARK: 列挙型

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.mon
day = .sun

print(day)

switch day {
case .mon, .tue, .wed, .thu:
    print("平日です。")
case Weekday.fri:
    print("花金パティー!!")
case .sat, .sun:
    print("楽しい週末!!")
}


//MARK: - 原始値
//C 言語の enumみたいに定数の値を持つのができます。。
//rawValueを使用すれば良いです。
//case別に各々の値を持つべきです。

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case peach
// case mango = 0
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")

//正数タイプだけではなく、Hashableプロトコルを従う全てのタイプが原始値のタイプに師弟されることもできます。

enum School: String {
    case elementary = "小学校"
    case middle = "中学校"
    case high = "高校"
    case university
}

print("School.middle.rawVale == \(School.middle.rawValue)")

print("School.university.rawValue == \(School.university.rawValue)")


// MARK:原始値を通して初期化

// rawValueを通して初期化ができます。
// rawValueがcaseに該当されない場合があるので
// rawValueを通して初期化したインスタンスはオプショナルタイプです。

//let apple: Fruit = Fruit(rawValue: 0)
let apple: Fruit? = Fruit(rawValue: 0)

if let orange: Fruit = Fruit(rawValue: 5) {
    print("rawValue 5に該当するケースは \(orange)です")
} else {
    print("rawValue 5に該当するケースがありません")
}

// MARK: メソッド
