import UIKit

protocol Passes { // протокол московских пропусков
    var expired: Bool {get set} // срок действия вашего пропуска истёк, сидите дома
}

class OneDayPass: Passes { // разовые пропуск
    var expired: Bool
    var purpose: String    // цель получения пропуска
    var count: Int
    
    init(purpose: String, expired: Bool) {
        self.purpose = purpose
        self.expired = expired
    }
}

class WorkPass: Passes {
    var company: String   // место работы
    var expired: Bool
    
    init(company: String, expired: Bool) {
        self.company = company
        self.expired = expired
    }
}

struct Stack<P: Passes> {
    private var passes: [P] = []
    
    mutating func push(_ element: P) {
        passes.append(element)
    }
    
    mutating func pop() -> P? {
        return passes.removeLast()
    }
    
    subscript(passes: Int ...) -> Int { // вернёт количество ещё действующих пропусков
        var totalActivePasses = 0
        
        for index in passes where index < self.passes.count {
            if !self.passes[index].expired {
                totalActivePasses += 1
            }
        }
        return totalActivePasses
    }
}

var moscowPasses = Stack<OneDayPass>()
moscowPasses.push(OneDayPass(purpose: "Съездить за пивом", expired: false))
moscowPasses.push(OneDayPass(purpose: "Погулять по парку", expired: false))
moscowPasses.push(OneDayPass(purpose: "Зайти в аптеку", expired: true))
moscowPasses[0,1,2]

let exp: (Passes) -> Bool = { (pass: Passes) -> Bool in // уберем все истекшие пропуска
    return pass.expired
}

let act: (Passes) -> Bool = { (pass: Passes) -> Bool in // уберем все активные пропуска
    return !pass.expired
}

func filter(passes: Stack<OneDayPass>, funct: (Passes) -> Bool) -> Stack<OneDayPass> {
    var tmpPasses = Stack<OneDayPass>()
    for element in passes {
        if !funct(element) {
            tmpPasses.append(element)
        }
    }
}
