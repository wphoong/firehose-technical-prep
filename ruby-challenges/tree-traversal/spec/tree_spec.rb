require 'spec_helper'

RSpec.describe 'tree', type: :model do
  before(:all) do
    deep_fifth_node = Tree.new(5, [])
    @eleventh_node = Tree.new(11, [])
    fourth_node = Tree.new(4, [])

    # the 'Branches'

    sixth_node = Tree.new(6,[deep_fifth_node, @eleventh_node])
    ninth_node = Tree.new(9, [fourth_node])
    seventh_node = Tree.new(7, [sixth_node])
    shallow_fifth_node = Tree.new(5, [ninth_node])

    # Root of tree

    @trunk = Tree.new(2, [seventh_node, shallow_fifth_node])
  end

  describe 'depth_first_search' do
    it 'should find the eleventh_node' do
      expect(@trunk.depth_first_search(11)).to eq(@eleventh_node)
    end
  end

  describe 'breadth_first_search' do
    it 'should find the eleventh node' do
      expect(@trunk.breadth_first_search(11)).to eq(@eleventh_node)
    end
  end
end