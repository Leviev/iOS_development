import UIKit

let katet1: Double = 7
let katet2: Double = 10
var triangle_area: Double
var hypotenuse: Double
var perimiter: Double

triangle_area = katet1 * katet2 / 2
hypotenuse = sqrt(pow(katet1, 2) + pow(katet2, 2))
perimiter = katet1 + katet2 + hypotenuse
