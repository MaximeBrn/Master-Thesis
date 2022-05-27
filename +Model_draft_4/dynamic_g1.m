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
    T = Model_draft_4.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(27, 50);
g1(1,9)=params(6)*2*(1+params(5));
g1(1,11)=params(6)*(1+params(5))*(-2);
g1(1,24)=(-(params(10)*(-(1+params(5)))));
g1(1,28)=1;
g1(1,43)=params(28)*(-params(14));
g1(1,34)=(-params(20));
g1(1,35)=(-params(26));
g1(2,24)=(-params(10));
g1(2,29)=1;
g1(2,44)=params(28)*(-params(15));
g1(3,9)=params(6)*(1+params(5))*(-2);
g1(3,11)=params(6)*2*(1+params(5));
g1(3,5)=(-T(6));
g1(3,23)=1;
g1(3,24)=(-(params(10)*T(3)));
g1(3,27)=(-T(5));
g1(3,33)=(-params(6));
g1(3,34)=(-params(16));
g1(3,35)=(-params(22));
g1(4,12)=params(6)*2*1/params(10);
g1(4,5)=T(6)*(-T(1));
g1(4,6)=T(6)*(-params(4));
g1(4,24)=1;
g1(4,32)=(-params(6));
g1(4,34)=(-params(18));
g1(4,35)=(-params(24));
g1(5,5)=params(3)*T(6);
g1(5,23)=(-params(3));
g1(5,24)=T(7);
g1(5,27)=(-(T(5)*(-params(3))));
g1(5,34)=1;
g1(6,14)=(1-params(6))*2*(1+params(5));
g1(6,16)=(1-params(6))*(1+params(5))*(-2);
g1(6,26)=(-(params(12)*(-(1+params(5)))));
g1(6,30)=1;
g1(6,45)=params(28)*(-params(14));
g1(6,34)=(-params(21));
g1(6,35)=(-params(27));
g1(7,26)=(-params(12));
g1(7,31)=1;
g1(7,46)=params(28)*(-params(15));
g1(8,14)=(1-params(6))*(1+params(5))*(-2);
g1(8,16)=(1-params(6))*2*(1+params(5));
g1(8,7)=(-T(6));
g1(8,25)=1;
g1(8,26)=(-(T(3)*params(12)));
g1(8,27)=T(5);
g1(8,33)=(-(1-params(6)));
g1(8,34)=(-params(17));
g1(8,35)=(-params(23));
g1(9,17)=(1-params(6))*2*1/params(12);
g1(9,7)=T(6)*(-T(1));
g1(9,8)=T(6)*(-params(4));
g1(9,26)=1;
g1(9,32)=(-(1-params(6)));
g1(9,34)=(-params(19));
g1(9,35)=(-params(25));
g1(10,7)=params(3)*T(6);
g1(10,25)=(-params(3));
g1(10,26)=T(8);
g1(10,27)=(-(params(3)*T(5)));
g1(10,35)=1;
g1(11,23)=T(1);
g1(11,25)=T(1);
g1(12,5)=T(6)*(-T(2));
g1(12,23)=T(2);
g1(12,24)=(-((1-params(2)*params(6)-params(9))*params(10)));
g1(12,7)=T(6)*(-T(4));
g1(12,25)=T(4);
g1(12,26)=(-((params(11)-params(2)*params(6))*params(12)));
g1(12,27)=1;
g1(13,32)=1;
g1(14,33)=1;
g1(15,11)=1;
g1(15,36)=(-1);
g1(15,37)=(-T(1));
g1(15,13)=(-params(3));
g1(15,38)=params(3);
g1(15,19)=T(1);
g1(15,20)=T(2);
g1(15,42)=(-T(2));
g1(16,9)=(-(params(10)*(-(1+params(5)))));
g1(16,10)=(-params(10));
g1(16,11)=(-(params(10)*T(3)));
g1(16,12)=1;
g1(16,37)=(-params(4));
g1(16,13)=T(7);
g1(16,20)=(-((1-params(2)*params(6)-params(9))*params(10)));
g1(17,16)=1;
g1(17,39)=(-1);
g1(17,40)=(-T(1));
g1(17,18)=(-params(3));
g1(17,41)=params(3);
g1(17,19)=T(1);
g1(17,20)=T(4);
g1(17,42)=(-T(4));
g1(18,14)=(-(params(12)*(-(1+params(5)))));
g1(18,15)=(-params(12));
g1(18,16)=(-(T(3)*params(12)));
g1(18,17)=1;
g1(18,40)=(-params(4));
g1(18,18)=T(8);
g1(18,20)=(-((params(11)-params(2)*params(6))*params(12)));
g1(19,11)=(-T(5));
g1(19,13)=(-(T(5)*(-params(3))));
g1(19,16)=T(5);
g1(19,18)=(-(params(3)*T(5)));
g1(19,20)=1;
g1(20,1)=(-params(14));
g1(20,9)=1;
g1(20,47)=(-1);
g1(21,2)=(-params(15));
g1(21,10)=1;
g1(21,48)=(-1);
g1(22,3)=(-params(14));
g1(22,14)=1;
g1(22,49)=(-1);
g1(23,4)=(-params(15));
g1(23,15)=1;
g1(23,50)=(-1);
g1(24,12)=(-params(6));
g1(24,17)=(-(1-params(6)));
g1(24,21)=1;
g1(25,11)=(-params(6));
g1(25,16)=(-(1-params(6)));
g1(25,22)=1;
g1(26,9)=(-params(20));
g1(26,11)=(-params(16));
g1(26,12)=(-params(18));
g1(26,13)=1;
g1(26,14)=(-params(21));
g1(26,16)=(-params(17));
g1(26,17)=(-params(19));
g1(27,9)=(-params(26));
g1(27,11)=(-params(22));
g1(27,12)=(-params(24));
g1(27,14)=(-params(27));
g1(27,16)=(-params(23));
g1(27,17)=(-params(25));
g1(27,18)=1;

end
