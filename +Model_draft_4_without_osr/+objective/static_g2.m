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
    T = Model_draft_4_without_osr.objective.static_g2_tt(T, y, x, params);
end
g2_i = zeros(12,1);
g2_j = zeros(12,1);
g2_v = zeros(12,1);

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
g2_i(11)=1;
g2_i(12)=1;
g2_j(1)=1;
g2_j(2)=3;
g2_j(3)=51;
g2_j(4)=53;
g2_j(5)=79;
g2_j(6)=105;
g2_j(7)=131;
g2_j(8)=133;
g2_j(9)=181;
g2_j(10)=183;
g2_j(11)=209;
g2_j(12)=235;
g2_v(1)=params(6)*2*(1+params(5));
g2_v(2)=params(6)*(1+params(5))*(-2);
g2_v(3)=g2_v(2);
g2_v(4)=params(6)*2*(1+params(5));
g2_v(5)=params(6)*2*1/params(10);
g2_v(6)=params(6)*2*params(16);
g2_v(7)=(1-params(6))*2*(1+params(5));
g2_v(8)=(1-params(6))*(1+params(5))*(-2);
g2_v(9)=g2_v(8);
g2_v(10)=(1-params(6))*2*(1+params(5));
g2_v(11)=(1-params(6))*2*1/params(12);
g2_v(12)=(1-params(6))*2*params(16);
g2 = sparse(g2_i,g2_j,g2_v,1,625);
end
