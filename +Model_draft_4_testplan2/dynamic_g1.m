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
    T = Model_draft_4_testplan2.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(35, 51);
g1(1,5)=params(5)*getPowerDeriv(y(5),1-params(1),2)/(1-params(1));
g1(1,23)=1;
g1(1,31)=(-(1-params(6)));
g1(1,32)=(-params(6));
g1(2,6)=y(23)*(-(params(5)*(T(15)*T(25)+T(14)*T(14)*T(26))));
g1(2,7)=y(23)*(-(params(5)*T(14)*T(16)*T(26)));
g1(2,22)=(-1);
g1(2,23)=(-(params(5)*T(14)*T(15)));
g1(2,31)=1;
g1(3,6)=y(23)*(-(params(5)*T(16)*T(14)*T(26)));
g1(3,7)=y(23)*(-(params(5)*(T(16)*T(16)*T(26)+T(15)*T(27))));
g1(3,23)=(-(params(5)*T(15)*T(16)));
g1(3,25)=(-1);
g1(3,32)=1;
g1(4,8)=params(5)*(-(getPowerDeriv(y(8),1+params(4),2)/(1+params(4))));
g1(4,11)=(-y(21));
g1(4,21)=(-y(11));
g1(5,9)=params(5)*params(10)*getPowerDeriv(y(9),1-params(9),2)/(1-params(9));
g1(5,22)=(-1);
g1(6,21)=1;
g1(6,22)=1;
g1(6,35)=1/params(5);
g1(7,8)=(-y(21));
g1(7,11)=params(14)*y(40)*T(29);
g1(7,21)=(-y(8));
g1(7,27)=1;
g1(7,40)=params(14)*T(21);
g1(7,44)=params(14)*y(40)*T(21);
g1(8,12)=params(14)*y(42)*T(31);
g1(8,29)=1;
g1(8,42)=params(14)*T(22);
g1(8,45)=params(14)*y(42)*T(22);
g1(9,13)=(1-params(5))*getPowerDeriv(y(13),1-params(1),2)/(1-params(1));
g1(9,26)=1;
g1(9,33)=(-(1-params(7)));
g1(9,34)=(-params(7));
g1(10,14)=y(26)*(-((1-params(5))*(T(18)*T(32)+T(17)*T(17)*T(33))));
g1(10,15)=y(26)*(-((1-params(5))*T(17)*T(19)*T(33)));
g1(10,22)=(-1);
g1(10,26)=(-((1-params(5))*T(17)*T(18)));
g1(10,34)=1;
g1(11,14)=y(26)*(-((1-params(5))*T(19)*T(17)*T(33)));
g1(11,15)=y(26)*(-((1-params(5))*(T(19)*T(19)*T(33)+T(18)*T(34))));
g1(11,25)=(-1);
g1(11,26)=(-((1-params(5))*T(18)*T(19)));
g1(11,33)=1;
g1(12,16)=(1-params(5))*(-(y(20)*T(35)/(1+params(4))));
g1(12,19)=(-y(24));
g1(12,20)=(1-params(5))*(-(T(20)/(1+params(4))));
g1(12,24)=(-y(19));
g1(13,17)=(1-params(5))*params(10)*getPowerDeriv(y(17),1-params(9),2)/(1-params(9));
g1(13,25)=(-1);
g1(14,24)=1;
g1(14,25)=1;
g1(14,35)=(-(1/(1-params(5))));
g1(15,16)=(-y(24));
g1(15,19)=params(14)*y(41)*T(37);
g1(15,24)=(-y(16));
g1(15,28)=1;
g1(15,41)=params(14)*T(23);
g1(15,46)=params(14)*y(41)*T(23);
g1(16,16)=(1-params(5))*(-(T(20)/(1+params(4))));
g1(16,20)=params(14)*y(43)*T(39);
g1(16,30)=1;
g1(16,43)=params(14)*T(24);
g1(16,47)=params(14)*y(43)*T(24);
g1(17,8)=(-y(11));
g1(17,10)=1;
g1(17,11)=(-y(8));
g1(18,6)=(-1);
g1(18,9)=(-1);
g1(18,10)=1;
g1(18,14)=(-1);
g1(19,5)=1;
g1(19,6)=(-(params(5)*T(14)*T(15)));
g1(19,7)=(-(params(5)*T(15)*T(16)));
g1(20,16)=(-y(19));
g1(20,18)=1;
g1(20,19)=(-y(16));
g1(21,7)=(-1);
g1(21,15)=(-1);
g1(21,17)=(-1);
g1(21,18)=1;
g1(22,13)=1;
g1(22,14)=(-((1-params(5))*T(17)*T(18)));
g1(22,15)=(-((1-params(5))*T(18)*T(19)));
g1(23,1)=T(28);
g1(23,11)=1;
g1(23,48)=(-T(10));
g1(24,3)=T(36);
g1(24,19)=1;
g1(24,50)=(-T(11));
g1(25,2)=T(30);
g1(25,12)=1;
g1(25,49)=(-T(12));
g1(26,4)=T(38);
g1(26,20)=1;
g1(26,51)=(-T(13));
g1(27,5)=(-(1-params(6)));
g1(27,6)=1;
g1(28,5)=(-params(6));
g1(28,7)=1;
g1(29,13)=(-(1-params(7)));
g1(29,15)=1;
g1(30,13)=(-params(7));
g1(30,14)=1;
g1(31,10)=1/params(5);
g1(31,18)=(-(1/(1-params(5))));
g1(32,48)=(-1);
g1(32,36)=1;
g1(33,49)=(-1);
g1(33,37)=1;
g1(34,50)=(-1);
g1(34,38)=1;
g1(35,51)=(-1);
g1(35,39)=1;

end
