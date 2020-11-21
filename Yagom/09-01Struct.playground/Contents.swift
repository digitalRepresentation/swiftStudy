import UIKit

//MARK:定義

//struct 名前{
//実装部
//}


//Mark：プロパティーおよびメソッド
struct Sample {
    var mutableProperty: Int = 100 //　可変プロパティー
    let immutableProperty: Int = 100 // 不変プロパティー
    
    static var typeProperty: Int = 100 // タイププロパティ

    //インスタントメソッド
    func instanceMethod() {
        print("instance method")
    }
    
    //タイプメソッド
    static func typeMethod() {
        print("type method")
    }

}

//MARK:構造体使用

//可変インスタント
var mutable: Sample = Sample()

//mutable.mutableProperty = 200
//mutable.immutableProperty = 200

//不変インスタント
let immutable: Sample = Sample()
//immutable.mutableProperty = 200
//immutable.immutableProperty = 200

//タイププロパティーおよびメソッド
Sample.typeProperty = 300
Sample.typeMethod() // タイプメソッド

//mutable.typeProperty = 400
//mutable.typeMethod()

//MARK: - 学生構造体

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce() {
        print("学生です")
    }
    
    func selfIntroduce() {
        print("私は)
    }
}
