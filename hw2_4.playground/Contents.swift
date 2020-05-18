import UIKit

var array100: Array<Int> = []

for num in 1...100 {
    array100.append(num)
}

array100 = array100.filter {$0 % 2 != 0 && $0 % 3 == 0}

print(array100)
