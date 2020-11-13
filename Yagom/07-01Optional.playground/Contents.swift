import UIKit

//MARK - Optional
//値があるかもないかも

let optionalConstant: Int? = nil

//let someConstant: Int = nil

//nilの可能性を明示に表現
//nil可能性をドキュメント化しなくてもコードだけで表現ができる
//ドキュメント／コメント作成時間節約
//伝達もらった値がOptionalではなければnilチェックをしなくても安心して使用
//効率的なコーディング
//例外状況を再消化する安全なコーディン

// someOptionalParam can be nil
func someFunction(someOptionalParam: Int?) {
    //...
}

// someParam must not be nil
func someFunction(someParam: Int) {
    //...
}

someFunction(someOptionalParam: nil)
//someFunction(someParam: nil)

enum Optional<Wrapped> : ExpressibleByNilLiteral {
    init(nilLiteral: ()) {
        <#code#>
    }
    
    case none
    case some(Wrapped)
}

let optionalValue: Optional<Int> = nil
let optionalValue2: Int? = nil

//liplicitly Unwrapped Optional
//暗黙的に抽出オプショナル

//var optionalValue: Int! = 100
//
//switch optionalValue {
//case .none:
//    print("This Optional variable is nil")
//
//}
