class Array
    def my_uniq
        array = []
        self.each { |ele| array << ele if !array.include?(ele)}
        return array
    end 
end 

p [5, 6, 5, 6, 9, 8, 7].my_uniq