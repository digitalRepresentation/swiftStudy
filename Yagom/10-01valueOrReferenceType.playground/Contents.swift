import UIKit

//MARK:- Class vs Struct/Enum

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("first struct instance property : \(firstStructInstance.property)") // 1
print("second struct instance property : \(secondStructInstance.property)") // 2

let firstClassReference = ReferenceType()
var secondClassReference = firstClassReference
secondClassReference.property = 2

print("first class reference property : \(firstClassReference.property) ") // 2
print("second struct reference property : \(secondClassReference.property)") // 2


//struct例文
struct SomeStruct {
    var someProperty: String = "Property"
}

var someStructInstance: SomeStruct = SomeStruct()

func someFunction(structInstance: SomeStruct) {
    var localVar: SomeStruct = structInstance
    localVar.someProperty = "ABC"
}

someFunction(structInstance: someStructInstance)
print(someStructInstance.someProperty) // property



//class例文
class SomeClass {
    var someProperty: String = "Property"
}

var someClassInstance: SomeClass = SomeClass()

func someFunction2(classInstance: SomeClass) {
    var localVar: SomeClass = classInstance
    localVar.someProperty = "ABC"
}

someFunction2(classInstance: someClassInstance)
print(someClassInstance.someProperty) // property
