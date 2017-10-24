def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum array
    sum = 0
    array.each do |element|
        sum += element
    end
    sum
end

def multiply first, *rest
    product = first
    rest.each do |num|
        product = product * num
    end
    product
end

def power base, exp
    base ** exp
end

def factorial num
    sum = 1
    counter = 1
    if !(num == 0 || num == 1)
        while counter <= num
            sum *= counter
            counter += 1
        end
    end
    sum
end

puts factorial(10)