class Stacks
    def initialize()
        @top = nil
        @bottom = nil
    end

    def push(value)
        newNode = Node.new(value)

        if @bottom.nil?
            @bottom = newNode.value
            return @bottom = newNode
        end

        currentNode = @bottom

        until currentNode.next_node.nil?
            currentNode = currentNode.next_node
        end

        currentNode.next_node = newNode
        @top = newNode
    end

    def peek
        currentNode = @top
        puts currentNode.value
    end

    def pop
        @bottom == nil ? true : false
        @bottom.next_node == nil ? true : false

        prevLast = @bottom
        while prevLast.next_node.next_node
            prevLast = prevLast.next_node
        end
        prevLast.next_node = nil
        @top = prevLast
    end

    def isEmpty
        if @bottom.nil? && @top.nil?
            puts 'our stacks is empty'
        end

        puts 'our stacks is not empty'
    end
end

class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

stacks = Stacks.new
stacks.push('Google')
stacks.push('Amazon')
stacks.push('Discord')
# stacks.peek
stacks.pop
stacks.isEmpty
# stacks.print

puts stacks.Stacks