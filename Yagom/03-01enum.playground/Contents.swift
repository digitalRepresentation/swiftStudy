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
//
}

print("Fruit.peach.rawValue == \(Fruit.peach.rawValue)")
