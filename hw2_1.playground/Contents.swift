import UIKit

var nArray = [34, 10, 13, 7, 52, 198, 35211, 9]
for number in nArray{
    if number % 2 == 0 {
        print("\(number) четное число")
    } else {
        print("\(number) нечетное число")
    }
}
