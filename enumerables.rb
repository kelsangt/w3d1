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


end
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