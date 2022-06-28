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
    T = MOdel_main_5.objective.static_g1_tt(T, y, x, params);
end
g1 = zeros(1, 141);
g1(1,26)=2*y(26);
g1(1,36)=2*y(36);
g1(1,51)=y(57)+2*y(51);
g1(1,57)=y(51)-y(60)+2*y(57);
g1(1,60)=2*y(60)-y(57);
g1(1,69)=y(70);
g1(1,70)=y(69)+2*y(70);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
