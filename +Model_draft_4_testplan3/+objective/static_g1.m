function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = Model_draft_4_testplan3.objective.static_g1_tt(T, y, x, params);
end
g1 = zeros(1, 28);
g1(1,1)=params(5)*T(6)*getPowerDeriv(T(1),1-params(1),1)/(1-params(1));
g1(1,4)=params(5)*(-(T(6)*getPowerDeriv(T(2),1+params(4),1)/(1+params(4))));
g1(1,5)=params(5)*params(10)*getPowerDeriv(y(5),1-params(9),1)/(1-params(9));
g1(1,8)=(1-params(5))*T(7)*getPowerDeriv(T(3),1-params(1),1)/(1-params(1));
g1(1,11)=(1-params(5))*(-(y(14)*T(8)/(1+params(4))));
g1(1,12)=(1-params(5))*params(10)*getPowerDeriv(y(12),1-params(9),1)/(1-params(9));
g1(1,14)=(1-params(5))*(-(T(5)/(1+params(4))));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
