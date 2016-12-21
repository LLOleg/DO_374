set I = 1..4;

var x{I} binary;
var y{I} binary;

minimize z: sum{i in I} (x[i] + y[i]);

s.t. con1: sum{i in I} x[i] = 1;
s.t. con2: sum{i in I} y[i] = 1;
s.t. con3: x[1] + y[1] <= 1;
s.t. con4: x[1] + y[2] <= 1;
s.t. con5: x[2] + y[1] <= 1;
s.t. con6: x[2] + y[2] <= 1;
s.t. con7: x[2] + y[3] <= 1;
s.t. con8: x[3] + y[2] <= 1;
s.t. con9: x[3] + y[3] <= 1;
s.t. con10: x[3] + y[4] <= 1;
s.t. con11: x[4] + y[3] <= 1;
s.t. con12: x[4] + y[4] <= 1;
