class Array


    def my_each(&block)
        i = 0
        while i < self.length
            block.call(self[i])
            i += 1
        end
        return self
    end


    def my_select(&block)
        farr = []
        self.my_each do |el|
           farr << el if block.call(el)
        end
        farr
    end

    def my_reject(&block)
        farr = []
        self.my_each do |el|
           farr << el if !block.call(el)
        end
        farr
    end

    def my_any?(&block)
        self.my_each do |el|
            return true if block.call(el) 
        end
        return false
    end

    def my_all?(&block)
        i = 0
        self.my_each do |el|
            if block.call(el) 
                i += 1
            end
        end
        if i == self.length 
            return true
        else
            return false
        end
    end


end

a = [1, 2, 3]
p a.my_any? { |num| num > 1 } # => true
p a.my_any? { |num| num == 4 } # => false
p a.my_all? { |num| num > 1 } # => false
p a.my_all? { |num| num < 4 } # => true

# a = [1, 2, 3]
# p a.my_select { |num| num > 1 } # => [2, 3]
# p a.my_select { |num| num == 4 } # => []


# # calls my_each twice on the array, printing all the numbers twice.
# return_value = [1, 2, 3].my_each do |num|
#     puts num
#     end
#     [1, 2, 3].my_each do |num|
#     puts num
#     end
#     # # => 1
#     #     2
#     #     3
#     #     1
#     #     2
#     #     3
    
#     p return_value  # => [1, 2, 3]



# a = [1, 2, 3]
# p a.my_reject { |num| num > 1 } # => [1]
# p a.my_reject { |num| num == 4 } # => [1, 2, 3]