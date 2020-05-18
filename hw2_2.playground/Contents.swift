import UIKit

var nArray = [34, 10, 13, 7, 52, 198, 35211, 9]

for number in nArray {
    if number % 3 == 0 {
        print("\(number) делится на 3 без остатка")
    } else {
        print("\(number) делится на 3 с остатком")
    }
}
