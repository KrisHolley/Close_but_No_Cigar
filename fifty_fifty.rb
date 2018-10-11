def winner(my_num, bash_num)
        arr1 = []
        my_num.each do |item|
            puts item
        if bash_num.include?(item)
             arr1 << item
        end
    end
    return arr1
end