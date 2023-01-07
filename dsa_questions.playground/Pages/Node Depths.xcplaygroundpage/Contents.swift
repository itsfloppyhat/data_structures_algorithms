class Program {
  class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?

    init(value: Int) {
      self.value = value
    }
  }

  static func nodeDepths(_ root: BinaryTree?) -> Int {
    var depth = 0
    nodeDepthsHelper(root, &depth, 0)
    return depth
  }
  static func nodeDepthsHelper(_ root: BinaryTree?, _ depth: inout Int, _ layer: Int) {
    var newLayer = layer
    if let node = root {
      depth += newLayer
      newLayer += 1
      nodeDepthsHelper(node.left, &depth, newLayer)
      nodeDepthsHelper(node.right, &depth, newLayer)
    } else {return}
  }
}
