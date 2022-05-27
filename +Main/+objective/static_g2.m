function g2 = static_g2(T, y, x, params, T_flag)
% function g2 = static_g2(T, y, x, params, T_flag)
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
%   g2
%

if T_flag
    T = Main.objective.static_g2_tt(T, y, x, params);
end
g2_i = zeros(4,1);
g2_j = zeros(4,1);
g2_v = zeros(4,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_j(1)=193;
g2_j(2)=241;
g2_j(3)=625;
g2_j(4)=673;
g2_v(1)=params(6)*2*(1+params(5));
g2_v(2)=params(6)*2*1/params(12);
g2_v(3)=(1-params(6))*2*(1+params(5));
g2_v(4)=(1-params(6))*2*1/params(14);
g2 = sparse(g2_i,g2_j,g2_v,1,2209);
end
