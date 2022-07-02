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
    T = MODEL_MAIN_8.objective.static_resid_tt(T, y, x, params);
end
residual = zeros(1, 1);
residual(1) = (1-params(11))*(params(2)+(1-params(11))*params(3))*y(79)^2+(1-params(11))*params(7)*(1-params(7))*params(8)*(1+(1-params(11))*params(3))*y(66)^2+params(11)*params(7)*(params(4)+params(11)*params(3))*y(60)^2+params(7)*params(6)/params(22)*y(31)^2+(params(4)+params(11)*params(3))*params(11)*(1-params(7))*y(69)^2+(1-params(7))*params(6)/params(23)*y(41)^2+y(79)*params(3)*2*(1-params(11))*y(78)+y(66)*params(3)*params(11)*(1-params(11))*(1-params(7))*params(7)*2*params(8)*y(85);
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end