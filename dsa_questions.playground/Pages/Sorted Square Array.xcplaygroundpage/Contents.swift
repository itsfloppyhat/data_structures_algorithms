//: [Previous](@previous)
/*
 Write a function that takew in a non-empty array of integers that are sorted in ascending order and returns a new array of the same length with the squares of the original integers also sorted in ascending order
 */
import Foundation

 func sortedSquaredArray(_ array: [Int]) -> [Int] {
    array.map {$0*$0}.sorted()
  }
sortedSquaredArray([1,2,3,4,5,6,7,8,9]) //[1, 4, 9, 16, 25, 36, 49, 64, 81]
sortedSquaredArray([-2,-1]) // [1,4]
