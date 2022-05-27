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
    T = Model_draft_4_without_osr.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(25, 48);
g1(1,9)=params(6)*2*(1+params(5));
g1(1,11)=params(6)*(1+params(5))*(-2);
g1(1,24)=(-(params(10)*(-(1+params(5)))));
g1(1,28)=1;
g1(1,41)=params(17)*(-params(14));
g1(2,24)=(-params(10));
g1(2,29)=1;
g1(2,42)=params(17)*(-params(15));
g1(3,9)=params(6)*(1+params(5))*(-2);
g1(3,11)=params(6)*2*(1+params(5));
g1(3,5)=(-T(6));
g1(3,23)=1;
g1(3,24)=(-(params(10)*T(3)));
g1(3,27)=(-T(5));
g1(3,33)=(-params(6));
g1(4,12)=params(6)*2*1/params(10);
g1(4,5)=T(6)*(-T(1));
g1(4,6)=T(6)*(-params(4));
g1(4,24)=1;
g1(4,32)=(-params(6));
g1(5,13)=params(6)*2*params(16);
g1(5,5)=params(3)*T(6);
g1(5,23)=(-params(3));
g1(5,24)=T(7);
g1(5,27)=(-(T(5)*(-params(3))));
g1(6,14)=(1-params(6))*2*(1+params(5));
g1(6,16)=(1-params(6))*(1+params(5))*(-2);
g1(6,26)=(-(params(12)*(-(1+params(5)))));
g1(6,30)=1;
g1(6,43)=params(17)*(-params(14));
g1(7,26)=(-params(12));
g1(7,31)=1;
g1(7,44)=params(17)*(-params(15));
g1(8,14)=(1-params(6))*(1+params(5))*(-2);
g1(8,16)=(1-params(6))*2*(1+params(5));
g1(8,7)=(-T(6));
g1(8,25)=1;
g1(8,26)=(-(T(3)*params(12)));
g1(8,27)=T(5);
g1(8,33)=(-(1-params(6)));
g1(9,17)=(1-params(6))*2*1/params(12);
g1(9,7)=T(6)*(-T(1));
g1(9,8)=T(6)*(-params(4));
g1(9,26)=1;
g1(9,32)=(-(1-params(6)));
g1(10,18)=(1-params(6))*2*params(16);
g1(10,7)=params(3)*T(6);
g1(10,25)=(-params(3));
g1(10,26)=T(8);
g1(10,27)=(-(params(3)*T(5)));
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
g1(15,34)=(-1);
g1(15,35)=(-T(1));
g1(15,13)=(-params(3));
g1(15,36)=params(3);
g1(15,19)=T(1);
g1(15,20)=T(2);
g1(15,40)=(-T(2));
g1(16,9)=(-(params(10)*(-(1+params(5)))));
g1(16,10)=(-params(10));
g1(16,11)=(-(params(10)*T(3)));
g1(16,12)=1;
g1(16,35)=(-params(4));
g1(16,13)=T(7);
g1(16,20)=(-((1-params(2)*params(6)-params(9))*params(10)));
g1(17,16)=1;
g1(17,37)=(-1);
g1(17,38)=(-T(1));
g1(17,18)=(-params(3));
g1(17,39)=params(3);
g1(17,19)=T(1);
g1(17,20)=T(4);
g1(17,40)=(-T(4));
g1(18,14)=(-(params(12)*(-(1+params(5)))));
g1(18,15)=(-params(12));
g1(18,16)=(-(T(3)*params(12)));
g1(18,17)=1;
g1(18,38)=(-params(4));
g1(18,18)=T(8);
g1(18,20)=(-((params(11)-params(2)*params(6))*params(12)));
g1(19,11)=(-T(5));
g1(19,13)=(-(T(5)*(-params(3))));
g1(19,16)=T(5);
g1(19,18)=(-(params(3)*T(5)));
g1(19,20)=1;
g1(20,1)=(-params(14));
g1(20,9)=1;
g1(20,45)=(-1);
g1(21,2)=(-params(15));
g1(21,10)=1;
g1(21,46)=(-1);
g1(22,3)=(-params(14));
g1(22,14)=1;
g1(22,47)=(-1);
g1(23,4)=(-params(15));
g1(23,15)=1;
g1(23,48)=(-1);
g1(24,12)=(-params(6));
g1(24,17)=(-(1-params(6)));
g1(24,21)=1;
g1(25,11)=(-params(6));
g1(25,16)=(-(1-params(6)));
g1(25,22)=1;

end
