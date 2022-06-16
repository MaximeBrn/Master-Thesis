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
    T = Model_MAIN_2.objective.static_g2_tt(T, y, x, params);
end
g2_i = zeros(13,1);
g2_j = zeros(13,1);
g2_v = zeros(13,1);

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
g2_i(13)=1;
g2_j(1)=1;
g2_j(2)=89;
g2_j(3)=177;
g2_j(4)=186;
g2_j(5)=960;
g2_j(6)=353;
g2_j(7)=441;
g2_j(8)=529;
g2_j(9)=534;
g2_j(10)=964;
g2_j(11)=969;
g2_j(12)=2289;
g2_j(13)=2905;
g2_v(1)=0.5*params(7)*2*params(3);
g2_v(2)=0.5*params(7)*2*params(4)*params(11);
g2_v(3)=0.5*params(7)*(2*params(2)*(1-params(11))+2*T(1));
g2_v(4)=0.5*params(7)*T(1)*(-2);
g2_v(5)=g2_v(4);
g2_v(6)=0.5*(1-params(7))*2*params(3);
g2_v(7)=0.5*(1-params(7))*2*params(4)*params(11);
g2_v(8)=0.5*(1-params(7))*(2*params(2)*(1-params(11))+2*T(2));
g2_v(9)=0.5*(1-params(7))*T(2)*(-2);
g2_v(10)=g2_v(9);
g2_v(11)=0.5*params(7)*2*T(1)+0.5*(1-params(7))*2*T(2);
g2_v(12)=0.5*params(7)*2*params(6)/params(16);
g2_v(13)=0.5*(1-params(7))*2*params(6)/params(17);
g2 = sparse(g2_i,g2_j,g2_v,1,7569);
end
