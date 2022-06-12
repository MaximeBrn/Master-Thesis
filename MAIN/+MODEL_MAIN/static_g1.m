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
g1 = zeros(83, 83);
g1(1,1)=params(7)*0.5*2*params(3);
g1(1,71)=1;
g1(1,78)=(-params(7));
g1(2,2)=params(7)*0.5*2*params(4)*params(11);
g1(2,72)=1;
g1(2,79)=(-params(7));
g1(3,3)=params(7)*0.5*2*params(2)*(1-params(11));
g1(3,73)=1;
g1(4,4)=0.5*(1-params(7))*2*params(3);
g1(4,74)=1;
g1(4,78)=(-(1-params(7)));
g1(5,5)=0.5*(1-params(7))*2*params(4)*params(11);
g1(5,75)=1;
g1(5,79)=(-(1-params(7)));
g1(6,6)=0.5*(1-params(7))*2*params(2)*(1-params(11));
g1(6,76)=1;
g1(7,77)=1;
g1(8,78)=1;
g1(9,79)=1;
g1(10,48)=1+params(3);
g1(10,56)=(-(params(16)*(-(1+params(3)))));
g1(10,60)=1;
g1(10,80)=1+params(23)*(-params(21));
g1(11,81)=1+params(23)*(-params(22));
g1(12,49)=1+params(3);
g1(12,58)=(-((-(1+params(3)))*params(17)));
g1(12,64)=1;
g1(12,82)=1+params(23)*(-params(21));
g1(13,83)=1+params(23)*(-params(22));
g1(14,48)=(-params(3));
g1(14,50)=params(19);
g1(14,53)=params(19);
g1(14,71)=1;
g1(15,44)=(-(params(4)*params(5)));
g1(15,47)=(-(params(4)*params(5)));
g1(15,48)=(-(params(11)*params(20)));
g1(15,50)=(-(params(11)*(params(19)+params(20))));
g1(15,52)=(-params(4));
g1(15,53)=params(19)*(-params(11));
g1(15,72)=1;
g1(16,44)=1-params(2)*params(5);
g1(16,45)=1-params(2)*params(5);
g1(16,53)=(-params(19));
g1(16,73)=1;
g1(17,44)=1;
g1(18,45)=1;
g1(19,49)=(-params(3));
g1(19,51)=params(19);
g1(19,54)=params(19);
g1(19,74)=1;
g1(20,45)=(-(params(4)*params(5)));
g1(20,46)=(-(params(4)*params(5)));
g1(20,49)=(-(params(11)*params(20)));
g1(20,51)=(-(params(11)*(params(19)+params(20))));
g1(20,52)=params(4);
g1(20,54)=params(19)*(-params(11));
g1(20,75)=1;
g1(21,46)=1-params(2)*params(5);
g1(21,47)=1-params(2)*params(5);
g1(21,54)=(-params(19));
g1(21,76)=1;
g1(22,47)=1;
g1(23,46)=1;
g1(24,50)=(-params(18));
g1(24,51)=params(18);
g1(24,52)=1;
g1(24,53)=(-((1+params(18))*(1-params(7))*params(8)));
g1(24,54)=(1+params(18))*params(7)*params(8);
g1(24,77)=1;
g1(25,55)=1-T(2);
g1(25,56)=(-(params(16)*(params(3)+params(19))));
g1(25,59)=(-T(1));
g1(25,60)=(-1);
g1(25,61)=params(19);
g1(25,69)=(-params(7));
g1(25,71)=(-1);
g1(26,26)=params(7)*0.5*2*params(6)/params(16);
g1(26,55)=T(2)*(-T(3));
g1(26,56)=1+T(2)*(-params(1));
g1(26,68)=(-params(7));
g1(27,55)=params(11)*T(2)-params(11);
g1(27,56)=(-(params(16)*(-(params(11)*params(19)))));
g1(27,59)=(-((-params(11))*T(1)));
g1(27,61)=params(19)*(-params(11));
g1(27,70)=(-params(7));
g1(27,72)=(-1);
g1(28,60)=1;
g1(29,61)=(-params(19));
g1(29,62)=(-1);
g1(29,63)=(-1);
g1(29,73)=(-1);
g1(30,62)=1;
g1(31,63)=1;
g1(32,57)=1-T(2);
g1(32,58)=(-(params(17)*(params(3)+params(19))));
g1(32,59)=T(1);
g1(32,64)=(-1);
g1(32,65)=params(19);
g1(32,69)=(-(1-params(7)));
g1(32,74)=(-1);
g1(33,33)=0.5*(1-params(7))*2*params(6)/params(17);
g1(33,57)=T(2)*(-T(3));
g1(33,58)=1+T(2)*(-params(1));
g1(33,68)=(-(1-params(7)));
g1(34,57)=params(11)*T(2)-params(11);
g1(34,58)=(-(params(17)*(-(params(11)*params(19)))));
g1(34,59)=(-(params(11)*T(1)));
g1(34,65)=params(19)*(-params(11));
g1(34,70)=(-(1-params(7)));
g1(34,75)=(-1);
g1(35,64)=1;
g1(36,65)=(-params(19));
g1(36,66)=(-1);
g1(36,67)=(-1);
g1(36,76)=(-1);
g1(37,66)=1;
g1(38,67)=1;
g1(39,55)=T(3);
g1(39,57)=T(3);
g1(40,55)=T(2)*T(4)-T(4);
g1(40,56)=(-(params(16)*(-params(18))));
g1(40,57)=T(4)+T(2)*(-T(4));
g1(40,58)=(-(params(17)*params(18)));
g1(40,59)=1;
g1(40,61)=(-((1+params(18))*(1-params(7))*params(8)));
g1(40,62)=(-params(14));
g1(40,63)=1-params(14);
g1(40,65)=(1+params(18))*params(7)*params(8);
g1(40,66)=(-(1-params(15)));
g1(40,67)=params(15);
g1(40,77)=(-1);
g1(41,68)=1;
g1(42,69)=1;
g1(43,70)=1;
g1(44,15)=(-(params(4)*params(5)));
g1(44,16)=1-params(2)*params(5);
g1(44,17)=1;
g1(45,16)=1-params(2)*params(5);
g1(45,18)=1;
g1(45,20)=(-(params(4)*params(5)));
g1(46,20)=(-(params(4)*params(5)));
g1(46,21)=1-params(2)*params(5);
g1(46,23)=1;
g1(47,15)=(-(params(4)*params(5)));
g1(47,21)=1-params(2)*params(5);
g1(47,22)=1;
g1(48,10)=1+params(3);
g1(48,14)=(-params(3));
g1(48,15)=(-(params(11)*params(20)));
g1(49,12)=1+params(3);
g1(49,19)=(-params(3));
g1(49,20)=(-(params(11)*params(20)));
g1(50,14)=params(19);
g1(50,15)=(-(params(11)*(params(19)+params(20))));
g1(50,24)=(-params(18));
g1(51,19)=params(19);
g1(51,20)=(-(params(11)*(params(19)+params(20))));
g1(51,24)=params(18);
g1(52,15)=(-params(4));
g1(52,20)=params(4);
g1(52,24)=1;
g1(53,14)=params(19);
g1(53,15)=params(19)*(-params(11));
g1(53,16)=(-params(19));
g1(53,24)=(-((1+params(18))*(1-params(7))*params(8)));
g1(54,19)=params(19);
g1(54,20)=params(19)*(-params(11));
g1(54,21)=(-params(19));
g1(54,24)=(1+params(18))*params(7)*params(8);
g1(55,26)=(-T(3));
g1(55,39)=T(3);
g1(56,10)=(-(params(16)*(-(1+params(3)))));
g1(56,25)=(-(params(16)*(params(3)+params(19))));
g1(56,26)=1-params(1);
g1(56,27)=(-(params(16)*(-(params(11)*params(19)))));
g1(56,40)=(-(params(16)*(-params(18))));
g1(57,33)=(-T(3));
g1(57,39)=T(3);
g1(58,12)=(-((-(1+params(3)))*params(17)));
g1(58,32)=(-(params(17)*(params(3)+params(19))));
g1(58,33)=1-params(1);
g1(58,34)=(-(params(17)*(-(params(11)*params(19)))));
g1(58,40)=(-(params(17)*params(18)));
g1(59,25)=(-T(1));
g1(59,27)=(-((-params(11))*T(1)));
g1(59,32)=T(1);
g1(59,34)=(-(params(11)*T(1)));
g1(59,40)=1;
g1(60,10)=1;
g1(60,25)=(-1);
g1(60,28)=1;
g1(61,25)=params(19);
g1(61,27)=params(19)*(-params(11));
g1(61,29)=(-params(19));
g1(61,40)=(-((1+params(18))*(1-params(7))*params(8)));
g1(62,29)=(-1);
g1(62,30)=1;
g1(62,40)=(-params(14));
g1(63,29)=(-1);
g1(63,31)=1;
g1(63,40)=1-params(14);
g1(64,12)=1;
g1(64,32)=(-1);
g1(64,35)=1;
g1(65,32)=params(19);
g1(65,34)=params(19)*(-params(11));
g1(65,36)=(-params(19));
g1(65,40)=(1+params(18))*params(7)*params(8);
g1(66,36)=(-1);
g1(66,37)=1;
g1(66,40)=(-(1-params(15)));
g1(67,36)=(-1);
g1(67,38)=1;
g1(67,40)=params(15);
g1(68,26)=(-params(7));
g1(68,33)=(-(1-params(7)));
g1(68,41)=1;
g1(69,25)=(-params(7));
g1(69,32)=(-(1-params(7)));
g1(69,42)=1;
g1(70,27)=(-params(7));
g1(70,34)=(-(1-params(7)));
g1(70,43)=1;
g1(71,1)=1;
g1(71,14)=1;
g1(71,25)=(-1);
g1(72,2)=1;
g1(72,15)=1;
g1(72,27)=(-1);
g1(73,3)=1;
g1(73,16)=1;
g1(73,29)=(-1);
g1(74,4)=1;
g1(74,19)=1;
g1(74,32)=(-1);
g1(75,5)=1;
g1(75,20)=1;
g1(75,34)=(-1);
g1(76,6)=1;
g1(76,21)=1;
g1(76,36)=(-1);
g1(77,7)=1;
g1(77,24)=1;
g1(77,40)=(-1);
g1(78,1)=(-params(7));
g1(78,4)=(-(1-params(7)));
g1(78,8)=1;
g1(79,2)=(-params(7));
g1(79,5)=(-(1-params(7)));
g1(79,9)=1;
g1(80,10)=1-params(21);
g1(81,11)=1-params(22);
g1(82,12)=1-params(21);
g1(83,13)=1-params(22);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
