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
    T = MODEL_MAIN_9.static_g1_tt(T, y, x, params);
end
g1 = zeros(85, 85);
g1(1,1)=1+params(3);
g1(1,4)=(-params(3));
g1(1,6)=(-params(2));
g1(1,11)=(-params(14));
g1(2,2)=1+params(3);
g1(2,11)=params(15);
g1(2,13)=(-params(3));
g1(2,15)=(-params(2));
g1(3,4)=params(19);
g1(3,5)=params(19)*(-params(11));
g1(3,6)=(-params(2));
g1(3,11)=(-(params(8)*(1-params(7))*params(18)));
g1(4,11)=params(18)*params(8)*params(7);
g1(4,13)=params(19);
g1(4,14)=params(19)*(-params(11));
g1(4,15)=(-params(2));
g1(5,4)=(-params(21));
g1(5,5)=(-(params(21)*(-params(11))));
g1(5,11)=1;
g1(5,13)=params(21);
g1(5,14)=(-(params(11)*params(21)));
g1(6,5)=params(4);
g1(6,6)=(-params(2));
g1(6,11)=(-params(14));
g1(7,11)=params(15);
g1(7,14)=params(4);
g1(7,15)=(-params(2));
g1(8,11)=1;
g1(8,20)=1;
g1(9,6)=(-1);
g1(9,7)=1;
g1(9,11)=(-(params(14)*params(5)));
g1(10,6)=(-1);
g1(10,8)=1;
g1(10,11)=(-((-params(5))*(1-params(14))));
g1(11,11)=(-(params(5)*(1-params(15))));
g1(11,15)=(-1);
g1(11,16)=1;
g1(12,11)=(-(params(15)*(-params(5))));
g1(12,15)=(-1);
g1(12,17)=1;
g1(13,1)=1;
g1(13,4)=(-1);
g1(13,9)=1;
g1(14,2)=1;
g1(14,13)=(-1);
g1(14,18)=1;
g1(15,4)=1;
g1(15,5)=(-1);
g1(15,10)=1;
g1(16,13)=1;
g1(16,14)=(-1);
g1(16,19)=1;
g1(17,12)=1;
g1(18,21)=1;
g1(19,4)=(-params(7));
g1(19,13)=T(1);
g1(19,22)=1;
g1(20,5)=(-params(7));
g1(20,14)=T(1);
g1(20,23)=1;
g1(21,6)=(-params(7));
g1(21,15)=T(1);
g1(21,24)=1;
g1(22,12)=(-params(7));
g1(22,21)=T(1);
g1(22,27)=1;
g1(23,7)=(-params(7));
g1(23,16)=T(1);
g1(23,25)=1;
g1(24,8)=(-params(7));
g1(24,17)=T(1);
g1(24,26)=1;
g1(25,10)=(-params(7));
g1(25,19)=T(1);
g1(25,28)=1;
g1(26,9)=(-params(7));
g1(26,18)=T(1);
g1(26,29)=1;
g1(27,1)=(-(params(16)*(-(1+params(3)))));
g1(27,30)=(-(params(16)*(params(3)+params(21)*params(22))));
g1(27,31)=1-params(1);
g1(27,32)=(-(params(16)*(-(params(11)*params(21)*params(22)))));
g1(27,40)=(-(params(16)*(params(19)-params(21)*params(22))));
g1(27,42)=(-(params(16)*(params(19)-params(21)*params(22))*(-params(11))));
g1(28,2)=(-(params(17)*(-(1+params(3)))));
g1(28,30)=(-(params(17)*(params(19)-params(21)*params(23))));
g1(28,32)=(-(params(17)*(params(19)-params(21)*params(23))*(-params(11))));
g1(28,40)=(-(params(17)*(params(3)+params(21)*params(23))));
g1(28,41)=1-params(1);
g1(28,42)=(-(params(17)*(-(params(11)*params(21)*params(23)))));
g1(29,31)=(-(1/(params(21)*params(22))));
g1(29,39)=1/(params(21)*params(22));
g1(30,41)=(-(1/(params(21)*params(23))));
g1(30,48)=1/(params(21)*params(23));
g1(31,30)=(-params(21));
g1(31,32)=(-(params(21)*(-params(11))));
g1(31,38)=1;
g1(31,40)=params(21);
g1(31,42)=(-(params(11)*params(21)));
g1(32,38)=1;
g1(32,49)=1;
g1(33,1)=1;
g1(33,30)=(-1);
g1(33,33)=1;
g1(34,2)=1;
g1(34,40)=(-1);
g1(34,43)=1;
g1(35,30)=params(19);
g1(35,32)=params(19)*(-params(11));
g1(35,34)=(-params(2));
g1(35,38)=(-(params(8)*(1-params(7))*params(18)));
g1(36,38)=params(18)*params(8)*params(7);
g1(36,40)=params(19);
g1(36,42)=params(19)*(-params(11));
g1(36,44)=(-params(2));
g1(37,30)=1;
g1(37,32)=(-1);
g1(37,37)=1;
g1(38,40)=1;
g1(38,42)=(-1);
g1(38,47)=1;
g1(39,34)=(-1);
g1(39,35)=1;
g1(39,38)=(-(params(14)*params(5)));
g1(40,34)=(-1);
g1(40,36)=1;
g1(40,38)=(-((-params(5))*(1-params(14))));
g1(41,38)=(-(params(5)*(1-params(15))));
g1(41,44)=(-1);
g1(41,45)=1;
g1(42,38)=(-(params(15)*(-params(5))));
g1(42,44)=(-1);
g1(42,46)=1;
g1(43,39)=1;
g1(43,55)=(-1);
g1(44,48)=1;
g1(44,55)=(-1);
g1(45,31)=(-params(7));
g1(45,41)=T(1);
g1(45,56)=1;
g1(46,30)=(-params(7));
g1(46,40)=T(1);
g1(46,50)=1;
g1(47,32)=(-params(7));
g1(47,42)=T(1);
g1(47,51)=1;
g1(48,34)=(-params(7));
g1(48,44)=T(1);
g1(48,52)=1;
g1(49,35)=(-params(7));
g1(49,45)=T(1);
g1(49,53)=1;
g1(50,36)=(-params(7));
g1(50,46)=T(1);
g1(50,54)=1;
g1(51,37)=(-params(7));
g1(51,47)=T(1);
g1(51,57)=1;
g1(52,33)=(-params(7));
g1(52,43)=T(1);
g1(52,58)=1;
g1(53,4)=1;
g1(53,30)=(-1);
g1(53,59)=1;
g1(54,5)=1;
g1(54,32)=(-1);
g1(54,60)=1;
g1(55,6)=1;
g1(55,34)=(-1);
g1(55,61)=1;
g1(56,7)=1;
g1(56,35)=(-1);
g1(56,62)=1;
g1(57,8)=1;
g1(57,36)=(-1);
g1(57,63)=1;
g1(58,9)=1;
g1(58,33)=(-1);
g1(58,65)=1;
g1(59,10)=1;
g1(59,37)=(-1);
g1(59,64)=1;
g1(60,11)=1;
g1(60,38)=(-1);
g1(60,66)=1;
g1(61,12)=1;
g1(61,39)=(-1);
g1(61,67)=1;
g1(62,13)=1;
g1(62,40)=(-1);
g1(62,68)=1;
g1(63,14)=1;
g1(63,42)=(-1);
g1(63,69)=1;
g1(64,15)=1;
g1(64,44)=(-1);
g1(64,70)=1;
g1(65,16)=1;
g1(65,45)=(-1);
g1(65,71)=1;
g1(66,17)=1;
g1(66,46)=(-1);
g1(66,72)=1;
g1(67,18)=1;
g1(67,43)=(-1);
g1(67,74)=1;
g1(68,19)=1;
g1(68,47)=(-1);
g1(68,73)=1;
g1(69,20)=1;
g1(69,49)=(-1);
g1(69,75)=1;
g1(70,21)=1;
g1(70,48)=(-1);
g1(70,76)=1;
g1(71,59)=(-params(7));
g1(71,68)=T(1);
g1(71,77)=1;
g1(72,60)=(-params(7));
g1(72,69)=T(1);
g1(72,78)=1;
g1(73,61)=(-params(7));
g1(73,70)=T(1);
g1(73,79)=1;
g1(74,27)=1;
g1(74,39)=(-1);
g1(74,82)=1;
g1(75,60)=(-1);
g1(75,69)=1;
g1(75,85)=1;
g1(76,29)=1;
g1(76,58)=(-1);
g1(76,83)=1;
g1(77,64)=(-params(7));
g1(77,73)=T(1);
g1(77,84)=1;
g1(78,62)=(-params(7));
g1(78,71)=T(1);
g1(78,80)=1;
g1(79,63)=(-params(7));
g1(79,72)=T(1);
g1(79,81)=1;
g1(80,27)=(-0.3);
g1(80,55)=0.3;
g1(80,56)=(-2.5);
g1(80,77)=(-0.125);
g1(81,59)=params(25);
g1(81,61)=(-params(25));
g1(81,64)=1-params(24);
g1(81,66)=(-params(26));
g1(81,77)=(-params(25));
g1(81,79)=params(25);
g1(82,68)=params(27);
g1(82,70)=(-params(27));
g1(82,73)=1-params(24);
g1(82,75)=(-params(28));
g1(82,77)=(-params(27));
g1(82,79)=params(27);
g1(83,1)=1-params(29);
g1(84,2)=1-params(29);
g1(85,1)=(-params(7));
g1(85,2)=T(1);
g1(85,3)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end