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
    T = PLANNER_FLEXIBLE_GM.objective.static_g3_tt(T, y, x, params);
end
g3_i = zeros(8,1);
g3_j = zeros(8,1);
g3_v = zeros(8,1);

g3_i(1)=1;
g3_i(2)=1;
g3_i(3)=1;
g3_i(4)=1;
g3_i(5)=1;
g3_i(6)=1;
g3_i(7)=1;
g3_i(8)=1;
g3_j(1)=9509;
g3_j(2)=20136;
g3_j(3)=21685;
g3_j(4)=23492;
g3_j(5)=25299;
g3_j(6)=27106;
g3_j(7)=28913;
g3_j(8)=30720;
g3_v(1)=params(4)*(-(T(5)/(1+params(3))));
g3_v(2)=(1-params(4))*(-(T(6)/(1+params(3))));
g3_v(3)=params(4)*params(7)*(y(13)+y(13))/(y(13)*y(13)*y(13)*y(13));
g3_v(4)=(1-params(4))*params(7)*(y(14)+y(14))/(y(14)*y(14)*y(14)*y(14));
g3_v(5)=params(4)*(1-params(7))*(y(15)+y(15))/(y(15)*y(15)*y(15)*y(15));
g3_v(6)=(1-params(4))*(1-params(7))*(y(16)+y(16))/(y(16)*y(16)*y(16)*y(16));
g3_v(7)=params(4)*(-(y(6)*getPowerDeriv(y(17),1+params(3),3)/(1+params(3))));
g3_v(8)=(1-params(4))*(-(y(12)*getPowerDeriv(y(18),1+params(3),3)/(1+params(3))));
g3 = sparse(g3_i,g3_j,g3_v,1,74088);
end
