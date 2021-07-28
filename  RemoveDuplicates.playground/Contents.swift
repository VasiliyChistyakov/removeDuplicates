import UIKit

func removeDuplication(array: inout [Int]) -> Int {
    var last: Int?
    var index: Int = 0
    
    while index < array.count {
        if array[index] == last {
            array.remove(at: index)
        } else {
            last = array[index]
            index += 1
        }
    }
    return array.count
}

var array = [0,0,0,1,1,2,2,3,4,4,4,4,5,5]
removeDuplication(array: &array)
print(array)


// Удалить дубликаты из отсортированного массива
