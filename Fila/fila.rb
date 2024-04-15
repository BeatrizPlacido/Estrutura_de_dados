class Node
  attr_accessor :data, :prox

  def initialize(data, prox = nil)
    @data = data
    @prox = prox
  end
end

class Queue
  attr_reader :first

  def initialize
    @first = nil
  end

  def enqueue(node)
    current_node = first

    if empty?
      @first = node
    else
      while current_node.prox != nil do
        current_node = current_node.prox
      end

      current_node.prox = node
    end
  end

  def dequeue
    return if empty?
    node_to_delete = first

    @first = node_to_delete.prox
    node_to_delete.data
  end

  def empty?
    first.nil?
  end

  def show
    current_node = first

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
node4 = Node.new(4)


queue = Queue.new

queue.enqueue(node1)
queue.enqueue(node2)
queue.enqueue(node3)
queue.enqueue(node4)


queue.show

queue.dequeue
