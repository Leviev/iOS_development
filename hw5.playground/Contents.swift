import UIKit

enum engine {
    case started
    case shutOff
}

enum lights {
    case on
    case off
}

enum sexyEnough {
    case yes
    case no
}

enum spareWheel { // запаска у нас полноценная в машине или докатка
    case full
    case dokatka // не знаю как по-английски будет "докатка"
}

protocol ts {
    var brand: String {get}
    var year: Int {get}
    var engine: engine {get set}
    var lights: lights {get set}
}
extension ts {
    mutating func turnOnOffEngine(engine: engine) {
        self.engine = engine
    }
    
    mutating func lightsOnOff(lights: lights) {
        self.lights = lights
    }
}

class basicTs: ts {
    var brand: String
    var year: Int
    var engine: engine = .shutOff
    var lights: lights = .off
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
}

class car: basicTs, CustomStringConvertible {
    var spareWheel: spareWheel = .dokatka
    var description: String{
        return "У машины марки \(brand) запасное колесо: \(spareWheel)"
    }
}

class moto: basicTs, CustomStringConvertible {
    var sexyEnough: sexyEnough = .yes
    var description: String{
        return "Когда у тебя есть мотоцикл \(brand), ты достаточно ли привлекателен: \(sexyEnough)"
    }
}

var opel = car(brand: "Opel", year: 2008)
var ktm = moto(brand: "KTM", year: 2017)

opel.turnOnOffEngine(engine: .started)
ktm.lightsOnOff(lights: .on)

print(ktm)
print(opel)
