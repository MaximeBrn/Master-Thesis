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
    T = PLANNER_EFFICIENT_GM.static_g1_tt(T, y, x, params);
end
g1 = zeros(40, 40);
g1(1,21)=(-(1-params(5)));
g1(1,22)=(-params(5));
g1(1,27)=T(1);
g1(2,5)=(-y(23));
g1(2,23)=(-y(5));
g1(2,29)=T(1);
g1(3,21)=1;
g1(3,23)=1;
g1(4,21)=(-1);
g1(4,25)=T(1);
g1(5,2)=(-y(23));
g1(5,5)=params(10)*T(27);
g1(5,23)=(-y(2));
g1(5,31)=1+params(10)*T(16);
g1(6,6)=params(10)*T(28);
g1(6,17)=T(29);
g1(6,32)=1+params(10)*T(19);
g1(6,35)=(-T(3));
g1(7,21)=(-params(6));
g1(7,22)=(-(1-params(6)));
g1(7,28)=T(4);
g1(8,11)=(-y(24));
g1(8,24)=(-y(11));
g1(8,30)=T(4);
g1(9,22)=1;
g1(9,24)=1;
g1(10,22)=(-1);
g1(10,26)=T(4);
g1(11,8)=(-y(24));
g1(11,11)=params(10)*T(30);
g1(11,24)=(-y(8));
g1(11,33)=1+params(10)*T(22);
g1(12,12)=params(10)*T(31);
g1(12,18)=T(32);
g1(12,34)=1+params(10)*T(25);
g1(12,36)=(-T(6));
g1(13,13)=params(4)*params(7)*(-1)/(y(13)*y(13))+y(35)*(-(params(4)*params(7)*(-1)/(y(13)*y(13))));
g1(13,25)=1;
g1(13,35)=T(7);
g1(14,14)=(1-params(4))*params(7)*(-1)/(y(14)*y(14))+y(36)*(-((1-params(4))*params(7)*(-1)/(y(14)*y(14))));
g1(14,26)=1;
g1(14,36)=T(8);
g1(15,15)=params(4)*(1-params(7))*(-1)/(y(15)*y(15))+y(35)*(-(params(4)*(1-params(7))*(-1)/(y(15)*y(15))));
g1(15,27)=1;
g1(15,35)=T(9);
g1(16,16)=(1-params(4))*(1-params(7))*(-1)/(y(16)*y(16))+y(36)*(-((1-params(4))*(1-params(7))*(-1)/(y(16)*y(16))));
g1(16,28)=1;
g1(16,36)=T(10);
g1(17,6)=T(29);
g1(17,17)=T(33)+y(35)*(-T(33));
g1(17,29)=1;
g1(17,35)=(-T(12));
g1(18,12)=T(32);
g1(18,18)=T(34)+y(36)*(-T(34));
g1(18,30)=1;
g1(18,36)=(-T(14));
g1(19,35)=1;
g1(20,36)=1;
g1(21,1)=(-(1-params(5)));
g1(21,3)=1;
g1(21,4)=(-1);
g1(21,7)=(-params(6));
g1(22,1)=(-params(5));
g1(22,7)=(-(1-params(6)));
g1(22,9)=1;
g1(22,10)=(-1);
g1(23,2)=(-y(5));
g1(23,3)=1;
g1(23,5)=(-y(2));
g1(24,8)=(-y(11));
g1(24,9)=1;
g1(24,11)=(-y(8));
g1(25,4)=T(1);
g1(25,13)=1;
g1(26,10)=T(4);
g1(26,14)=1;
g1(27,1)=T(1);
g1(27,15)=1;
g1(28,7)=T(4);
g1(28,16)=1;
g1(29,2)=T(1);
g1(29,17)=1;
g1(30,8)=T(4);
g1(30,18)=1;
g1(31,5)=1-T(15);
g1(32,6)=1-T(18);
g1(33,11)=1-T(21);
g1(34,12)=1-T(24);
g1(35,6)=(-T(3));
g1(35,13)=T(7);
g1(35,15)=T(9);
g1(35,17)=(-T(12));
g1(35,19)=1;
g1(36,12)=(-T(6));
g1(36,14)=T(8);
g1(36,16)=T(10);
g1(36,18)=(-T(14));
g1(36,20)=1;
g1(37,5)=(-T(27));
g1(37,31)=T(15);
g1(37,37)=1;
g1(38,6)=(-T(28));
g1(38,32)=T(18);
g1(38,38)=1;
g1(39,11)=(-T(30));
g1(39,33)=T(21);
g1(39,39)=1;
g1(40,12)=(-T(31));
g1(40,34)=T(24);
g1(40,40)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
