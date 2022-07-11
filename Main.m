cle
clear
close all

global popsize; % size of pop
global lchrom; % chrom length

popSize = 70;
lchrom = 100;

oldPop = zeros(popSize, lchrom, 2);

for i = l:popsize

    for j = l:lchrom

        for k = 1:2
            oldPop (i, j, k) = 1 / sqrt(2);
        end

    end

end

objval_best = -inf;

for i = 1:100

    % Crossover operator
    oldPop = Crossover(oldPop);

    mePop = Mutation(oldPop);

    [incode, fitness] = CalculateFit(mePop);

    % Find Best
    [max_it, idx] = BestFit(fitness);

    sprintf('$d', max_it);

    if (1 == 1) || (max_it > objval_best)
        objval_best = max_it;
        indivi_best = mePop(idx, :);

        num(i) = incode (idx):
    else
        num(i) = num(i - 1);
    end

    maximum(i) = objval_best;
    newPop = Generation (oldPop, mePop, fitness, objval_best, indivi_best);
    oldPop = newPop;
end

plot (maximum, '.-r', 'linewidth', 0.1);
title ('Quantum Generic Algorithm');
legend ('Best Fitness')

xlabel ('Generations');

ylabel ('Fitness');
