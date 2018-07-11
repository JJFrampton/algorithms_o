#!/usr/bin/env ruby

matrix3 = [
    [1,2,3],
    [8,9,4],
    [7,6,5]
]
matrix4 = [
    [ 1, 2, 3, 4],
    [12,13,14, 5],
    [11,16,15, 6],
    [10, 9, 8, 7]
]
matrix5 = [
    [ 1, 2, 3, 4, 5],
    [16,17,18,19, 6],
    [15,24,25,20, 7],
    [14,23,22,21, 8],
    [13,12,11,10, 9]
]

def travel(matrix)
    len = matrix.length - 1
    start = 0

    while len >= start
        if len > start
            right(matrix, len, start)
            p ""
            down(matrix, len, start)
            p ""
            left(matrix, len, start)
            p ""
            up(matrix, len, start)
            p ""
        else
            print(matrix[len][start])
        end
        start += 1
        len -= 1
    end
end

def right(m, l, s)
    i = s
    while i <= l-1
        print(m[s][i])
        i += 1 
    end
end
def down(m, l, s)
    i = s
    while i <= l-1
        print(m[i][l])
        i += 1 
    end
end
def left(m, l, s)
    i = l
    while i >= s+1
        print(m[l][i])
        i -= 1 
    end
end
def up(m, l, s)
    i = l
    while i >= s+1
        print(m[i][s])
        i -= 1 
    end
end


travel(matrix3)
travel(matrix4)
travel(matrix5)
