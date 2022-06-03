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
    T = MODEL_MAIN.static_g1_tt(T, y, x, params);
end
g1 = zeros(73, 73);
g1(1,62)=1;
g1(1,69)=(-params(6));
g1(2,63)=1;
g1(3,64)=1;
g1(4,65)=1;
g1(4,69)=(-(1-params(6)));
g1(5,66)=1;
g1(6,67)=1;
g1(7,68)=1;
g1(8,69)=1;
g1(9,39)=1+params(5);
g1(9,44)=(-(1+params(5)));
g1(9,47)=(-(params(12)*(-(1+params(5)))));
g1(9,51)=1;
g1(9,70)=1+params(21)*(-params(16));
g1(10,39)=(-1);
g1(10,44)=1;
g1(10,47)=(-params(12));
g1(10,71)=1+params(21)*(-params(17));
g1(11,40)=1+params(5);
g1(11,45)=(-(1+params(5)));
g1(11,49)=(-((-(1+params(5)))*params(14)));
g1(11,55)=1;
g1(11,72)=1+params(21)*(-params(16));
g1(12,40)=(-1);
g1(12,45)=1;
g1(12,49)=(-params(14));
g1(12,73)=1+params(21)*(-params(17));
g1(13,39)=(-params(5));
g1(13,42)=T(2);
g1(13,44)=params(5);
g1(13,62)=1;
g1(14,42)=T(3);
g1(14,44)=params(8);
g1(14,63)=1;
g1(15,39)=(-params(1));
g1(15,41)=params(1);
g1(15,42)=1;
g1(15,64)=1;
g1(16,40)=(-params(5));
g1(16,43)=T(2);
g1(16,45)=params(5);
g1(16,65)=1;
g1(17,43)=T(3);
g1(17,45)=params(8);
g1(17,66)=1;
g1(18,40)=(-params(1));
g1(18,41)=(-params(1));
g1(18,43)=1;
g1(18,67)=1;
g1(19,39)=(-params(18));
g1(19,40)=params(19);
g1(19,41)=(-(1-params(2)));
g1(19,42)=T(5);
g1(19,43)=T(4);
g1(19,68)=1;
g1(20,20)=2;
g1(20,46)=1-T(8);
g1(20,47)=(-(params(12)*T(7)));
g1(20,50)=(-T(6));
g1(20,51)=(-1);
g1(20,52)=T(2);
g1(20,60)=(-params(6));
g1(20,62)=(-1);
g1(21,21)=2;
g1(21,46)=T(8)*(-T(9));
g1(21,47)=1+T(8)*(-params(4));
g1(21,59)=(-params(6));
g1(22,46)=params(3)*T(8)-params(3);
g1(22,47)=T(10);
g1(22,50)=(-((-params(3))*T(6)));
g1(22,52)=T(3);
g1(22,61)=(-params(6));
g1(22,63)=(-1);
g1(23,51)=1;
g1(24,52)=1;
g1(24,53)=(-1);
g1(24,54)=(-1);
g1(24,64)=(-1);
g1(25,54)=1;
g1(26,53)=1;
g1(27,27)=2;
g1(27,48)=1-T(8);
g1(27,49)=(-(params(14)*T(7)));
g1(27,50)=T(6);
g1(27,55)=(-1);
g1(27,56)=T(2);
g1(27,60)=(-(1-params(6)));
g1(27,65)=(-1);
g1(28,28)=2;
g1(28,48)=T(8)*(-T(9));
g1(28,49)=1+T(8)*(-params(4));
g1(28,59)=(-(1-params(6)));
g1(29,48)=params(3)*T(8)-params(3);
g1(29,49)=T(11);
g1(29,50)=(-(params(3)*T(6)));
g1(29,56)=T(3);
g1(29,61)=(-(1-params(6)));
g1(29,66)=(-1);
g1(30,55)=1;
g1(31,56)=1;
g1(31,57)=(-1);
g1(31,58)=(-1);
g1(31,67)=(-1);
g1(32,58)=1;
g1(33,57)=1;
g1(34,59)=1;
g1(35,60)=1;
g1(36,61)=1;
g1(37,46)=T(9);
g1(37,48)=T(9);
g1(38,46)=T(12)+T(8)*(-T(12));
g1(38,47)=(-(params(12)*(1-params(6)*params(2)-params(11))));
g1(38,48)=(params(13)-params(6)*params(2))/params(1)+T(8)*(-((params(13)-params(6)*params(2))/params(1)));
g1(38,49)=(-(params(14)*(params(13)-params(6)*params(2))));
g1(38,50)=1;
g1(38,52)=T(5);
g1(38,53)=(-params(18));
g1(38,54)=1-params(18);
g1(38,56)=T(4);
g1(38,57)=(-(1-params(19)));
g1(38,58)=params(19);
g1(38,68)=(-1);
g1(39,9)=1+params(5);
g1(39,10)=(-1);
g1(39,13)=(-params(5));
g1(39,15)=(-params(1));
g1(39,19)=(-params(18));
g1(40,11)=1+params(5);
g1(40,12)=(-1);
g1(40,16)=(-params(5));
g1(40,18)=(-params(1));
g1(40,19)=params(19);
g1(41,15)=params(1);
g1(41,18)=(-params(1));
g1(41,19)=(-(1-params(2)));
g1(42,13)=T(2);
g1(42,14)=T(3);
g1(42,15)=1;
g1(42,19)=T(5);
g1(43,16)=T(2);
g1(43,17)=T(3);
g1(43,18)=1;
g1(43,19)=T(4);
g1(44,9)=(-(1+params(5)));
g1(44,10)=1;
g1(44,13)=params(5);
g1(44,14)=params(8);
g1(45,11)=(-(1+params(5)));
g1(45,12)=1;
g1(45,16)=params(5);
g1(45,17)=params(8);
g1(46,21)=(-T(9));
g1(46,37)=T(9);
g1(47,9)=(-(params(12)*(-(1+params(5)))));
g1(47,10)=(-params(12));
g1(47,20)=(-(params(12)*T(7)));
g1(47,21)=1-params(4);
g1(47,22)=T(10);
g1(47,38)=(-(params(12)*(1-params(6)*params(2)-params(11))));
g1(48,28)=(-T(9));
g1(48,37)=T(9);
g1(49,11)=(-((-(1+params(5)))*params(14)));
g1(49,12)=(-params(14));
g1(49,27)=(-(params(14)*T(7)));
g1(49,28)=1-params(4);
g1(49,29)=T(11);
g1(49,38)=(-(params(14)*(params(13)-params(6)*params(2))));
g1(50,20)=(-T(6));
g1(50,22)=(-((-params(3))*T(6)));
g1(50,27)=T(6);
g1(50,29)=(-(params(3)*T(6)));
g1(50,38)=1;
g1(51,9)=1;
g1(51,20)=(-1);
g1(51,23)=1;
g1(52,20)=T(2);
g1(52,22)=T(3);
g1(52,24)=1;
g1(52,38)=T(5);
g1(53,24)=(-1);
g1(53,26)=1;
g1(53,38)=(-params(18));
g1(54,24)=(-1);
g1(54,25)=1;
g1(54,38)=1-params(18);
g1(55,11)=1;
g1(55,27)=(-1);
g1(55,30)=1;
g1(56,27)=T(2);
g1(56,29)=T(3);
g1(56,31)=1;
g1(56,38)=T(4);
g1(57,31)=(-1);
g1(57,33)=1;
g1(57,38)=(-(1-params(19)));
g1(58,31)=(-1);
g1(58,32)=1;
g1(58,38)=params(19);
g1(59,21)=(-params(6));
g1(59,28)=(-(1-params(6)));
g1(59,34)=1;
g1(60,20)=(-params(6));
g1(60,27)=(-(1-params(6)));
g1(60,35)=1;
g1(61,22)=(-params(6));
g1(61,29)=(-(1-params(6)));
g1(61,36)=1;
g1(62,1)=1;
g1(62,13)=1;
g1(62,20)=(-1);
g1(63,2)=1;
g1(63,14)=1;
g1(63,22)=(-1);
g1(64,3)=1;
g1(64,15)=1;
g1(64,24)=(-1);
g1(65,4)=1;
g1(65,16)=1;
g1(65,27)=(-1);
g1(66,5)=1;
g1(66,17)=1;
g1(66,29)=(-1);
g1(67,6)=1;
g1(67,18)=1;
g1(67,31)=(-1);
g1(68,7)=1;
g1(68,19)=1;
g1(68,38)=(-1);
g1(69,1)=(-params(6));
g1(69,4)=(-(1-params(6)));
g1(69,8)=1;
g1(70,9)=1-params(16);
g1(71,10)=1-params(17);
g1(72,11)=1-params(16);
g1(73,12)=1-params(17);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
