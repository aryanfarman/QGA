function [measurePop] = PopSelection(pop)

    global popsize;
    global lchrom;

    measurePop = zeros(popSize, lchrom);

    for i = l:popsize

        for j = l:lchrom
            num = rand;

            if num > pop(i, j, 1)^2
                measurePop(i, j) = 1;
            else
                measurePop(i, j) = 0;
            end

        end

    end
