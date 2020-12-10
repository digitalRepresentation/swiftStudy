import UIKit

/* property */

/*
保存プロパティ（stored property）
演算プロパティ（computed property)
インスタントプロパティ（instance property)
タイププロパティ(type property)
 */


//propertyは構造体、クラス、列挙タイプ内部に実装が可能です。
//ただ列挙型内部は演算プロパティのみ実装が可能です。
//演算プロパティは「var」のみ宣言が可能です。

struct Student {
    // instance store property
    var name: String = ""
    var `class`: String = "Swift"
    var japaneseAge: Int = 0
    
    // instance computed property
    var westernAge: Int {
        get {
            return japaneseAge - 1
        }
        set(inputValue) {
            japaneseAge = inputValue + 1
        }
    }
    
    //type stored property
    static var typeDescription: String = "学生"
    
    /*
     // instance method
     func selfIntroduce() {
        print("私は \(self.class)クラスの\(name)です。)
     }
     */
    
    //readonly instance stored property
    var selfIntroduce: String {
        get {
            return "私は \(self.class)クラスの\(name)です。"
        }
    }
    /*
    //type method
    static func selfIntroduce() {
        print("学生タイプです")
    }
    */
    
    //readonly type computed property
    //readonlyはgetを省略が可能です。
    static var selfIntroduction: String {
        return "学生です"
    }
    
        
}

//MARK: - 使用

//Type computed property 使用
print(Student.selfIntroduction)

// create instance
var jinyoung: Student = Student()
jinyoung.japaneseAge = 27

// instance stored property 使用
jinyoung.name = "jinyoung"
print(jinyoung.name)

// instance computed property 使用
print(jinyoung.selfIntroduce)

print("私の韓国の年齢は\(jinyoung.japaneseAge)歳で、日本の年齢は\(jinyoung.westernAge)です。")

//MARK: - 応用

struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket
