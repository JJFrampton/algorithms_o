#!/usr/bin/env ruby

require 'benchmark'
# puts Benchmark.measure { "a"*1_000_000 }

# NOTE CREATE TABLE

pat = 'dontdiedontcry'
pat = pat.chars
table = [0]

i = 1
while i < pat.length
  if pat[i] == pat[0]
    difference = i
    while i < pat.length
      if pat[i] == pat[i - difference]
        table.push(i - difference + 1)
        i += 1
      else
        table.push(0)
        break
      end
    end
  else
    table.push(0)
  end
  i += 1
end

p table

# NOTE SEARCH STRING USING TABLE

str = 'dontyoudontcrydontdiedosomedontdiedontcryorelse'
str = 'dontdiedontxxxdontdiedontcry'
str = 'xxdontdiedontdiedontcry'

i = 0
while i < str.length
  if str[i] == pat[0]
    difference = i
    while i - difference < pat.length
      p "FULL WORD MATCH!!!" if i - difference == pat.length - 1
      if str[i] != pat[i - difference]
        i2 = i
        difference2 = difference
        i = difference + table[i - difference]
        difference = table[i - difference]
        break
      else
        i += 1
      end
    end
  end
end
