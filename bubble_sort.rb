def bubble_sort(array)

    bubble_sort_by(array){ |a,b|  
       a <=> b 
    }
    array 
end 

def bubble_sort_by(array)

    n = array.length 
    until n <= 1
        other_n =0
        i = 1
        loop{
            if yield(array[i],array[i-1]) < 0 
                temp = array[i]
                array[i] = array[i-1]
                array[i-1] = temp
                other_n = i 
            end 
            i+=1
            break if i > n - 1 
        }
        n = other_n
    end 
    array 
end


p bubble_sort([4,3,78,2,0,2])
p bubble_sort_by(["hi","hello","hey"]) { |left,right|

        left.length - right.length
  
}