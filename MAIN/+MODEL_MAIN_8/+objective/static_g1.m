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
    T = MODEL_MAIN_8.objective.static_g1_tt(T, y, x, params);
end
g1 = zeros(1, 168);
g1(1,31)=params(7)*params(6)/params(22)*2*y(31);
g1(1,41)=(1-params(7))*params(6)/params(23)*2*y(41);
g1(1,60)=params(11)*params(7)*(params(4)+params(11)*params(3))*2*y(60);
g1(1,66)=(1-params(11))*params(7)*(1-params(7))*params(8)*(1+(1-params(11))*params(3))*2*y(66)+params(3)*params(11)*(1-params(11))*(1-params(7))*params(7)*2*params(8)*y(85);
g1(1,69)=(params(4)+params(11)*params(3))*params(11)*(1-params(7))*2*y(69);
g1(1,78)=y(79)*params(3)*2*(1-params(11));
g1(1,79)=(1-params(11))*(params(2)+(1-params(11))*params(3))*2*y(79)+params(3)*2*(1-params(11))*y(78);
g1(1,85)=y(66)*params(3)*params(11)*(1-params(11))*(1-params(7))*params(7)*2*params(8);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
