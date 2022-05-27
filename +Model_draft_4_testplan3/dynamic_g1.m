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
    T = Model_draft_4_testplan3.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(28, 44);
g1(1,5)=params(5)*T(5)*T(5)*getPowerDeriv(y(5)/params(5),1-params(1),2)/(1-params(1));
g1(1,25)=(-(1-params(6)));
g1(1,26)=(-params(6));
g1(2,19)=1;
g1(2,25)=1;
g1(3,20)=1;
g1(3,26)=1;
g1(4,8)=params(5)*(-(T(5)*T(5)*getPowerDeriv(y(8)/params(5),1+params(4),2)/(1+params(4))));
g1(4,10)=(-y(19));
g1(4,19)=(-y(10));
g1(5,9)=params(5)*params(10)*getPowerDeriv(y(9),1-params(9),2)/(1-params(9));
g1(5,19)=1;
g1(6,8)=(-y(19));
g1(6,10)=params(14)*y(33)*T(14);
g1(6,19)=(-y(8));
g1(6,21)=1;
g1(6,33)=params(14)*T(9);
g1(6,37)=params(14)*y(33)*T(9);
g1(7,11)=params(14)*y(35)*T(16);
g1(7,23)=1;
g1(7,35)=params(14)*T(10);
g1(7,38)=params(14)*y(35)*T(10);
g1(8,12)=(1-params(5))*T(6)*T(6)*getPowerDeriv(y(12)/(1-params(5)),1-params(1),2)/(1-params(1));
g1(8,27)=(-(1-params(7)));
g1(8,28)=(-params(7));
g1(9,19)=1;
g1(9,28)=1;
g1(10,20)=1;
g1(10,27)=1;
g1(11,15)=(1-params(5))*(-(y(18)*T(17)/(1+params(4))));
g1(11,17)=(-y(20));
g1(11,18)=(1-params(5))*(-(T(8)/(1+params(4))));
g1(11,20)=(-y(17));
g1(12,16)=(1-params(5))*params(10)*getPowerDeriv(y(16),1-params(9),2)/(1-params(9));
g1(12,20)=1;
g1(13,15)=(-y(20));
g1(13,17)=params(14)*y(34)*T(19);
g1(13,20)=(-y(15));
g1(13,22)=1;
g1(13,34)=params(14)*T(11);
g1(13,39)=params(14)*y(34)*T(11);
g1(14,15)=(1-params(5))*(-(T(8)/(1+params(4))));
g1(14,18)=params(14)*y(36)*T(21);
g1(14,24)=1;
g1(14,36)=params(14)*T(12);
g1(14,40)=params(14)*y(36)*T(12);
g1(15,6)=1;
g1(15,8)=(-y(10));
g1(15,9)=1;
g1(15,10)=(-y(8));
g1(15,13)=1;
g1(16,7)=1;
g1(16,14)=1;
g1(16,15)=(-y(17));
g1(16,16)=1;
g1(16,17)=(-y(15));
g1(17,1)=T(13);
g1(17,10)=1;
g1(17,41)=(-T(1));
g1(18,3)=T(18);
g1(18,17)=1;
g1(18,43)=(-T(2));
g1(19,2)=T(15);
g1(19,11)=1;
g1(19,42)=(-T(3));
g1(20,4)=T(20);
g1(20,18)=1;
g1(20,44)=(-T(4));
g1(21,5)=(-(1-params(6)));
g1(21,6)=1;
g1(22,5)=(-params(6));
g1(22,7)=1;
g1(23,12)=(-(1-params(7)));
g1(23,14)=1;
g1(24,12)=(-params(7));
g1(24,13)=1;
g1(25,41)=(-1);
g1(25,29)=1;
g1(26,42)=(-1);
g1(26,30)=1;
g1(27,43)=(-1);
g1(27,31)=1;
g1(28,44)=(-1);
g1(28,32)=1;

end
