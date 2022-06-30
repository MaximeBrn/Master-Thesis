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
    T = MODEL_MAIN_8.objective.static_g2_tt(T, y, x, params);
end
g2_i = zeros(10,1);
g2_j = zeros(10,1);
g2_v = zeros(10,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_i(5)=1;
g2_i(6)=1;
g2_i(7)=1;
g2_i(8)=1;
g2_i(9)=1;
g2_i(10)=1;
g2_j(1)=5071;
g2_j(2)=6761;
g2_j(3)=9972;
g2_j(4)=10986;
g2_j(5)=11005;
g2_j(6)=14178;
g2_j(7)=11493;
g2_j(8)=13015;
g2_j(9)=13182;
g2_j(10)=13183;
g2_v(1)=2*params(7)*params(6)/params(22);
g2_v(2)=2*(1-params(7))*params(6)/params(23);
g2_v(3)=2*params(11)*params(7)*(params(4)+params(11)*params(3));
g2_v(4)=2*(1-params(11))*params(7)*(1-params(7))*params(8)*(1+(1-params(11))*params(3));
g2_v(5)=params(3)*params(11)*(1-params(11))*(1-params(7))*params(7)*2*params(8);
g2_v(6)=g2_v(5);
g2_v(7)=2*(params(4)+params(11)*params(3))*params(11)*(1-params(7));
g2_v(8)=params(3)*2*(1-params(11));
g2_v(9)=g2_v(8);
g2_v(10)=2*(1-params(11))*(params(2)+(1-params(11))*params(3));
g2 = sparse(g2_i,g2_j,g2_v,1,28224);
end
