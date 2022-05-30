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
    T = Main.objective.static_g1_tt(T, y, x, params);
end
g1 = zeros(1, 55);
g1(1,5)=params(6)*(1+params(5))*2*y(5);
g1(1,6)=params(6)*1/params(12)*2*y(6);
g1(1,16)=(1-params(6))*(1+params(5))*2*y(16);
g1(1,17)=(1-params(6))*1/params(14)*2*y(17);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end