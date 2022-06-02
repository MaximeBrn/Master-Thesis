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
    T = Model_draft_4_Efficient.static_g1_tt(T, y, x, params);
end
g1 = zeros(10, 10);
g1(1,1)=(1-params(18))*params(5);
g1(1,3)=(-((1-params(18))*params(5)));
g1(1,5)=(-params(1));
g1(1,6)=params(18)*params(5);
g1(1,8)=(-(params(18)*params(5)));
g1(2,1)=params(5)*params(19);
g1(2,3)=(-(params(5)*params(19)));
g1(2,6)=params(5)*(1-params(19));
g1(2,8)=(-(params(5)*(1-params(19))));
g1(2,10)=(-params(1));
g1(3,3)=1;
g1(3,4)=(-params(3));
g1(3,5)=(-((1-params(18))*(1-params(3))));
g1(3,10)=(-(params(18)*(1-params(3))));
g1(4,5)=(-(params(19)*(1-params(3))));
g1(4,8)=1;
g1(4,9)=(-params(3));
g1(4,10)=(-((1-params(19))*(1-params(3))));
g1(5,1)=1+params(5);
g1(5,2)=(-1);
g1(5,3)=(-params(5));
g1(5,4)=(-params(8));
g1(6,6)=1+params(5);
g1(6,7)=(-1);
g1(6,8)=(-params(5));
g1(6,9)=(-params(8));
g1(7,1)=1-params(16);
g1(8,2)=1-params(17);
g1(9,6)=1-params(16);
g1(10,7)=1-params(17);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
