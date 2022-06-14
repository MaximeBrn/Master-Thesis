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
    T = Planner_log.static_g1_tt(T, y, x, params);
end
g1 = zeros(23, 23);
g1(1,3)=(-(1-params(12)*params(1)));
g1(1,4)=1;
g1(1,7)=(-(params(12)*params(8)));
g1(2,3)=(-(1-params(12)*params(1)));
g1(2,5)=1;
g1(2,12)=(-(params(12)*params(8)));
g1(3,8)=(-(1-params(12)*params(1)));
g1(3,10)=1;
g1(3,12)=(-(params(12)*params(8)));
g1(4,7)=(-(params(12)*params(8)));
g1(4,8)=(-(1-params(12)*params(1)));
g1(4,9)=1;
g1(5,1)=(-(1+params(4)));
g1(5,6)=params(4);
g1(5,7)=params(8);
g1(6,2)=(-(1+params(4)));
g1(6,11)=params(4);
g1(6,12)=params(8);
g1(7,4)=(-((1-params(6))*(1-params(13))));
g1(7,6)=1;
g1(7,7)=(-params(13));
g1(7,9)=(-(params(6)*(1-params(13))));
g1(8,5)=(-((1-params(13))*params(7)));
g1(8,10)=(-((1-params(13))*(1-params(7))));
g1(8,11)=1;
g1(8,12)=(-params(13));
g1(9,3)=1;
g1(9,4)=(-(1-params(6)));
g1(9,5)=(-params(6));
g1(10,8)=1;
g1(10,9)=(-params(7));
g1(10,10)=(-(1-params(7)));
g1(11,13)=(-(1-params(12)*params(1)));
g1(11,14)=1;
g1(11,17)=(-(params(12)*params(8)));
g1(12,13)=(-(1-params(12)*params(1)));
g1(12,15)=1;
g1(12,22)=(-(params(12)*params(8)));
g1(13,18)=(-(1-params(12)*params(1)));
g1(13,20)=1;
g1(13,22)=(-(params(12)*params(8)));
g1(14,17)=(-(params(12)*params(8)));
g1(14,18)=(-(1-params(12)*params(1)));
g1(14,19)=1;
g1(15,13)=(-params(1));
g1(15,17)=params(8);
g1(15,23)=(-params(6));
g1(16,18)=(-params(1));
g1(16,22)=params(8);
g1(16,23)=params(7);
g1(17,1)=1+params(4);
g1(17,13)=(-params(1));
g1(17,16)=(-params(4));
g1(17,23)=(-params(6));
g1(18,2)=1+params(4);
g1(18,18)=(-params(1));
g1(18,21)=(-params(4));
g1(18,23)=params(7);
g1(19,16)=(-params(18));
g1(19,17)=(-(params(18)*(-params(13))));
g1(19,21)=params(18);
g1(19,22)=(-(params(13)*params(18)));
g1(19,23)=1;
g1(20,13)=(-params(1));
g1(20,16)=params(15);
g1(20,17)=params(15)*(-params(13));
g1(20,23)=(-(params(2)*(1-params(5))*params(14)));
g1(21,18)=(-params(1));
g1(21,21)=params(15);
g1(21,22)=params(15)*(-params(13));
g1(21,23)=params(14)*params(2)*params(5);
g1(22,1)=1-params(11);
g1(23,2)=1-params(11);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
