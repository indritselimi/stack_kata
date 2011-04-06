require 'test/unit'

require_relative 'stack'

class StackTest < Test::Unit::TestCase
    def setup
        @stack = Stack.new
    end    
    
    def test_sizes_returns_number_of_elements_contained
        assert_equal 0, @stack.size
    end    
    
    def test_pushes_an_element_to_the_stack
        @stack.push 1

        assert_equal 1, @stack.size
    end

    def test_pushes_more_elements_into_the_stack
        @stack.push 1
        @stack.push 2
        @stack.push 3

        assert_equal 3, @stack.size
    end

    def test_removes_an_element
        @stack.push 1

        @stack.pop

        assert_equal 0, @stack.size
    end   

    def test_elements_must_be_ordered_LIFO
        @stack.push 1
        @stack.push 3
        @stack.push 2

        assert_equal 2, @stack.pop
        assert_equal 3, @stack.pop
        assert_equal 1, @stack.pop
    end    
end    
