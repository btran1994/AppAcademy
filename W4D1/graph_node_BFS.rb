

class GraphNode

    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbor(neighbor)
        self.neighbors << neighbor
    end

end

def bfs(starting_node, target_value)
    #bfs queue style, FIFO
    queue = [starting_node]
    checked_nodes = []

    until queue.empty?
        node = queue.shift
        if !checked_nodes.include?(node)
            return node.val if node.val == target_value
            checked_nodes << node
            queue += node.neighbors
        end
    end
    return nil
    
   

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "c")