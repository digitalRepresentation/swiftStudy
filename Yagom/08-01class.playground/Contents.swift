import UIKit

//MARK: - 定義

//class 名前 {
////    実装
//}

//MARK: PropertyおよびMethod

class Sample {
    var mutableProperty: Int = 100 // 可変Property
    let immutableProperty: Int = 100 // 不変Property
    
    static var typeProperty: Int = 100 // Type Property
    
    //instance method
    func instanceMethod() {
        print("instance method")
    }
    
    //Type Method
    //再定義不可タイプメソッド - static
    static func typeMethod() {
        print("type method - static")
    }
    
    //再定義可能タイプメソッド - class
    class func classMethod() {
        print("type method - class")
    }
}

//MARK: Class使用

var mutableReference: Sample = Sample()

mutableReference.mutableProperty = 200
//mutableReference.immutableProperty = 200

let immutableReference: Sample = Sample()

immutableReference.mutableProperty = 200
//immutableReference.immutableProperty = 200

// Type Property およびMethod
Sample.typeProperty = 300
Sample.typeMethod() // type method

//mutableReference.typeProperty = 400

