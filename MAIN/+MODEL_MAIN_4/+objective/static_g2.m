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
    T = MODEL_MAIN_4.objective.static_g2_tt(T, y, x, params);
end
g2_i = zeros(9,1);
g2_j = zeros(9,1);
g2_v = zeros(9,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_i(5)=1;
g2_i(6)=1;
g2_i(7)=1;
g2_i(8)=1;
g2_i(9)=1;
g2_j(1)=1;
g2_j(2)=125;
g2_j(3)=249;
g2_j(4)=745;
g2_j(5)=869;
g2_j(6)=993;
g2_j(7)=1489;
g2_j(8)=4961;
g2_j(9)=5953;
g2_v(1)=0.5*2*params(3);
g2_v(2)=0.5*2*params(11)*params(4);
g2_v(3)=0.5*2*params(2)*(1-params(11));
g2_v(4)=0.5*2*params(3);
g2_v(5)=0.5*2*params(11)*params(4);
g2_v(6)=0.5*2*params(2)*(1-params(11));
g2_v(7)=2*T(1);
g2_v(8)=0.5*2*params(6)/params(22);
g2_v(9)=0.5*2*params(6)/params(23);
g2 = sparse(g2_i,g2_j,g2_v,1,15129);
end
