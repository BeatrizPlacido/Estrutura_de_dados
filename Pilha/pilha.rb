class Node
  attr_accessor :data, :prox

  def initialize(data, prox = nil)
    @data = data
    @prox = prox
  end
end

class Pilha
  attr_reader :top

  def initialize
    @top = nil
  end

  def push(data)
    node = Node.new(data)

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

pilha = Pilha.new

pilha.push(1)
pilha.push(2)
pilha.push(3)

pilha.show

pilha.pop
