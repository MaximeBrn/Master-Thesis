function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = Model_draft_4_testplan4.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(28,1);
g2_j = zeros(28,1);
g2_v = zeros(28,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=2;
g2_i(5)=2;
g2_i(6)=2;
g2_i(7)=3;
g2_i(8)=3;
g2_i(9)=3;
g2_i(10)=3;
g2_i(11)=3;
g2_i(12)=4;
g2_i(13)=4;
g2_i(14)=4;
g2_i(15)=4;
g2_i(16)=4;
g2_i(17)=5;
g2_i(18)=5;
g2_i(19)=6;
g2_i(20)=6;
g2_i(21)=7;
g2_i(22)=7;
g2_i(23)=7;
g2_i(24)=7;
g2_i(25)=8;
g2_i(26)=8;
g2_i(27)=8;
g2_i(28)=8;
g2_j(1)=27;
g2_j(2)=53;
g2_j(3)=105;
g2_j(4)=53;
g2_j(5)=79;
g2_j(6)=105;
g2_j(7)=40;
g2_j(8)=42;
g2_j(9)=64;
g2_j(10)=53;
g2_j(11)=66;
g2_j(12)=92;
g2_j(13)=94;
g2_j(14)=116;
g2_j(15)=105;
g2_j(16)=118;
g2_j(17)=42;
g2_j(18)=64;
g2_j(19)=94;
g2_j(20)=116;
g2_j(21)=1;
g2_j(22)=11;
g2_j(23)=121;
g2_j(24)=131;
g2_j(25)=14;
g2_j(26)=24;
g2_j(27)=134;
g2_j(28)=144;
g2_v(1)=T(7)*T(7)*getPowerDeriv(y(3)/params(5),(-params(1)),2);
g2_v(2)=(-(params(5)*(1-params(6))*params(10)*T(15)));
g2_v(3)=(-(params(10)*params(6)*(1-params(5))*T(16)));
g2_v(4)=(-(params(10)*params(5)*params(7)*T(15)));
g2_v(5)=T(11)*T(11)*getPowerDeriv(y(7)/(1-params(5)),(-params(1)),2);
g2_v(6)=(-(params(10)*(1-params(5))*(-params(7))*T(16)));
g2_v(7)=1/y(6)*T(7)*T(7)*getPowerDeriv(y(4)/params(5),params(4),2);
g2_v(8)=T(8)*(-1)/(y(6)*y(6));
g2_v(9)=g2_v(8);
g2_v(10)=(-(params(5)*params(10)*T(15)));
g2_v(11)=T(3)*(y(6)+y(6))/(y(6)*y(6)*y(6)*y(6));
g2_v(12)=1/y(10)*T(11)*T(11)*getPowerDeriv(y(8)/(1-params(5)),params(4),2);
g2_v(13)=T(12)*(-1)/(y(10)*y(10));
g2_v(14)=g2_v(13);
g2_v(15)=(-(params(10)*(1-params(5))*T(16)));
g2_v(16)=T(4)*(y(10)+y(10))/(y(10)*y(10)*y(10)*y(10));
g2_v(17)=(-1);
g2_v(18)=g2_v(17);
g2_v(19)=(-1);
g2_v(20)=g2_v(19);
g2_v(21)=(-(exp(x(it_, 1))*getPowerDeriv(y(1),params(11),2)));
g2_v(22)=T(10);
g2_v(23)=g2_v(22);
g2_v(24)=(-T(5));
g2_v(25)=(-(exp(x(it_, 2))*getPowerDeriv(y(2),params(11),2)));
g2_v(26)=T(14);
g2_v(27)=g2_v(26);
g2_v(28)=(-T(6));
g2 = sparse(g2_i,g2_j,g2_v,8,144);
end
