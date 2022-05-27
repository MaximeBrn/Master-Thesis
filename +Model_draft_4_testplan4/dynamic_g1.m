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
g1 = zeros(8, 12);
g1(1,3)=T(7)*getPowerDeriv(y(3)/params(5),(-params(1)),1);
g1(1,5)=(-(params(5)*(1-params(6))*params(10)*T(9)));
g1(1,9)=(-(params(10)*params(6)*(1-params(5))*T(13)));
g1(2,5)=(-(params(10)*params(5)*params(7)*T(9)));
g1(2,7)=T(11)*getPowerDeriv(y(7)/(1-params(5)),(-params(1)),1);
g1(2,9)=(-(params(10)*(1-params(5))*(-params(7))*T(13)));
g1(3,4)=1/y(6)*T(8);
g1(3,5)=(-(params(5)*params(10)*T(9)));
g1(3,6)=T(3)*(-1)/(y(6)*y(6));
g1(4,8)=1/y(10)*T(12);
g1(4,9)=(-(params(10)*(1-params(5))*T(13)));
g1(4,10)=T(4)*(-1)/(y(10)*y(10));
g1(5,3)=1-params(6);
g1(5,4)=(-y(6));
g1(5,5)=1;
g1(5,6)=(-y(4));
g1(5,7)=params(7);
g1(6,3)=params(6);
g1(6,7)=1-params(7);
g1(6,8)=(-y(10));
g1(6,9)=1;
g1(6,10)=(-y(8));
g1(7,1)=T(10);
g1(7,6)=1;
g1(7,11)=(-T(5));
g1(8,2)=T(14);
g1(8,10)=1;
g1(8,12)=(-T(6));

end
