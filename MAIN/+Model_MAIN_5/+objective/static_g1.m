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
    T = Model_MAIN_5.objective.static_g1_tt(T, y, x, params);
end
g1 = zeros(1, 139);
g1(1,26)=T(2)*params(6)/params(22)*2*y(26);
g1(1,36)=T(3)*params(6)/params(23)*2*y(36);
g1(1,50)=T(2)*params(3)*2*y(50);
g1(1,51)=T(2)*params(11)*params(4)*2*y(51);
g1(1,52)=T(2)*params(2)*(1-params(11))*2*y(52);
g1(1,57)=T(1)*2*y(57);
g1(1,59)=T(3)*params(3)*2*y(59);
g1(1,60)=T(3)*params(11)*params(4)*2*y(60);
g1(1,61)=T(3)*params(2)*(1-params(11))*2*y(61);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
