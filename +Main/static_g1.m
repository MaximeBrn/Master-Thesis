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
    T = Main.static_g1_tt(T, y, x, params);
end
g1 = zeros(55, 55);
g1(1,30)=(-((-(1+params(5)))*params(12)));
g1(1,34)=1+params(26)*(-params(16));
g1(1,38)=(-(1+params(5)));
g1(1,39)=1+params(5);
g1(1,41)=1+params(5);
g1(1,52)=1;
g1(2,30)=(-params(12));
g1(2,35)=1+params(26)*(-params(17));
g1(2,38)=1;
g1(2,39)=(-1);
g1(2,41)=(-1);
g1(3,29)=1-T(4);
g1(3,30)=(-(params(12)*T(3)));
g1(3,33)=(-T(2));
g1(3,43)=(-1);
g1(3,48)=(-params(6));
g1(3,50)=(-T(1));
g1(3,52)=(-1);
g1(4,38)=params(5);
g1(4,39)=(-T(3));
g1(4,41)=(-params(5));
g1(4,43)=1;
g1(4,49)=params(6);
g1(5,5)=params(6)*2*(1+params(5));
g1(5,43)=1;
g1(5,54)=(-params(18));
g1(5,55)=(-params(22));
g1(6,6)=params(6)*2*1/params(12);
g1(6,29)=T(4)*(-T(5));
g1(6,30)=1+T(4)*(-params(4));
g1(6,47)=(-params(6));
g1(6,54)=(-params(20));
g1(6,55)=(-params(24));
g1(7,29)=params(3)*T(4)-params(3);
g1(7,30)=(-(params(12)*(-T(6))));
g1(7,33)=(-(T(2)*(-params(3))));
g1(7,44)=(-1);
g1(7,50)=(-(T(1)*(-params(3))));
g1(7,54)=1;
g1(8,39)=T(6);
g1(8,41)=(-params(8));
g1(8,44)=1;
g1(9,44)=1;
g1(10,50)=1;
g1(11,52)=1;
g1(12,32)=(-((-(1+params(5)))*params(14)));
g1(12,36)=1+params(26)*(-params(16));
g1(12,38)=1+params(5);
g1(12,40)=1+params(5);
g1(12,42)=1+params(5);
g1(12,53)=1;
g1(13,32)=(-params(14));
g1(13,37)=1+params(26)*(-params(17));
g1(13,38)=(-1);
g1(13,40)=(-1);
g1(13,42)=(-1);
g1(14,31)=1-T(4);
g1(14,32)=(-(T(3)*params(14)));
g1(14,33)=T(2);
g1(14,45)=(-1);
g1(14,48)=(-(1-params(6)));
g1(14,51)=(-T(1));
g1(14,53)=(-1);
g1(15,38)=(-params(5));
g1(15,40)=(-T(3));
g1(15,42)=(-params(5));
g1(15,45)=1;
g1(15,49)=(-(1-params(6)));
g1(16,16)=(1-params(6))*2*(1+params(5));
g1(16,45)=1;
g1(16,54)=(-params(19));
g1(16,55)=(-params(23));
g1(17,17)=(1-params(6))*2*1/params(14);
g1(17,31)=T(4)*(-T(5));
g1(17,32)=1+T(4)*(-params(4));
g1(17,47)=(-(1-params(6)));
g1(17,54)=(-params(21));
g1(17,55)=(-params(25));
g1(18,31)=params(3)*T(4)-params(3);
g1(18,32)=(-((-T(6))*params(14)));
g1(18,33)=(-(params(3)*T(2)));
g1(18,46)=(-1);
g1(18,51)=(-(T(1)*(-params(3))));
g1(18,55)=1;
g1(19,40)=T(6);
g1(19,42)=(-params(8));
g1(19,46)=1;
g1(20,46)=1;
g1(21,51)=1;
g1(22,53)=1;
g1(23,29)=T(5);
g1(23,31)=T(5);
g1(24,29)=T(8)+T(4)*(-T(8));
g1(24,30)=(-(params(12)*(1-params(6)*params(2)-params(11))));
g1(24,31)=(params(13)-params(6)*params(2))/params(1)+T(4)*(-((params(13)-params(6)*params(2))/params(1)));
g1(24,32)=(-(params(14)*(params(13)-params(6)*params(2))));
g1(24,33)=1;
g1(24,50)=T(7);
g1(24,51)=(-(params(13)/params(1)));
g1(25,38)=1;
g1(25,39)=(-(1-params(6)*params(2)-params(11)));
g1(25,40)=(-(params(13)-params(6)*params(2)));
g1(26,47)=1;
g1(27,48)=1;
g1(27,49)=(-1);
g1(28,49)=1;
g1(29,6)=(-T(5));
g1(29,23)=T(5);
g1(30,1)=(-((-(1+params(5)))*params(12)));
g1(30,2)=(-params(12));
g1(30,3)=(-(params(12)*T(3)));
g1(30,6)=1-params(4);
g1(30,7)=(-(params(12)*(-T(6))));
g1(30,24)=(-(params(12)*(1-params(6)*params(2)-params(11))));
g1(31,17)=(-T(5));
g1(31,23)=T(5);
g1(32,12)=(-((-(1+params(5)))*params(14)));
g1(32,13)=(-params(14));
g1(32,14)=(-(T(3)*params(14)));
g1(32,17)=1-params(4);
g1(32,18)=(-((-T(6))*params(14)));
g1(32,24)=(-(params(14)*(params(13)-params(6)*params(2))));
g1(33,3)=(-T(2));
g1(33,7)=(-(T(2)*(-params(3))));
g1(33,14)=T(2);
g1(33,18)=(-(params(3)*T(2)));
g1(33,24)=1;
g1(34,1)=1-params(16);
g1(35,2)=1-params(17);
g1(36,12)=1-params(16);
g1(37,13)=1-params(17);
g1(38,1)=(-(1+params(5)));
g1(38,2)=1;
g1(38,4)=params(5);
g1(38,12)=1+params(5);
g1(38,13)=(-1);
g1(38,15)=(-params(5));
g1(38,25)=1;
g1(39,1)=1+params(5);
g1(39,2)=(-1);
g1(39,4)=(-T(3));
g1(39,8)=T(6);
g1(39,25)=(-(1-params(6)*params(2)-params(11)));
g1(40,12)=1+params(5);
g1(40,13)=(-1);
g1(40,15)=(-T(3));
g1(40,19)=T(6);
g1(40,25)=(-(params(13)-params(6)*params(2)));
g1(41,1)=1+params(5);
g1(41,2)=(-1);
g1(41,4)=(-params(5));
g1(41,8)=(-params(8));
g1(42,12)=1+params(5);
g1(42,13)=(-1);
g1(42,15)=(-params(5));
g1(42,19)=(-params(8));
g1(43,3)=(-1);
g1(43,4)=1;
g1(43,5)=1;
g1(44,7)=(-1);
g1(44,8)=1;
g1(44,9)=1;
g1(45,14)=(-1);
g1(45,15)=1;
g1(45,16)=1;
g1(46,18)=(-1);
g1(46,19)=1;
g1(46,20)=1;
g1(47,6)=(-params(6));
g1(47,17)=(-(1-params(6)));
g1(47,26)=1;
g1(48,3)=(-params(6));
g1(48,14)=(-(1-params(6)));
g1(48,27)=1;
g1(49,4)=params(6);
g1(49,15)=(-(1-params(6)));
g1(49,27)=(-1);
g1(49,28)=1;
g1(50,3)=(-T(1));
g1(50,7)=(-(T(1)*(-params(3))));
g1(50,10)=1;
g1(50,24)=T(7);
g1(51,14)=(-T(1));
g1(51,18)=(-(T(1)*(-params(3))));
g1(51,21)=1;
g1(51,24)=(-(params(13)/params(1)));
g1(52,1)=1;
g1(52,3)=(-1);
g1(52,11)=1;
g1(53,12)=1;
g1(53,14)=(-1);
g1(53,22)=1;
g1(54,5)=(-params(18));
g1(54,6)=(-params(20));
g1(54,7)=1;
g1(54,16)=(-params(19));
g1(54,17)=(-params(21));
g1(55,5)=(-params(22));
g1(55,6)=(-params(24));
g1(55,16)=(-params(23));
g1(55,17)=(-params(25));
g1(55,18)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end