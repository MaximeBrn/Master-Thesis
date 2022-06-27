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
    T = Model_MAIN_5.objective.static_resid_tt(T, y, x, params);
end
residual = zeros(1, 1);
residual(1) = T(1)*y(57)^2+T(2)*(params(6)/params(22)*y(26)^2+params(3)*y(50)^2+params(11)*params(4)*y(51)^2+params(2)*(1-params(11))*y(52)^2)+T(3)*(params(6)/params(23)*y(36)^2+params(3)*y(59)^2+params(11)*params(4)*y(60)^2+params(2)*(1-params(11))*y(61)^2);
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
