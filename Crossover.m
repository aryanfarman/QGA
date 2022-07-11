function [newPop] = Crossover(oldPop)
    global popSize;

    global lchrom;

    newPop = zeros(popSize, lchrom, 2);

    for i = l:popsize

        for j = l:popsize

            if j - i + 1 > 0
                idx = j - i + 1;
            else
                idx = j - i + l + popsize;
            end

            for k = 1:2
                newpPop(j, i, k) = oldPop(idx, i, k);
            end

        end

    end

    for i = popSize + l:lchrom

        for j = l:popSize

            if j - i + l + popsize > 0
                idx = j - i + l + popsize;

            else
                idx = j - i + 1 + 2 * popsize;
            end

            for k = 1:2
                newPop(j, i, k) = oldPop(idx, i, k);
            end

        end

    end
