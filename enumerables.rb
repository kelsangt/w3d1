class Array


    def my_each(&block)
        self.map!{|ele| block.call(ele)}
    end






end



# calls my_each twice on the array, printing all the numbers twice.
return_value = [1, 2, 3].my_each do |num|
    puts num
    end.my_each do |num|
    puts num
    end
    # # => 1
    #     2
    #     3
    #     1
    #     2
    #     3
    
    p return_value  # => [1, 2, 3]
