class Node
  attr_accessor :data, :prox

  def initialize(data, prox = nil)
    @data = data
    @prox = prox
  end
end

class Stack
  attr_reader :top

  def initialize
    @top = nil
  end

  def push(node)
    node.prox = top
    @top = node
  end

  def pop
    return if empty?

    node_to_delete = top
    @top = node_to_delete.prox
    node_to_delete.data
  end

  def empty?
    top.nil?
  end

  def show
    current_node = top

    while current_node.present? do
      print "#{current_node.data} -> "

      current_node = current_node.prox
    end

    puts 'NULL'
  end
end

node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)

stack = Stack.new

stack.push(node1)
stack.push(node2)
stack.push(node3)

stack.show

stack.pop
