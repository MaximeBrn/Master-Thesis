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
    T = Model_draft_4_testplan4.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(10, 18);
g1(1,5)=params(5)*T(9)*getPowerDeriv(y(5)/params(5),(-params(1)),1);
g1(1,7)=(-(params(5)*(1-params(6))*params(10)*T(11)));
g1(1,12)=(-(params(10)*params(6)*(1-params(5))*T(16)));
g1(2,7)=(-(params(10)*params(5)*params(7)*T(11)));
g1(2,10)=(1-params(5))*T(14)*getPowerDeriv(y(10)/(1-params(5)),(-params(1)),1);
g1(2,12)=(-(params(10)*(1-params(5))*(1-params(7))*T(16)));
g1(3,6)=y(9)/y(8)*T(10);
g1(3,7)=(-(params(10)*T(11)));
g1(3,8)=T(3)*(-y(9))/(y(8)*y(8));
g1(3,9)=T(3)*1/y(8);
g1(4,11)=y(14)/y(13)*T(15);
g1(4,12)=(-(params(10)*T(16)));
g1(4,13)=T(4)*(-y(14))/(y(13)*y(13));
g1(4,14)=T(4)*1/y(13);
g1(5,5)=1-params(6);
g1(5,6)=(-y(8));
g1(5,7)=1;
g1(5,8)=(-y(6));
g1(5,10)=params(7);
g1(6,5)=params(6);
g1(6,10)=1-params(7);
g1(6,11)=(-y(13));
g1(6,12)=1;
g1(6,13)=(-y(11));
g1(7,1)=T(12);
g1(7,8)=1;
g1(7,15)=(-T(5));
g1(8,3)=T(17);
g1(8,13)=1;
g1(8,16)=(-T(6));
g1(9,2)=T(13);
g1(9,9)=1;
g1(9,17)=(-T(7));
g1(10,4)=T(18);
g1(10,14)=1;
g1(10,18)=(-T(8));

end
