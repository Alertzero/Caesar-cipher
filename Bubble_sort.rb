def bubble_sort(list)
    list.length().times do
        list.each_with_index do |v,i|
            if list[i+1]
                if v > list[i+1]
                    list[i], list[i+1] = list[i+1], list[i]
                end
            end
        end
    end
    return list
end

list = [4,3,78,2,0,2]
print bubble_sort(list)