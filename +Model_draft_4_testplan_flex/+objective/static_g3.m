function g3 = static_g3(T, y, x, params, T_flag)
% function g3 = static_g3(T, y, x, params, T_flag)
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
%   g3
%

if T_flag
    T = Model_draft_4_testplan_flex.objective.static_g3_tt(T, y, x, params);
end
g3_i = zeros(7,1);
g3_j = zeros(7,1);
g3_v = zeros(7,1);

g3_i(1)=1;
g3_i(2)=1;
g3_i(3)=1;
g3_i(4)=1;
g3_i(5)=1;
g3_i(6)=1;
g3_i(7)=1;
g3_j(1)=1;
g3_j(2)=1192;
g3_j(3)=3574;
g3_j(4)=7147;
g3_j(5)=8338;
g3_j(6)=8342;
g3_j(7)=10720;
g3_v(1)=params(5)*T(6)*T(6)*T(6)*getPowerDeriv(T(1),1-params(1),3)/(1-params(1));
g3_v(2)=params(5)*(-(T(6)*T(6)*T(6)*getPowerDeriv(T(2),1+params(4),3)/(1+params(4))));
g3_v(3)=params(5)*params(9)*getPowerDeriv(y(4),1-params(8),3)/(1-params(8));
g3_v(4)=(1-params(5))*T(7)*T(7)*T(7)*getPowerDeriv(T(3),1-params(1),3)/(1-params(1));
g3_v(5)=(1-params(5))*(-(y(12)*T(7)*T(7)*T(7)*getPowerDeriv(T(4),1+params(4),3)/(1+params(4))));
g3_v(6)=(1-params(5))*(-(T(9)/(1+params(4))));
g3_v(7)=(1-params(5))*params(9)*getPowerDeriv(y(10),1-params(8),3)/(1-params(8));
g3 = sparse(g3_i,g3_j,g3_v,1,39304);
end
