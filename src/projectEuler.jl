module projectEuler

# Write your package code here.

function problem1()::Int
    sum = 0
    for i in 1:999
        if i % 3 == 0 || i % 5 == 0
            sum += i
        end
    end
    return sum
end

function problem2()::Int
    sum = 0
    a = 1
    b = 2
    while b < 4000000
        if b % 2 == 0
            sum += b
        end
        a, b = b, a + b
    end
    return sum
end

function problem3(n::Int)::Int
   largest_prime_factor = 0
    for i = 2:floor(sqrt(n))
        while n % i == 0
            n /= i
            largest_prime_factor = i
        end
    end
    return largest_prime_factor
end

function isPalidrome(n::Int)::Bool
    return string(n) == reverse(string(n))
end

function problem4()::Int
    largest_palindrome = 0
    for i = 100:999
        for j = 100:999
            if isPalidrome(i * j) && i * j > largest_palindrome
                largest_palindrome = i * j
            end
        end
    end
    return largest_palindrome

end

end # module
print(projectEuler.problem4())