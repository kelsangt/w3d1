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
        
    end


end



# calls my_each twice on the array, printing all the numbers twice.
return_value = [1, 2, 3].my_each do |num|
    puts num
    end
    [1, 2, 3].my_each do |num|
    puts num
    end
    # # => 1
    #     2
    #     3
    #     1
    #     2
    #     3
    
    p return_value  # => [1, 2, 3]

