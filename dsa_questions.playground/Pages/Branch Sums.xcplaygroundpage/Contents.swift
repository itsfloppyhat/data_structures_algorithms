class Program {
  class BST {
    var value: Int
    var left: BST?
    var right: BST?

    init(value: Int) {
      self.value = value
    }
  }

  func branchSums(root: BST) -> [Int] {
    var arr: [Int] = []
    branchSumsHelper(root, &arr, 0)
    return arr
  }
  func branchSumsHelper(_ root: BST, _ arr: inout [Int], _ total: Int) {
    let newTotal = root.value + total
    if root.left == nil && root.right == nil {
      arr.append(newTotal)
    }
    if let left = root.left {
      branchSumsHelper(left, &arr, newTotal)
    }
    if let right = root.right {
      branchSumsHelper(right, &arr, newTotal)
    }
    }
  }
