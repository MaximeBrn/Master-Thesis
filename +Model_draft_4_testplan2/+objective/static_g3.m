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
    T = Model_draft_4_testplan2.objective.static_g3_tt(T, y, x, params);
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
g3_j(2)=3784;
g3_j(3)=5045;
g3_j(4)=10089;
g3_j(5)=13872;
g3_j(6)=13876;
g3_j(7)=15133;
g3_v(1)=params(5)*getPowerDeriv(y(1),1-params(1),3)/(1-params(1));
g3_v(2)=params(5)*(-(getPowerDeriv(y(4),1+params(4),3)/(1+params(4))));
g3_v(3)=params(5)*params(10)*getPowerDeriv(y(5),1-params(9),3)/(1-params(9));
g3_v(4)=(1-params(5))*getPowerDeriv(y(9),1-params(1),3)/(1-params(1));
g3_v(5)=(1-params(5))*(-(y(16)*getPowerDeriv(y(12),1+params(4),3)/(1+params(4))));
g3_v(6)=(1-params(5))*(-(T(3)/(1+params(4))));
g3_v(7)=(1-params(5))*params(10)*getPowerDeriv(y(13),1-params(9),3)/(1-params(9));
g3 = sparse(g3_i,g3_j,g3_v,1,42875);
end
