from __future__ import division
from pyomo.environ import *

model = AbstractModel()

model.n = Param(within=NonNegativeIntegers)
model.m = Param(within=NonNegativeIntegers)

model.I = RangeSet(1, model.n)
model.J = RangeSet(1, model.m)

model.X = Param(model.I, model.J)
model.y = Param(model.I)
model.l = Param()
model.ksis = Var(model.I, domain=NonNegativeReals)
model.b = Var()

def obj_expression(model):
    return (sum(model.ksis) + model.l * model.n * summation(model.w, model.w))

model.OBJ = Objective(rule=obj_expression)

def constI(model, i):
    # return the expression for the constraint for i
    return model.y[i] * (summation(model.w, model.X[i]) + model.b) >= 1 - model.ksis[i]

# the next line creates one constraint for each member of the set model.I
model.c1 = Constraint(model.I, rule=constI)

