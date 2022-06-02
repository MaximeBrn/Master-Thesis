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
    T = Model_draft_4_testplan5.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(29, 37);
g1(1,5)=params(5)*T(14)*getPowerDeriv(T(1),(-params(1)),1);
g1(1,17)=(-(1-params(6)));
g1(1,18)=(-params(7));
g1(2,6)=params(5)*y(10)*T(14)*getPowerDeriv(T(2),params(4),1);
g1(2,9)=(-y(17));
g1(2,10)=params(5)*T(3);
g1(2,17)=(-y(9));
g1(3,8)=params(5)*params(9)*T(14)*getPowerDeriv(y(8)/params(5),(-params(8)),1);
g1(3,17)=(-1);
g1(4,11)=(1-params(5))*T(18)*getPowerDeriv(T(4),(-params(1)),1);
g1(4,17)=(-params(6));
g1(4,18)=(-(1-params(7)));
g1(5,12)=(1-params(5))*y(16)*T(18)*getPowerDeriv(T(5),params(4),1);
g1(5,15)=(-y(18));
g1(5,16)=(1-params(5))*T(6);
g1(5,18)=(-y(15));
g1(6,14)=params(9)*(1-params(5))*T(18)*getPowerDeriv(y(14)/(1-params(5)),(-params(8)),1);
g1(6,18)=(-1);
g1(7,5)=1-params(6);
g1(7,6)=(-y(9));
g1(7,8)=1;
g1(7,9)=(-y(6));
g1(7,11)=params(7);
g1(8,5)=params(6);
g1(8,11)=1-params(7);
g1(8,12)=(-y(15));
g1(8,14)=1;
g1(8,15)=(-y(12));
g1(9,1)=(-(exp(x(it_, 1))*getPowerDeriv(y(1),params(10),1)));
g1(9,9)=1;
g1(9,34)=(-T(7));
g1(10,2)=(-(exp(x(it_, 3))*getPowerDeriv(y(2),params(11),1)));
g1(10,10)=1;
g1(10,36)=(-T(8));
g1(11,3)=(-(exp(x(it_, 2))*getPowerDeriv(y(3),params(10),1)));
g1(11,15)=1;
g1(11,35)=(-T(9));
g1(12,4)=(-(exp(x(it_, 4))*getPowerDeriv(y(4),params(11),1)));
g1(12,16)=1;
g1(12,37)=(-T(10));
g1(13,5)=(-(1/y(5)));
g1(13,19)=1;
g1(14,6)=(-(1/y(6)));
g1(14,20)=1;
g1(15,8)=(-(1/y(8)));
g1(15,21)=1;
g1(16,9)=(-(1/y(9)));
g1(16,22)=1;
g1(17,10)=(-(1/y(10)));
g1(17,23)=1;
g1(18,20)=(-1);
g1(18,22)=(-1);
g1(18,24)=1;
g1(19,11)=(-(1/y(11)));
g1(19,25)=1;
g1(20,12)=(-(1/y(12)));
g1(20,26)=1;
g1(21,14)=(-(1/y(14)));
g1(21,27)=1;
g1(22,15)=(-(1/y(15)));
g1(22,28)=1;
g1(23,16)=(-(1/y(16)));
g1(23,29)=1;
g1(24,26)=(-1);
g1(24,28)=(-1);
g1(24,30)=1;
g1(25,6)=(-y(9));
g1(25,7)=1;
g1(25,9)=(-y(6));
g1(26,12)=(-y(15));
g1(26,13)=1;
g1(26,15)=(-y(12));
g1(27,5)=(-(params(5)*T(15)));
g1(27,6)=(-(params(5)*(-T(16))));
g1(27,8)=(-(params(5)*T(17)));
g1(27,11)=(-((1-params(5))*T(19)));
g1(27,12)=(-((1-params(5))*(-T(20))));
g1(27,14)=(-((1-params(5))*T(21)));
g1(27,16)=(-((1-params(5))*(-(T(12)/(1+params(4))))));
g1(27,33)=1;
g1(28,5)=(-T(15));
g1(28,6)=T(16);
g1(28,8)=(-T(17));
g1(28,31)=1;
g1(29,11)=(-T(19));
g1(29,12)=T(20);
g1(29,14)=(-T(21));
g1(29,16)=T(12)/(1+params(4));
g1(29,32)=1;

end
