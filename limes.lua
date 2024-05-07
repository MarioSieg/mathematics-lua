function limes(f, a, ε) -- Evaluate the limit of f(x) as x approaches a from both sides with a given epsilon
    local x1 = a - ε
    local x2 = a + ε
    local f1 = f(x1)
    local f2 = f(x2)
    local limit = (f1 + f2) / 2
    return limit
end

-- evaluate for f(x) = x^2
local f = function(x) return x^2 end
local ε = 0.1
for x = 1, 10 do
    print(string.format('lim(%f) = %f', x, limes(f, x, ε)))
end
