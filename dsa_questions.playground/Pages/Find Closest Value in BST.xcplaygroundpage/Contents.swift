class Program {
  class BST {
    var value: Int
    var left: BST?
    var right: BST?

    init(value: Int) {
      self.value = value
      left = nil
      right = nil
    }
  }

  func findClosestValueInBST(tree: BST?, target: Int) -> Int {
    return findClosestValueInBSTHelper(tree, target, tree!.value)
  }
  func findClosestValueInBSTHelper(_ tree: BST?, _ target: Int, _ closest: Int) -> Int {
    if let root = tree {
      let val = root.value
      if val == target {return val}
      let newClosest = abs(target-val) < abs(target-closest) ? val : closest
      if val > target {return findClosestValueInBSTHelper(tree?.left, target, newClosest)}
      if val < target {return findClosestValueInBSTHelper(tree?.right, target, newClosest)}
    }
    else {return closest}
    return -1
  }
}
