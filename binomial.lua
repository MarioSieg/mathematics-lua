function fac(n)
    if n == 0 or n == 1 then return 1 end
    local r = 1
    for i = 2, n do
        r = r * i
    end
    return r
end

function binomial(n, k) -- n choose k - of binomial coefficient
    return fac(n) / (fac(k) * fac(n - k))
end

print(fac(3))
print(binomial(5, 3))
