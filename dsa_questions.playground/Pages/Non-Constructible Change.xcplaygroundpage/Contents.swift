//: [Previous](@previous)

import Foundation

func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    coins.sort()
    var sum = 0
    for coin in coins {
      if coin > sum + 1 {return sum + 1}
      sum += coin
    }
    return sum + 1
}

var coins = [5, 7, 1, 1, 2, 3, 22]
nonConstructibleChange(&coins)//20
