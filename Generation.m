function [newPop] = Generation (oldPop, mePop, fitness, objval_best, indivi_best)
    global popsize;
    global lchrom;

    ang = Quantum(oldPop, mePop, fitness, objval_best, indivi_best);

    for i = 1:popSize

        for j = 1:lchrome
            H(:, :) = oldPop(i, j, :);
            a = ang(i, j)
            newPop(i, j, :) = [cos(a), -sin(a); sin(a), cos(a)] * H;

        end

    end
