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
    T = MODEL_MAIN_3.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(51, 66);
g1(1,16)=1+params(3);
g1(1,18)=(-params(3));
g1(1,20)=(-params(2));
g1(1,30)=(-params(14));
g1(2,17)=1+params(3);
g1(2,24)=(-params(3));
g1(2,26)=(-params(2));
g1(2,30)=params(15);
g1(3,18)=params(19);
g1(3,19)=params(19)*(-params(11));
g1(3,20)=(-params(2));
g1(3,30)=(-(params(8)*(1-params(7))*params(18)));
g1(4,24)=params(19);
g1(4,25)=params(19)*(-params(11));
g1(4,26)=(-params(2));
g1(4,30)=params(18)*params(8)*params(7);
g1(5,18)=(-params(21));
g1(5,19)=(-(params(21)*(-params(11))));
g1(5,24)=params(21);
g1(5,25)=(-(params(11)*params(21)));
g1(5,30)=1;
g1(6,19)=params(4);
g1(6,20)=(-params(2));
g1(6,30)=(-params(14));
g1(7,25)=params(4);
g1(7,26)=(-params(2));
g1(7,30)=params(15);
g1(8,20)=(-1);
g1(8,21)=1;
g1(8,30)=(-(params(14)*params(5)));
g1(9,20)=(-1);
g1(9,22)=1;
g1(9,30)=(-((-params(5))*(1-params(14))));
g1(10,26)=(-1);
g1(10,27)=1;
g1(10,30)=(-(params(5)*(1-params(15))));
g1(11,26)=(-1);
g1(11,28)=1;
g1(11,30)=(-(params(15)*(-params(5))));
g1(12,16)=1+params(3);
g1(12,55)=(-(1+params(3)));
g1(12,18)=(-params(3));
g1(12,57)=params(3);
g1(12,23)=1;
g1(13,17)=1+params(3);
g1(13,56)=(-(1+params(3)));
g1(13,24)=(-params(3));
g1(13,58)=params(3);
g1(13,29)=1;
g1(14,18)=(-params(7));
g1(14,24)=(-(1-params(7)));
g1(14,31)=1;
g1(15,19)=(-params(7));
g1(15,25)=(-(1-params(7)));
g1(15,32)=1;
g1(16,23)=(-params(7));
g1(16,29)=(-(1-params(7)));
g1(16,33)=1;
g1(17,34)=1;
g1(17,59)=(-1);
g1(17,60)=(-(1/(params(21)*params(22))));
g1(17,36)=(-params(11));
g1(17,61)=params(11);
g1(17,41)=T(1);
g1(17,62)=(-T(1));
g1(17,43)=(-(params(11)*T(1)));
g1(17,64)=(-(T(1)*(-params(11))));
g1(17,48)=1/(params(21)*params(22));
g1(18,16)=(-(params(16)*(-(1+params(3)))));
g1(18,34)=(-(params(16)*(params(3)+params(21)*params(22))));
g1(18,35)=1;
g1(18,60)=(-params(1));
g1(18,36)=(-(params(16)*(-(params(11)*params(21)*params(22)))));
g1(18,41)=(-(params(16)*(params(19)-params(21)*params(22))));
g1(18,43)=(-(params(16)*(params(19)-params(21)*params(22))*(-params(11))));
g1(19,34)=T(2);
g1(19,59)=(-T(2));
g1(19,36)=(-(params(11)*T(2)));
g1(19,61)=(-(T(2)*(-params(11))));
g1(19,41)=1;
g1(19,62)=(-1);
g1(19,63)=(-(1/(params(21)*params(23))));
g1(19,43)=(-params(11));
g1(19,64)=params(11);
g1(19,49)=1/(params(21)*params(23));
g1(20,17)=(-(params(17)*(-(1+params(3)))));
g1(20,34)=(-(params(17)*(params(19)-params(21)*params(23))));
g1(20,36)=(-(params(17)*(params(19)-params(21)*params(23))*(-params(11))));
g1(20,41)=(-(params(17)*(params(3)+params(21)*params(23))));
g1(20,42)=1;
g1(20,63)=(-params(1));
g1(20,43)=(-(params(17)*(-(params(11)*params(21)*params(23)))));
g1(21,34)=(-params(21));
g1(21,36)=(-(params(21)*(-params(11))));
g1(21,41)=params(21);
g1(21,43)=(-(params(11)*params(21)));
g1(21,50)=1;
g1(22,16)=1;
g1(22,34)=(-1);
g1(22,37)=1;
g1(23,17)=1;
g1(23,41)=(-1);
g1(23,44)=1;
g1(24,34)=params(19);
g1(24,36)=params(19)*(-params(11));
g1(24,38)=(-params(2));
g1(24,50)=(-(params(8)*(1-params(7))*params(18)));
g1(25,38)=(-1);
g1(25,39)=1;
g1(25,50)=(-(params(14)*params(5)));
g1(26,38)=(-1);
g1(26,40)=1;
g1(26,50)=(-((-params(5))*(1-params(14))));
g1(27,41)=params(19);
g1(27,43)=params(19)*(-params(11));
g1(27,45)=(-params(2));
g1(27,50)=params(18)*params(8)*params(7);
g1(28,45)=(-1);
g1(28,46)=1;
g1(28,50)=(-(params(5)*(1-params(15))));
g1(29,45)=(-1);
g1(29,47)=1;
g1(29,50)=(-(params(15)*(-params(5))));
g1(30,35)=(-1);
g1(30,3)=1-params(7);
g1(30,50)=(-(1-params(7)));
g1(30,51)=1;
g1(31,34)=(-params(7));
g1(31,41)=(-(1-params(7)));
g1(31,52)=1;
g1(32,36)=(-params(7));
g1(32,43)=(-(1-params(7)));
g1(32,53)=1;
g1(33,38)=(-params(7));
g1(33,45)=(-(1-params(7)));
g1(33,54)=1;
g1(34,36)=params(4);
g1(34,38)=(-params(2));
g1(34,50)=(-params(14));
g1(35,43)=params(4);
g1(35,45)=(-params(2));
g1(35,50)=params(15);
g1(36,33)=(-1);
g1(36,48)=1;
g1(37,48)=(-1);
g1(37,49)=1;
g1(38,4)=1;
g1(38,18)=1;
g1(38,34)=(-1);
g1(39,5)=1;
g1(39,19)=1;
g1(39,36)=(-1);
g1(40,6)=1;
g1(40,20)=1;
g1(40,38)=(-1);
g1(41,4)=1;
g1(41,5)=(-1);
g1(41,7)=1;
g1(42,8)=1;
g1(42,24)=1;
g1(42,41)=(-1);
g1(43,9)=1;
g1(43,25)=1;
g1(43,43)=(-1);
g1(44,10)=1;
g1(44,26)=1;
g1(44,45)=(-1);
g1(45,8)=1;
g1(45,9)=(-1);
g1(45,11)=1;
g1(46,12)=1;
g1(46,30)=1;
g1(46,50)=(-1);
g1(47,4)=(-params(7));
g1(47,8)=(-(1-params(7)));
g1(47,13)=1;
g1(48,5)=(-params(7));
g1(48,9)=(-(1-params(7)));
g1(48,14)=1;
g1(49,6)=(-params(7));
g1(49,10)=(-(1-params(7)));
g1(49,15)=1;
g1(50,1)=(-params(29));
g1(50,16)=1;
g1(50,65)=1;
g1(51,2)=(-params(29));
g1(51,17)=1;
g1(51,66)=1;

end
