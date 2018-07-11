#!/usr/bin/env ruby
def compare(word1, word2)
    word1 = word1.chars
    word2 = word2.chars
    length = word1.length
    i = 0
    differences = 0
    while i < length
        if word1[i] != word2[i]
            differences += 1
            if differences > 1
                return false
            end
        end
        i += 1
    end
    return true
end


# puts compare('abb','abc')
# puts compare('adc','abc')
# puts compare('cab','abc')


# def create_hash(a)
#     hash = {}
#     i = 0
#     while i < a.length
#         word1 = a[i]
#         hash[word1] = []
#         j = 0
#         while j < a.length
#             word2 = a[j]
#             if j != i
#                 if compare(word1, word2) == true
#                     # add to hash
#                     hash[word1].push({'string' => word2,
#                                       'index' => j})
#                 end
#             end
#             j += 1
#         end

#         i += 1
#     end
#     puts "hash"
#     puts hash
# end


def create_matrix(a)
    height = []
    i = 0
    while i < a.length
        width = []
        word1 = a[i]
        j = 0
        while j < a.length
            word2 = a[j]
            if j != i
                if compare(word1, word2) == true
                    width.push(1)
                else 
                    width.push(0)
                end
            else
                width.push(0)
            end
            j += 1
        end
        height.push(width)
        i += 1
    end
    p height
    return height
end

# create_matrix(['aba','aaa','abb'])
array = ['aba','aaa','abb']
word = 'aba'

def order_strings(array)
    matrix = create_matrix(array)
    # traverse the matrix
    # need a recursive function
    p matrix
end

matrix = create_matrix(['aba','aaa','abb'])
path = []
def traverse(matrix, path)
    toggle = 0
    travel_x(matrix, 0, 0)
    travel_y(matrix, 0, 0)
end

def travel(matrix)
    i = 0
    toggle = -1
    path = []
    iterate(matrix, i, toggle, path)
end

# traverse(matrix,path)

def iterate(matrix, i, toggle, path)
    # first iteration
    # will be 0 and even
    # y axis will be first row
    # x starts from 0 and goes to the end
    #       should skip numbers its already used
    if toggle < matrix[0].length
        toggle += 1
        path.push(i)
        if toggle.even?
            y = i
            x = 0
            while x < matrix[0].length
                matrix[y][x]
                p "value: #{matrix[y][x]}, x: #{x}, y: #{y}"
                if matrix[y][x] == 1
                    p "Loop # #{toggle}"
                    iterate(matrix, x, toggle, path)
                end
                x += 1
            end
        else
            x = i
            y = 0
            while y < matrix.length
                matrix[y][x]
                p "value: #{matrix[y][x]}, x: #{x}, y: #{y}"
                if matrix[y][x] == 1
                    p "Loop # #{toggle}"
                    iterate(matrix, y, toggle, path)
                end
                y += 1
            end
        end
    else
        return
    end
end

travel(matrix)

# need to track number that was used before

# array[i][j]
# either pass i and iterate j
# or pass j and iterate i
# start from 0 
# recurse and change axis if 1 and number has not been added to the path (number from i or j)

# order_strings(array)
# traverse(word, array)
