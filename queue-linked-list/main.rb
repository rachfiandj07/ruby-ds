class Queue
    def initialize
        @first = nil
        @last = nil
    end

    def peek
        collection = []
        currentNode = @first
        while currentNode != nil
            collection.append(currentNode.value)
            currentNode = currentNode.next_node
        end
        puts collection
    end

    def enqueue(value)
        newNode = Node.new(value)

        if @first.nil?
            @first = newNode
            return
        end

        currentNode = @first

        until currentNode.next_node.nil?
            currentNode = currentNode.next_node
        end

        currentNode.next_node = newNode
        @last = newNode
    end

    def dequeue
        firstNode = @first
        secondNode = firstNode.next_node
        @first = secondNode
    end

    def isEmpty
        if @first.nil? && @last.nil?
            puts 'queue is empty'
        end

        puts 'queue is not empty'
    end
    
end

class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

qq = Queue.new
qq.enqueue('A')
qq.enqueue('B')
qq.enqueue('C')
qq.dequeue
qq.dequeue
qq.isEmpty

qq.peek
