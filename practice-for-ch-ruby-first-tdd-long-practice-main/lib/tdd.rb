class Array
    def my_uniq
        array = []
        self.each { |ele| array << ele if !array.include?(ele)}
        return array
    end 

    def two_sum 
        return nil if self.empty?

        array = []
        (0...self.length).each do |idx|
            (idx+1...self.length).each do |idx2|
                array << [idx, idx2] if self[idx] + self[idx2] == 0
            end
        end

        return array
    end 
end 

p [5, 6, 5, 6, 9, 8, 7].my_uniq
p [-1, 0, 2, -2, 1].two_sum