#Ruby Day 2 Exercises

require 'pp'

#Output an array in groups of 4 numbers

num = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

pp num

i = 0

puts "Solution 1"
num.each { |n|
    print sprintf( "%d ", n)

    i +=1
    if (i % 4 == 0) then
        puts ' '
        i=0
    end
}

puts "Solution 2"
myStack = []
num.each { |n|
    myStack.push(sprintf( "%d", n))
    if (myStack.length == 4) then
        puts myStack.join(" ")
        myStack = []
    end
    }

puts "Each slice Solution"

 num.each_slice(4){|n| pp n}

#ruby day2.rb
