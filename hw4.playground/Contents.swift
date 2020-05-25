import UIKit

/*
 Я решил для разнообразия пойти чуток другим путём. Родительским классом будет ts (транспортное средство).
 Наследниками будут классы moto (мотоцикл) и car (машина)
 */

enum engine {
    case started
    case shutOff
}

// enum windows из прошлой домашки тут уже не катит, ибо у мотоцикла нет каких-либо окон.
// Ну тогда сделаем enum lights - включены ли фары (фара)

enum lights {
    case on
    case off
}

class ts {
    var brand: String
    var year: Int
    var engine: engine
    var lights: lights
    
    init(brand: String, year: Int, engine: engine, lights: lights) {
        self.brand = brand
        self.year = year
        self.engine = engine
        self.lights = lights
    }
}

class car: ts {
    var capacity: Int // кто-то может сказать, что это не совсем уникальное свойство, ведь у мотоцикла тоже есть
                      // пассажирское место. Но тут свойство именно _вместимость_, т.е. 4, 5, 7 или 8 пассажиров, условно
    var conditioner: Bool // есть ли в машине кондей. Очевидно, в мотоцикле кондея в принципе быть не может
    
    init(brand: String, year: Int, engine: engine, lights: lights, capacity: Int, conditioner: Bool) {
        self.capacity = capacity
        self.conditioner = conditioner
        super.init(brand: brand, year: year, engine: engine, lights: lights)
    }
    
    func checkLights() {
        if lights == .on {
            print("Фары включены")
        } else {
            print("Фары выключены")
        }
    }
}

class moto: ts {
    var respectLevel: Int
    
    init(brand: String, year: Int, engine: engine, lights: lights, respectLevel: Int) {
        self.respectLevel = respectLevel
        super.init(brand: brand, year: year, engine: engine, lights: lights)
    }
    
    func checkRespect() {
        print("Ваш уровень уважения на таком моте: \(respectLevel)")
    }
}

let opel = car(brand: "Opel", year: 2008, engine: .shutOff, lights: .off, capacity: 8, conditioner: true)
opel.checkLights()
let ktm = moto(brand: "KTM", year: 2017, engine: .started, lights: .on, respectLevel: 12)
ktm.checkRespect()
