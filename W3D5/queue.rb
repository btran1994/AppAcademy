class Queue

    attr_reader :queue_queue

    def initialize
        @queue_queue = []
    end

    def enqueue(el)
        @queue_queue.push(el)
    end

    def dequeue
        @queue_queue.shift
    end

    def peek
        @queue_queue.first
    end

end

long_queue = Queue.new
long_queue.enqueue(7)
long_queue.enqueue(10)
long_queue.enqueue(8)
long_queue.enqueue(9)
long_queue.enqueue(3)
long_queue.dequeue
p long_queue.peek