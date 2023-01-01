//: [Previous](@previous)

/*
 Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum. If any two numbers in the input array sum up to the target sum, the function should return them in an array, in any order. If no two numbers sum up to teh target sum, the function should return an empty array. Note that the target sum has to be obtained by summing two different integers in the array; you can't add a single integer to itself in order to obtain the target sum. You can assume that there will be at most one pair of numbers summing up to the target sum.
 
 
 */

import Foundation

  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    for i in 0..<array.count - 1 {
      let diff = targetSum - array[i]
      for j in i+1..<array.count {
        if array[j] == diff {
          return [array[i], array[j]]
        }
      }
    }
    return []
  }
    var array = [3,5,-4,8,11,1,-1,6]
    twoNumberSum(&array, 10)



