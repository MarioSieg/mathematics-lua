function f(x)
    return x^2
end

-- Function to check the delta-epsilon definition of a limit
function lim(f, c, L, epsilon)
    local delta = 1
    local success = true
    while delta > 0.0001 do  -- Keep reducing delta to find a suitable small value
        for x = c - delta, c + delta, delta / 10 do
            if x ~= c and math.abs(x - c) < delta then
                if math.abs(f(x) - L) >= epsilon then
                    success = false
                    break
                end
            end
        end

        if success then
            print("Success with delta = " .. delta)
            return true
        else
            print("Failed at delta = " .. delta .. ", trying a smaller delta...")
            delta = delta / 2  -- Reduce delta to check again
            success = true  -- Reset success for the next round
        end
    end
    return false
end

-- Check the limit of f(x) = x^2 as x approaches 2, expecting the limit to be 4, with an epsilon of 0.1
local epsilon = 0.1
local limit_found = lim(f, 2, 4, epsilon)

if limit_found then
    print("The limit was verified successfully with epsilon = " .. epsilon)
else
    print("The limit check failed.")
end
