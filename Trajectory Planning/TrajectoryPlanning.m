% Trajectory Planning
clear
clc

% Solving to find a1, a2, a3, a4, a5, a6 for each state
x0 = [1, 1, 1, 1, 1, 1];
fun = @TrajPlan;
y = fsolve(fun, x0);
disp(y);

function f = TrajPlan(a)
ti = 0; tf = 5; i = 3;
a1 = a(1); a2 = a(2); a3 = a(3); a4 = a(4); a5 = a(5); a6 = a(6);  
x(1, :) = [0, 0, pi/12, 2*pi/3, 0, 0];        %theta1
x(2, :) = [0, 0, pi/12, pi/3, 0, 0];        %theta2
x(3, :) = [0, 0, pi/12, 5*pi/6, 0, 0];        %theta3
qi = x(i, 1);
dqi = x(i, 2);
ddqi = x(i, 3);
qf = x(i, 4);
dqf = x(i, 5);
ddqf = x(i, 6);
f(1) = a1 + a2*ti + a3*ti^2 + a4*ti^3 + a5*ti^4 + a6*ti^5 - qi;
f(2) = a2 + 2*a3*ti + 3*a4*ti^2 + 4*a5*ti^3 + 4*a6*ti^4 - dqi;
f(3) = 2*a3 + 6*a4*ti + 12*a5*ti^2 + 20*a6*ti^3 - ddqi;
f(4) = a1 + a2*tf + a3*tf^2 + a4*tf^3 + a5*tf^4 + a6*tf^5 - qf;
f(5) = a2 + 2*a3*tf + 3*a4*tf^2 + 4*a5*tf^3 + 4*a6*tf^4 - dqf;
f(6) = 2*a3 + 6*a4*tf + 12*a5*tf^2 + 20*a6*tf^3 - ddqf;
end
