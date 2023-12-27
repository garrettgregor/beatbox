class Node
  attr_accessor :data, :next_node

  def initialize(string)
    @data       = string
    @next_node  = nil
  end

  def tail?
    @next_node.nil?
  end
end
