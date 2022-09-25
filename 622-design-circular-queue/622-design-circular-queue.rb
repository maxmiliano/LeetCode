class MyCircularQueue

=begin
    :type k: Integer
=end
    def initialize(k)
      @queue = Array.new(k)
      @head = -1
      @tail = -1
    end


=begin
    :type value: Integer
    :rtype: Boolean
=end
    def en_queue(value)
      
      # p ["en_queue(#{value})", @head, @tail, @queue]
      
      return false if is_full
      
      @tail = (@tail + 1) % @queue.size
      @head = 0 if @head == -1
      @queue[@tail] = value
      return true
    end


=begin
    :rtype: Boolean
=end
    def de_queue()
      # p ["de_queue", @head, @tail, @queue]
      
      return false if is_empty
      
      if (@head == @tail)
        @head = -1
        @tail = -1
      else
        @head = (@head + 1) % @queue.size
      end
      true
    end


=begin
    :rtype: Integer
=end
    def front()
      # p ["front()", @head, @tail, @queue, @queue[@head]]
      return -1 if is_empty
      @queue[@head]
    end


=begin
    :rtype: Integer
=end
    def rear()
      # p ["rear()", @head, @tail, @queue, @queue[@tail]]
      return -1 if is_empty
      @queue[@tail]
    end


=begin
    :rtype: Boolean
=end
    def is_empty()
      # p ["is_empty()", @head, @tail, @queue]
      @tail == -1
    end


=begin
    :rtype: Boolean
=end
    def is_full()
      # p ["is_full()", @head, @tail, @queue]
      !is_empty && (@tail + 1) % @queue.size == @head
    end


end

# Your MyCircularQueue object will be instantiated and called as such:
# obj = MyCircularQueue.new(k)
# param_1 = obj.en_queue(value)
# param_2 = obj.de_queue()
# param_3 = obj.front()
# param_4 = obj.rear()
# param_5 = obj.is_empty()
# param_6 = obj.is_full()