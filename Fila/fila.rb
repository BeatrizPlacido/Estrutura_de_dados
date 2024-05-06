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

  def enqueue(data)
    node = Node.new(data)
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

queue = Queue.new

queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.enqueue(4)

queue.show

queue.dequeue
