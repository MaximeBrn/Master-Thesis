function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = Model_Main_6.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(72, 88);
g1(1,5)=1+params(3);
g1(1,7)=(-params(3));
g1(1,9)=(-params(2));
g1(1,14)=(-params(20));
g1(2,6)=1+params(3);
g1(2,14)=params(21);
g1(2,16)=(-params(3));
g1(2,18)=(-params(2));
g1(3,7)=params(25);
g1(3,8)=params(25)*(-params(11));
g1(3,9)=(-params(2));
g1(3,14)=(-(params(8)*(1-params(7))*params(24)));
g1(4,14)=params(24)*params(8)*params(7);
g1(4,16)=params(25);
g1(4,17)=params(25)*(-params(11));
g1(4,18)=(-params(2));
g1(5,7)=(-params(27));
g1(5,8)=(-(params(27)*(-params(11))));
g1(5,14)=1;
g1(5,16)=params(27);
g1(5,17)=(-(params(11)*params(27)));
g1(6,8)=params(4);
g1(6,9)=(-params(2));
g1(6,14)=(-params(20));
g1(7,14)=params(21);
g1(7,17)=params(4);
g1(7,18)=(-params(2));
g1(8,14)=1;
g1(8,23)=1;
g1(9,9)=(-1);
g1(9,10)=1;
g1(9,14)=(-(params(20)*params(5)));
g1(10,9)=(-1);
g1(10,11)=1;
g1(10,14)=(-((-params(5))*(1-params(20))));
g1(11,14)=(-(params(5)*(1-params(21))));
g1(11,18)=(-1);
g1(11,19)=1;
g1(12,14)=(-(params(21)*(-params(5))));
g1(12,18)=(-1);
g1(12,20)=1;
g1(13,5)=1;
g1(13,7)=(-1);
g1(13,12)=1;
g1(14,6)=1;
g1(14,16)=(-1);
g1(14,21)=1;
g1(15,7)=1;
g1(15,8)=(-1);
g1(15,13)=1;
g1(16,16)=1;
g1(16,17)=(-1);
g1(16,22)=1;
g1(17,5)=1+params(3);
g1(17,77)=(-(1+params(3)));
g1(17,7)=(-params(3));
g1(17,79)=params(3);
g1(17,15)=1;
g1(18,6)=1+params(3);
g1(18,78)=(-(1+params(3)));
g1(18,16)=(-params(3));
g1(18,80)=params(3);
g1(18,24)=1;
g1(19,7)=(-params(7));
g1(19,16)=(-(1-params(7)));
g1(19,25)=1;
g1(20,8)=(-params(7));
g1(20,17)=(-(1-params(7)));
g1(20,26)=1;
g1(21,9)=(-params(7));
g1(21,18)=(-(1-params(7)));
g1(21,27)=1;
g1(22,15)=(-params(7));
g1(22,24)=(-(1-params(7)));
g1(22,28)=1;
g1(23,5)=(-(params(22)*(-(1+params(3)))));
g1(23,29)=(-(params(22)*(params(3)+params(27)*params(28))));
g1(23,30)=1;
g1(23,82)=(-params(1));
g1(23,31)=(-(params(22)*(-(params(11)*params(27)*params(28)))));
g1(23,39)=(-(params(22)*(params(25)-params(27)*params(28))));
g1(23,41)=(-(params(22)*(params(25)-params(27)*params(28))*(-params(11))));
g1(24,6)=(-(params(23)*(-(1+params(3)))));
g1(24,29)=(-(params(23)*(params(25)-params(27)*params(29))));
g1(24,31)=(-(params(23)*(params(25)-params(27)*params(29))*(-params(11))));
g1(24,39)=(-(params(23)*(params(3)+params(27)*params(29))));
g1(24,40)=1;
g1(24,85)=(-params(1));
g1(24,41)=(-(params(23)*(-(params(11)*params(27)*params(29)))));
g1(25,29)=1;
g1(25,81)=(-1);
g1(25,82)=(-(1/(params(27)*params(28))));
g1(25,31)=(-params(11));
g1(25,83)=params(11);
g1(25,38)=1/(params(27)*params(28));
g1(25,39)=T(1);
g1(25,84)=(-T(1));
g1(25,41)=(-(params(11)*T(1)));
g1(25,86)=(-(T(1)*(-params(11))));
g1(26,29)=T(2);
g1(26,81)=(-T(2));
g1(26,31)=(-(params(11)*T(2)));
g1(26,83)=(-(T(2)*(-params(11))));
g1(26,39)=1;
g1(26,84)=(-1);
g1(26,85)=(-(1/(params(27)*params(29))));
g1(26,41)=(-params(11));
g1(26,86)=params(11);
g1(26,47)=1/(params(27)*params(29));
g1(27,29)=(-params(27));
g1(27,31)=(-(params(27)*(-params(11))));
g1(27,37)=1;
g1(27,39)=params(27);
g1(27,41)=(-(params(11)*params(27)));
g1(28,37)=1;
g1(28,48)=1;
g1(29,5)=1;
g1(29,29)=(-1);
g1(29,32)=1;
g1(30,6)=1;
g1(30,39)=(-1);
g1(30,42)=1;
g1(31,29)=params(25);
g1(31,31)=params(25)*(-params(11));
g1(31,33)=(-params(2));
g1(31,37)=(-(params(8)*(1-params(7))*params(24)));
g1(32,37)=params(24)*params(8)*params(7);
g1(32,39)=params(25);
g1(32,41)=params(25)*(-params(11));
g1(32,43)=(-params(2));
g1(33,29)=1;
g1(33,31)=(-1);
g1(33,36)=1;
g1(34,39)=1;
g1(34,41)=(-1);
g1(34,46)=1;
g1(35,33)=(-1);
g1(35,34)=1;
g1(35,37)=(-(params(20)*params(5)));
g1(36,33)=(-1);
g1(36,35)=1;
g1(36,37)=(-((-params(5))*(1-params(20))));
g1(37,37)=(-(params(5)*(1-params(21))));
g1(37,43)=(-1);
g1(37,44)=1;
g1(38,37)=(-(params(21)*(-params(5))));
g1(38,43)=(-1);
g1(38,45)=1;
g1(39,38)=1;
g1(39,52)=(-1);
g1(40,47)=1;
g1(40,52)=(-1);
g1(41,30)=(-params(7));
g1(41,40)=(-(1-params(7)));
g1(41,53)=1;
g1(42,29)=(-params(7));
g1(42,39)=(-(1-params(7)));
g1(42,49)=1;
g1(43,31)=(-params(7));
g1(43,41)=(-(1-params(7)));
g1(43,50)=1;
g1(44,33)=(-params(7));
g1(44,43)=(-(1-params(7)));
g1(44,51)=1;
g1(45,7)=1;
g1(45,29)=(-1);
g1(45,54)=1;
g1(46,8)=1;
g1(46,31)=(-1);
g1(46,55)=1;
g1(47,9)=1;
g1(47,33)=(-1);
g1(47,56)=1;
g1(48,10)=1;
g1(48,34)=(-1);
g1(48,57)=1;
g1(49,11)=1;
g1(49,35)=(-1);
g1(49,58)=1;
g1(50,12)=1;
g1(50,32)=(-1);
g1(50,60)=1;
g1(51,13)=1;
g1(51,36)=(-1);
g1(51,59)=1;
g1(52,14)=1;
g1(52,37)=(-1);
g1(52,61)=1;
g1(53,15)=1;
g1(53,38)=(-1);
g1(53,62)=1;
g1(54,16)=1;
g1(54,39)=(-1);
g1(54,63)=1;
g1(55,17)=1;
g1(55,41)=(-1);
g1(55,64)=1;
g1(56,18)=1;
g1(56,43)=(-1);
g1(56,65)=1;
g1(57,19)=1;
g1(57,44)=(-1);
g1(57,66)=1;
g1(58,20)=1;
g1(58,45)=(-1);
g1(58,67)=1;
g1(59,21)=1;
g1(59,42)=(-1);
g1(59,69)=1;
g1(60,22)=1;
g1(60,46)=(-1);
g1(60,68)=1;
g1(61,23)=1;
g1(61,48)=(-1);
g1(61,70)=1;
g1(62,24)=1;
g1(62,47)=(-1);
g1(62,71)=1;
g1(63,54)=(-params(7));
g1(63,63)=(-(1-params(7)));
g1(63,72)=1;
g1(64,55)=(-params(7));
g1(64,64)=(-(1-params(7)));
g1(64,73)=1;
g1(65,56)=(-params(7));
g1(65,65)=(-(1-params(7)));
g1(65,74)=1;
g1(66,28)=1;
g1(66,38)=(-1);
g1(66,75)=1;
g1(67,55)=(-1);
g1(67,64)=1;
g1(67,76)=1;
g1(68,28)=(-1);
g1(68,52)=1;
g1(68,53)=(-1.5);
g1(68,72)=(-0.5);
g1(69,3)=(-0.85);
g1(69,59)=1;
g1(69,61)=(-params(30));
g1(70,4)=(-0.85);
g1(70,68)=1;
g1(70,70)=(-params(31));
g1(71,1)=(-params(32));
g1(71,5)=1;
g1(71,87)=1;
g1(72,2)=(-params(32));
g1(72,6)=1;
g1(72,88)=1;

end
