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
    T = Model_Main_4.static_g1_tt(T, y, x, params);
end
g1 = zeros(57, 57);
g1(1,16)=1+params(3);
g1(1,18)=(-params(3));
g1(1,20)=(-params(2));
g1(1,32)=(-params(20));
g1(2,17)=1+params(3);
g1(2,25)=(-params(3));
g1(2,27)=(-params(2));
g1(2,32)=params(21);
g1(3,18)=params(25);
g1(3,19)=params(25)*(-params(11));
g1(3,20)=(-params(2));
g1(3,32)=(-(params(8)*(1-params(7))*params(24)));
g1(4,25)=params(25);
g1(4,26)=params(25)*(-params(11));
g1(4,27)=(-params(2));
g1(4,32)=params(24)*params(8)*params(7);
g1(5,18)=(-params(27));
g1(5,19)=(-(params(27)*(-params(11))));
g1(5,25)=params(27);
g1(5,26)=(-(params(11)*params(27)));
g1(5,32)=1;
g1(6,19)=params(4);
g1(6,20)=(-params(2));
g1(6,32)=(-params(20));
g1(7,26)=params(4);
g1(7,27)=(-params(2));
g1(7,32)=params(21);
g1(8,20)=(-1);
g1(8,22)=1;
g1(8,32)=(-(params(20)*params(5)));
g1(9,20)=(-1);
g1(9,23)=1;
g1(9,32)=(-((-params(5))*(1-params(20))));
g1(10,27)=(-1);
g1(10,28)=1;
g1(10,32)=(-(params(5)*(1-params(21))));
g1(11,27)=(-1);
g1(11,29)=1;
g1(11,32)=(-(params(21)*(-params(5))));
g1(12,16)=1;
g1(12,18)=(-1);
g1(12,21)=1;
g1(13,17)=1;
g1(13,25)=(-1);
g1(13,30)=1;
g1(14,24)=1;
g1(15,31)=1;
g1(16,18)=(-params(7));
g1(16,25)=(-(1-params(7)));
g1(16,33)=1;
g1(17,19)=(-params(7));
g1(17,26)=(-(1-params(7)));
g1(17,34)=1;
g1(18,24)=(-params(7));
g1(18,31)=(-(1-params(7)));
g1(18,35)=1;
g1(19,16)=(-(params(22)*(-(1+params(3)))));
g1(19,36)=(-(params(22)*(params(3)+params(27)*params(28))));
g1(19,37)=1-params(1);
g1(19,38)=(-(params(22)*(-(params(11)*params(27)*params(28)))));
g1(19,43)=(-(params(22)*(params(25)-params(27)*params(28))));
g1(19,45)=(-(params(22)*(params(25)-params(27)*params(28))*(-params(11))));
g1(20,17)=(-(params(23)*(-(1+params(3)))));
g1(20,36)=(-(params(23)*(params(25)-params(27)*params(29))));
g1(20,38)=(-(params(23)*(params(25)-params(27)*params(29))*(-params(11))));
g1(20,43)=(-(params(23)*(params(3)+params(27)*params(29))));
g1(20,44)=1-params(1);
g1(20,45)=(-(params(23)*(-(params(11)*params(27)*params(29)))));
g1(21,37)=(-(1/(params(27)*params(28))));
g1(21,50)=1/(params(27)*params(28));
g1(22,44)=(-(1/(params(27)*params(29))));
g1(22,51)=1/(params(27)*params(29));
g1(23,36)=(-params(27));
g1(23,38)=(-(params(27)*(-params(11))));
g1(23,43)=params(27);
g1(23,45)=(-(params(11)*params(27)));
g1(23,53)=1;
g1(24,16)=1;
g1(24,36)=(-1);
g1(24,39)=1;
g1(25,17)=1;
g1(25,43)=(-1);
g1(25,46)=1;
g1(26,36)=params(25);
g1(26,38)=params(25)*(-params(11));
g1(26,40)=(-params(2));
g1(26,53)=(-(params(8)*(1-params(7))*params(24)));
g1(27,43)=params(25);
g1(27,45)=params(25)*(-params(11));
g1(27,47)=(-params(2));
g1(27,53)=params(24)*params(8)*params(7);
g1(28,40)=(-1);
g1(28,41)=1;
g1(28,53)=(-(params(20)*params(5)));
g1(29,40)=(-1);
g1(29,42)=1;
g1(29,53)=(-((-params(5))*(1-params(20))));
g1(30,47)=(-1);
g1(30,48)=1;
g1(30,53)=(-(params(5)*(1-params(21))));
g1(31,47)=(-1);
g1(31,49)=1;
g1(31,53)=(-(params(21)*(-params(5))));
g1(32,50)=1;
g1(32,52)=(-1);
g1(33,51)=1;
g1(33,52)=(-1);
g1(34,37)=(-params(7));
g1(34,44)=(-(1-params(7)));
g1(34,54)=1;
g1(35,36)=(-params(7));
g1(35,43)=(-(1-params(7)));
g1(35,55)=1;
g1(36,38)=(-params(7));
g1(36,45)=(-(1-params(7)));
g1(36,56)=1;
g1(37,40)=(-params(7));
g1(37,47)=(-(1-params(7)));
g1(37,57)=1;
g1(38,12)=(-0.125);
g1(38,35)=(-1);
g1(38,52)=0.3;
g1(38,54)=(-2.5);
g1(39,1)=(-params(30));
g1(39,2)=0.15;
g1(39,37)=(-params(31));
g1(40,6)=(-params(38));
g1(40,7)=0.15;
g1(40,44)=(-params(39));
g1(41,1)=1;
g1(41,18)=1;
g1(41,36)=(-1);
g1(42,2)=1;
g1(42,19)=1;
g1(42,38)=(-1);
g1(43,3)=1;
g1(43,20)=1;
g1(43,40)=(-1);
g1(44,1)=1;
g1(44,2)=(-1);
g1(44,4)=1;
g1(45,5)=1;
g1(45,24)=1;
g1(45,50)=(-1);
g1(46,11)=1;
g1(46,32)=1;
g1(46,53)=(-1);
g1(47,6)=1;
g1(47,25)=1;
g1(47,43)=(-1);
g1(48,7)=1;
g1(48,26)=1;
g1(48,45)=(-1);
g1(49,8)=1;
g1(49,27)=1;
g1(49,47)=(-1);
g1(50,6)=1;
g1(50,7)=(-1);
g1(50,9)=1;
g1(51,10)=1;
g1(51,31)=1;
g1(51,51)=(-1);
g1(52,1)=(-params(7));
g1(52,6)=(-(1-params(7)));
g1(52,12)=1;
g1(53,2)=(-params(7));
g1(53,7)=(-(1-params(7)));
g1(53,13)=1;
g1(54,3)=(-params(7));
g1(54,8)=(-(1-params(7)));
g1(54,14)=1;
g1(55,15)=1;
g1(55,35)=1;
g1(55,50)=(-1);
g1(56,16)=1-params(42);
g1(57,17)=1-params(42);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end