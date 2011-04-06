
class Stack
   
    def initialize
        @array = Array.new
    end 

     def size
        @array.length
    end

    def push(element)
        @array << element
    end

    def pop
       @array.pop
    end    
end    
