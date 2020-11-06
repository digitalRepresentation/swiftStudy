
// inheritance 継承

import UIKit

class Person {
    var name: String = ""
    
    func selfIntroduce() {
        print("私は \(name)です。")
    }
    
    // final keywordを使用して新しい宣言を防げます。
    final func sayHello() {
        print("hello")
    }
    
    // static
    static func typeMethod() {
        print("type method - static")
    }
    
    // class
    class func classMethod() {
        print("type method - class")
    }
    
    // final classは再宣言ができません。
    final class func finalCalssMethod() {
        print("type method - final class")
    }
    
    
    
}

class Student: Person {
    // var name: String = ""
    var major: String = ""
    
    override func selfIntroduce() {
        print("私は　\(name)です、専攻は \(major)です。")
    }
    
    override class func classMethod() {
        print("overriden type method - class")
    }
    
    // staticを使用したタイプメソッドは再宣言ができない
    // override static func typeMethod() {}
    
    // final keywordを使用したメソッドはpropertyを再宣言できない
    // override func syaHello() {}
    // override class func finalClassMethod() {}
    
    
}

let yagom: Person = Person()
let hana: Student = Student()

yagom.name = "yagom"
hana.name = "hana"
hana.major = "Swift"
//yagom.major

yagom.selfIntroduce()
hana.selfIntroduce()

Person.classMethod()

Person.typeMethod()

Person.typeMethod()

Person.finalCalssMethod()

Student.classMethod()

Student.typeMethod()

Student.finalCalssMethod()
