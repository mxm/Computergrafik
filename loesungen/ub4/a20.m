clf;

a = 5
b = 3
alpha = 75

A = (cosd(alpha)^2 / a^2 + sind(alpha)^2 / b^2)
B = (cosd(alpha)^2 / b^2 + sind(alpha)^2 / a^2)
C = 2*cosd(alpha)*sind(alpha)*(1/a^2 - 1/b^2)

fun = sprintf('%f * x^2 + %f * y^2 + %f * x*y = 1', A, B, C)
ezplot(fun);
hold on;

tx = -2
ty = 7 

A = (cosd(alpha)^2 / a^2 + sind(alpha)^2 / b^2)
B = (cosd(alpha)^2 / b^2 + sind(alpha)^2 / a^2)
C = 2*cosd(alpha)*sind(alpha)*(1/a^2 - 1/b^2)
D = -2*(cosd(alpha)*(tx*cosd(alpha) + ty*sind(alpha)) / a^2 + sind(alpha)*(tx*sind(alpha) - ty * cosd(alpha)) / b^2)
E =  2*(cosd(alpha)*(tx*sind(alpha) - ty*cosd(alpha)) / b^2 - sind(alpha)*(tx*cosd(alpha) + ty * sind(alpha)) / a^2)
F = (tx*cosd(alpha) + ty*sind(alpha))^2 / a^2 + (tx*sind(alpha) - ty*cosd(alpha))^2 / b^2

fun = sprintf('%f * x^2 + %f * y^2 + %f * x*y + %f * x + %f * y + %f = 1', A, B, C, D, E, F)
ezplot(fun, [-10, 20]);
axis equal;

%ezplot('y = 4');

%f = @(x, y) A * x^2 + B * y^2 + C * x*y + D * x + E * y + F;

function y = f(x) y = 0.10635*x^2 + 0.53206*x+0.041595; endfunction
fsolve("f", 0.)
fsolve("f", -6.)

Ms = [a 0 0; 0 b 0; 0 0 1]
Mr = [cosd(alpha) -sind(alpha) 0; sind(alpha) cosd(alpha) 0; 0 0 1]
Mt = [1 0 tx; 0 1 ty; 0 0 1]

M = [ 
 cosd(alpha)/a sind(alpha)/a -tx*cosd(alpha)-ty*sind(alpha);
-sind(alpha)/b cosd(alpha)/b tx*sind(alpha)-ty*cosd(alpha);
 0 0 1 ]

y = sqrt(1/(25 / 9 *tand(75) + 1))
x = sqrt(1 - y^2)
Mt * Mr * Ms * [x ; y; 1]
Mt * Mr * Ms * [-x ; -y; 1]

y = sqrt(1/(25 / 9 *tand(75) + 1))
x = sqrt(1 - y^2)
Mt * Mr * Ms * [x ; y; 1]
Mt * Mr * Ms * [-x ; -y; 1]
