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
    T = PLANNER_FLEXIBLE_GM.objective.static_g2_tt(T, y, x, params);
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
g2_j(1)=227;
g2_j(2)=678;
g2_j(3)=480;
g2_j(4)=726;
g2_j(5)=517;
g2_j(6)=560;
g2_j(7)=603;
g2_j(8)=646;
g2_j(9)=689;
g2_j(10)=732;
g2_v(1)=params(4)*(-(T(3)/(1+params(3))));
g2_v(2)=g2_v(1);
g2_v(3)=(1-params(4))*(-(T(4)/(1+params(3))));
g2_v(4)=g2_v(3);
g2_v(5)=params(4)*params(7)*(-1)/(y(13)*y(13));
g2_v(6)=(1-params(4))*params(7)*(-1)/(y(14)*y(14));
g2_v(7)=params(4)*(1-params(7))*(-1)/(y(15)*y(15));
g2_v(8)=(1-params(4))*(1-params(7))*(-1)/(y(16)*y(16));
g2_v(9)=params(4)*(-(y(6)*T(5)/(1+params(3))));
g2_v(10)=(1-params(4))*(-(y(12)*T(6)/(1+params(3))));
g2 = sparse(g2_i,g2_j,g2_v,1,1764);
end
