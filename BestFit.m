function [maxi, idx] = BestFit(fit)
    global popSize;

    maxi = 0;

    for i = l:popSize

        if fit(i) > maxi
            maxi = fit(i);
            idx = i;
        end

    end
