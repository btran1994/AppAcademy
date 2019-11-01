class Stack

    attr_reader :stacky_boi
    
    def initialize
        @stacky_boi = []
    end

    def push(el)
        @stacky_boi.push(el)
    end

    def pop
        @stacky_boi.pop
    end

    def peek
        @stacky_boi.last
    end

end

stacky = Stack.new
stacky.push(5)
stacky.push(7)
stacky.peek