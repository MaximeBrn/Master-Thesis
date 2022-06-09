function g2 = static_g2(T, y, x, params, T_flag)
% function g2 = static_g2(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g2
%

if T_flag
    T = Model_draft_4_testplan6.objective.static_g2_tt(T, y, x, params);
end
g2_i = zeros(10,1);
g2_j = zeros(10,1);
g2_v = zeros(10,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_i(5)=1;
g2_i(6)=1;
g2_i(7)=1;
g2_i(8)=1;
g2_i(9)=1;
g2_i(10)=1;
g2_j(1)=1;
g2_j(2)=38;
g2_j(3)=42;
g2_j(4)=182;
g2_j(5)=112;
g2_j(6)=223;
g2_j(7)=260;
g2_j(8)=264;
g2_j(9)=404;
g2_j(10)=334;
g2_v(1)=params(5)*T(9)*T(9)*getPowerDeriv(T(1),1-params(1),2)/(1-params(1));
g2_v(2)=params(5)*(-(y(6)*T(13)/(1+params(4))));
g2_v(3)=params(5)*(-(T(10)/(1+params(4))));
g2_v(4)=g2_v(3);
g2_v(5)=params(5)*params(9)*T(9)*T(9)*getPowerDeriv(T(2),1-params(8),2)/(1-params(8));
g2_v(6)=(1-params(5))*T(11)*T(11)*getPowerDeriv(T(5),1-params(1),2)/(1-params(1));
g2_v(7)=(1-params(5))*(-(y(12)*T(14)/(1+params(4))));
g2_v(8)=(1-params(5))*(-(T(12)/(1+params(4))));
g2_v(9)=g2_v(8);
g2_v(10)=(1-params(5))*params(9)*T(11)*T(11)*getPowerDeriv(T(6),1-params(8),2)/(1-params(8));
g2 = sparse(g2_i,g2_j,g2_v,1,1296);
end
