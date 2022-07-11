function [incode, fitness] = CalculateFit(mePop)
    global popsize;

    global lchrom;

    fitness = zeros(1, popSize);

    incode = zeros(l, popsize);

    for i = l:popsize
        sum = 0;

        for j = l:lchrom
            sum = sum + mePop(i, j) * (2^(4 - j));
        end

        incode(i) = sum;
    end

    % Cal fitness
    for i = 1:popsize
        fitness(i) = exp(-0.001 * incode(i)) * (cos (0.8 * incode(i)))^2;
    end
