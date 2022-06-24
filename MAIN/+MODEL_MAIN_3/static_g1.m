function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = MODEL_MAIN_3.static_g1_tt(T, y, x, params);
end
g1 = zeros(51, 51);
g1(1,13)=1+params(3);
g1(1,15)=(-params(3));
g1(1,17)=(-params(2));
g1(1,27)=(-params(14));
g1(2,14)=1+params(3);
g1(2,21)=(-params(3));
g1(2,23)=(-params(2));
g1(2,27)=params(15);
g1(3,15)=params(19);
g1(3,16)=params(19)*(-params(11));
g1(3,17)=(-params(2));
g1(3,27)=(-(params(8)*(1-params(7))*params(18)));
g1(4,21)=params(19);
g1(4,22)=params(19)*(-params(11));
g1(4,23)=(-params(2));
g1(4,27)=params(18)*params(8)*params(7);
g1(5,15)=(-params(21));
g1(5,16)=(-(params(21)*(-params(11))));
g1(5,21)=params(21);
g1(5,22)=(-(params(11)*params(21)));
g1(5,27)=1;
g1(6,16)=params(4);
g1(6,17)=(-params(2));
g1(6,27)=(-params(14));
g1(7,22)=params(4);
g1(7,23)=(-params(2));
g1(7,27)=params(15);
g1(8,17)=(-1);
g1(8,18)=1;
g1(8,27)=(-(params(14)*params(5)));
g1(9,17)=(-1);
g1(9,19)=1;
g1(9,27)=(-((-params(5))*(1-params(14))));
g1(10,23)=(-1);
g1(10,24)=1;
g1(10,27)=(-(params(5)*(1-params(15))));
g1(11,23)=(-1);
g1(11,25)=1;
g1(11,27)=(-(params(15)*(-params(5))));
g1(12,20)=1;
g1(13,26)=1;
g1(14,15)=(-params(7));
g1(14,21)=(-(1-params(7)));
g1(14,28)=1;
g1(15,16)=(-params(7));
g1(15,22)=(-(1-params(7)));
g1(15,29)=1;
g1(16,20)=(-params(7));
g1(16,26)=(-(1-params(7)));
g1(16,30)=1;
g1(17,32)=(-(1/(params(21)*params(22))));
g1(17,45)=1/(params(21)*params(22));
g1(18,13)=(-(params(16)*(-(1+params(3)))));
g1(18,31)=(-(params(16)*(params(3)+params(21)*params(22))));
g1(18,32)=1-params(1);
g1(18,33)=(-(params(16)*(-(params(11)*params(21)*params(22)))));
g1(18,38)=(-(params(16)*(params(19)-params(21)*params(22))));
g1(18,40)=(-(params(16)*(params(19)-params(21)*params(22))*(-params(11))));
g1(19,39)=(-(1/(params(21)*params(23))));
g1(19,46)=1/(params(21)*params(23));
g1(20,14)=(-(params(17)*(-(1+params(3)))));
g1(20,31)=(-(params(17)*(params(19)-params(21)*params(23))));
g1(20,33)=(-(params(17)*(params(19)-params(21)*params(23))*(-params(11))));
g1(20,38)=(-(params(17)*(params(3)+params(21)*params(23))));
g1(20,39)=1-params(1);
g1(20,40)=(-(params(17)*(-(params(11)*params(21)*params(23)))));
g1(21,31)=(-params(21));
g1(21,33)=(-(params(21)*(-params(11))));
g1(21,38)=params(21);
g1(21,40)=(-(params(11)*params(21)));
g1(21,47)=1;
g1(22,13)=1;
g1(22,31)=(-1);
g1(22,34)=1;
g1(23,14)=1;
g1(23,38)=(-1);
g1(23,41)=1;
g1(24,31)=params(19);
g1(24,33)=params(19)*(-params(11));
g1(24,35)=(-params(2));
g1(24,47)=(-(params(8)*(1-params(7))*params(18)));
g1(25,35)=(-1);
g1(25,36)=1;
g1(25,47)=(-(params(14)*params(5)));
g1(26,35)=(-1);
g1(26,37)=1;
g1(26,47)=(-((-params(5))*(1-params(14))));
g1(27,38)=params(19);
g1(27,40)=params(19)*(-params(11));
g1(27,42)=(-params(2));
g1(27,47)=params(18)*params(8)*params(7);
g1(28,42)=(-1);
g1(28,43)=1;
g1(28,47)=(-(params(5)*(1-params(15))));
g1(29,42)=(-1);
g1(29,44)=1;
g1(29,47)=(-(params(15)*(-params(5))));
g1(30,32)=(-1);
g1(30,48)=1;
g1(31,31)=(-params(7));
g1(31,38)=(-(1-params(7)));
g1(31,49)=1;
g1(32,33)=(-params(7));
g1(32,40)=(-(1-params(7)));
g1(32,50)=1;
g1(33,35)=(-params(7));
g1(33,42)=(-(1-params(7)));
g1(33,51)=1;
g1(34,33)=params(4);
g1(34,35)=(-params(2));
g1(34,47)=(-params(14));
g1(35,40)=params(4);
g1(35,42)=(-params(2));
g1(35,47)=params(15);
g1(36,30)=(-1);
g1(36,45)=1;
g1(37,45)=(-1);
g1(37,46)=1;
g1(38,1)=1;
g1(38,15)=1;
g1(38,31)=(-1);
g1(39,2)=1;
g1(39,16)=1;
g1(39,33)=(-1);
g1(40,3)=1;
g1(40,17)=1;
g1(40,35)=(-1);
g1(41,1)=1;
g1(41,2)=(-1);
g1(41,4)=1;
g1(42,5)=1;
g1(42,21)=1;
g1(42,38)=(-1);
g1(43,6)=1;
g1(43,22)=1;
g1(43,40)=(-1);
g1(44,7)=1;
g1(44,23)=1;
g1(44,42)=(-1);
g1(45,5)=1;
g1(45,6)=(-1);
g1(45,8)=1;
g1(46,9)=1;
g1(46,27)=1;
g1(46,47)=(-1);
g1(47,1)=(-params(7));
g1(47,5)=(-(1-params(7)));
g1(47,10)=1;
g1(48,2)=(-params(7));
g1(48,6)=(-(1-params(7)));
g1(48,11)=1;
g1(49,3)=(-params(7));
g1(49,7)=(-(1-params(7)));
g1(49,12)=1;
g1(50,13)=1-params(29);
g1(51,14)=1-params(29);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
