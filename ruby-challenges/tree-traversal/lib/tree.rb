
class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  def depth_first_search(num)
    
    return self if payload == num
        
    children.map do |branch|
      branch.depth_first_search(num)
    end.flatten.compact[0]
  
  end

  def breadth_first_search(num)
    queue = []
    queue << self

    until queue.empty?
      n = queue.shift

      return n if n.payload == num

      n.children.each do |branch|
        queue << branch
      end
    end
  end
end

# the 'Leafs' of ta tree

deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node = Tree.new(4, [])

# the 'Branches'

sixth_node = Tree.new(6,[deep_fifth_node, eleventh_node])
ninth_node = Tree.new(9, [fourth_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# Root of tree

trunk = Tree.new(2, [seventh_node, shallow_fifth_node])

# puts trunk.depth_first_search(11).inspect

puts trunk.breadth_first_search(11)