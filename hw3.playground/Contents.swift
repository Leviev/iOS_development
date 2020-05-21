import UIKit

enum engine {
    case started
    case shutOff
}
enum windows {
    case opened
    case closed
}

struct vehicle {
    let brand: String
    let year: Int
    var trunk: Int
    var fullTrunk: Int
    
    var engine: engine {
        willSet {
            if newValue == .started {
                print("Двигатель \(brand) запущен")
            } else {
                print("Двигатель \(brand) заглушен")
            }
        }
    }
    
    var windows: windows {
        willSet {
            if newValue == .opened {
                print("Окна \(brand) опущены")
            } else {
                print("Окна \(brand) подняты")
            }
        }
    }
}

var opelAstra = vehicle(brand: "Opel", year: 2008, trunk: 360, fullTrunk: 300, engine: .started, windows: .closed)
var kamaz = vehicle(brand: "Kamaz", year: 2001, trunk: 5000, fullTrunk: 4500, engine: .shutOff, windows: .opened)

opelAstra.engine = .shutOff
kamaz.windows = .closed

print("У меня есть автомобиль \(opelAstra.brand), я купил его в автосалоне в \(opelAstra.year) году.")
