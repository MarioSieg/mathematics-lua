function limes(f, a, eps) -- Evaluate the limit of f(x) as x approaches a from both sides with a given epsilon
    local x1 = a - eps
    local x2 = a + eps
    local f1 = f(x1)
    local f2 = f(x2)
    local limit = (f1 + f2) / 2
    return limit
end

-- evaluate for f(x) = x^2
local f = function(x) return x^2 end
local eps = 0.1
for x = 1, 10 do
    print(string.format('lim(%f) = %f', x, limes(f, x, eps)))
end
