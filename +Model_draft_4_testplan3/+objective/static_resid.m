function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = Model_draft_4_testplan3.objective.static_resid_tt(T, y, x, params);
end
residual = zeros(1, 1);
residual(1) = params(5)*(T(1)^(1-params(1))/(1-params(1))+params(10)*y(5)^(1-params(9))/(1-params(9))-T(2)^(1+params(4))/(1+params(4)))+(1-params(5))*(T(3)^(1-params(1))/(1-params(1))+params(10)*y(12)^(1-params(9))/(1-params(9))-y(14)*T(5)/(1+params(4)));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
