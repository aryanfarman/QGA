function ang = Angle (oldPop, mePop, fitness, objVal_best, indivi_best)

    global popSize;
    global lchrom;

    b = indivi_best;
    ang = zeros(popSize, lchrom);

    for i = l:popsize

        A = oldpop(i, :, 1):

        B = oldPop(i, :, 2);

        x = mePop(i, :);

        for j = l:numel(x)

            if ((x(j) == 0) && (b(j) == 0)) || ((x(j) == 1)) && (b(j) == 1)
                d = 0;
                s = 0;

            elseif (x(j) == 0)s && (b(j) == 1) && (fitness (i) > objval_best)

                d = 0.01 * pi;

                if A(j) * B(j) > 0
                    s = 1;

                elseif A(j) * B(j) < 0
                    s = -1;

                elseif A(j) == 0
                    S = 0;

                elseif B(j) == 0
                    S = sign(randn);

                end

            elseif (x(j) == 0) && (b(j) == 1) && (fitness(i) <= objval_best)
                d = 0.01 * pi;

                if A(j) * B(j) > 0
                    S = -1;
                elseif A(j) * B(j) < 0
                    S = 1;
                elseif A(j) == 0
                    S = sign(randn);
                elseif B(j) == 0
                    S = 0;
                end

            elseif (x(j) == 1) && (b(j) == 0) && (fitness(i) > objval_best)
                d = 0.01 * pi;

                if A(j) * B(j) > 0
                    S = -1;
                elseif A(j) * B(j) < 0
                    S = 1;
                elseif A(j) == 0
                    S = sign(randn);
                elseif B(j) == 0
                    S = 0;
                end

            elseif (x(j) == 1) && (b(j) == 0) && (fitness(i) <= objval_best)
                d = 0.01 * pi;

                if A(j) * B(j) > 0
                    S = -1;
                elseif A(j) * B(j) < 0
                    S = 1;
                elseif A(j) == 0
                    S = sign(randn);
                elseif B(j) == 0
                    S = 0;
                end

            end

            ang(i, j) = S * d

        end

    end
