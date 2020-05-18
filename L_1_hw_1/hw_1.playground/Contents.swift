import UIKit

// ax^2 + bx + c = 0 - квадратное уравнение
// Вычисляем дискриминант по формуле d = b^2 - 4 * a * c

let a: Double = 5
let b: Double = 2
let c: Double = 1
var x1, x2: Double

var d = pow(b,2) - 4 * a * c

if (d < 0) {
    print("Дискриминант отрицателен, у уравнения нет корней")
} else if (d == 0) {
    x1 = (-b + sqrt(d)) / (2 * a)
    print(String(x1))
} else { // Дискриминант всё таки больше нуля
    x1 = (-b + sqrt(d)) / (2 * a)
    x2 = (-b - sqrt(d)) / (2 * a)
}
