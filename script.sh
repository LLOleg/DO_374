#!/bin/bash
solvers="glpk minos bonmin cbc scip couenne gecode ipopt jacob"
for solver in $solvers
do
    echo "Solver: $solver"
    cmd="pyomo solve PYOMO_SVM.py chromatic.dat --solver=$solver"
    echo "$cmd" > out/${solver}_out.txt
    $cmd 2>&1 >> out/${solver}_out.txt
    mv results.json out/${solver}_results.json
done
