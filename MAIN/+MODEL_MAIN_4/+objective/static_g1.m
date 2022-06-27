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
    T = MODEL_MAIN_4.objective.static_g1_tt(T, y, x, params);
end
g1 = zeros(1, 123);
g1(1,1)=0.5*params(3)*2*y(1);
g1(1,2)=0.5*params(11)*params(4)*2*y(2);
g1(1,3)=0.5*params(2)*(1-params(11))*2*y(3);
g1(1,7)=0.5*params(3)*2*y(7);
g1(1,8)=0.5*params(11)*params(4)*2*y(8);
g1(1,9)=0.5*params(2)*(1-params(11))*2*y(9);
g1(1,13)=T(1)*2*y(13);
g1(1,41)=0.5*params(6)/params(22)*2*y(41);
g1(1,49)=0.5*params(6)/params(23)*2*y(49);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
