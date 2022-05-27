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
    T = Model_draft_4.static_g1_tt(T, y, x, params);
end
g1 = zeros(27, 27);
g1(1,1)=params(6)*2*(1+params(5));
g1(1,3)=params(6)*(1+params(5))*(-2);
g1(1,16)=(-(params(10)*(-(1+params(5)))));
g1(1,20)=1+params(28)*(-params(14));
g1(1,26)=(-params(20));
g1(1,27)=(-params(26));
g1(2,16)=(-params(10));
g1(2,21)=1+params(28)*(-params(15));
g1(3,1)=params(6)*(1+params(5))*(-2);
g1(3,3)=params(6)*2*(1+params(5));
g1(3,15)=1-T(3);
g1(3,16)=(-(params(10)*T(2)));
g1(3,19)=(-T(1));
g1(3,25)=(-params(6));
g1(3,26)=(-params(16));
g1(3,27)=(-params(22));
g1(4,4)=params(6)*2*1/params(10);
g1(4,15)=T(3)*(-T(4));
g1(4,16)=1+T(3)*(-params(4));
g1(4,24)=(-params(6));
g1(4,26)=(-params(18));
g1(4,27)=(-params(24));
g1(5,15)=params(3)*T(3)-params(3);
g1(5,16)=T(5);
g1(5,19)=(-(T(1)*(-params(3))));
g1(5,26)=1;
g1(6,6)=(1-params(6))*2*(1+params(5));
g1(6,8)=(1-params(6))*(1+params(5))*(-2);
g1(6,18)=(-((-(1+params(5)))*params(12)));
g1(6,22)=1+params(28)*(-params(14));
g1(6,26)=(-params(21));
g1(6,27)=(-params(27));
g1(7,18)=(-params(12));
g1(7,23)=1+params(28)*(-params(15));
g1(8,6)=(1-params(6))*(1+params(5))*(-2);
g1(8,8)=(1-params(6))*2*(1+params(5));
g1(8,17)=1-T(3);
g1(8,18)=(-(T(2)*params(12)));
g1(8,19)=T(1);
g1(8,25)=(-(1-params(6)));
g1(8,26)=(-params(17));
g1(8,27)=(-params(23));
g1(9,9)=(1-params(6))*2*1/params(12);
g1(9,17)=T(3)*(-T(4));
g1(9,18)=1+T(3)*(-params(4));
g1(9,24)=(-(1-params(6)));
g1(9,26)=(-params(19));
g1(9,27)=(-params(25));
g1(10,17)=params(3)*T(3)-params(3);
g1(10,18)=T(6);
g1(10,19)=(-(params(3)*T(1)));
g1(10,27)=1;
g1(11,15)=T(4);
g1(11,17)=T(4);
g1(12,15)=T(7)+T(3)*(-T(7));
g1(12,16)=(-(params(10)*(1-params(6)*params(2)-params(9))));
g1(12,17)=(params(11)-params(6)*params(2))/params(1)+T(3)*(-((params(11)-params(6)*params(2))/params(1)));
g1(12,18)=(-(params(12)*(params(11)-params(6)*params(2))));
g1(12,19)=1;
g1(13,24)=1;
g1(14,25)=1;
g1(15,4)=(-T(4));
g1(15,11)=T(4);
g1(16,1)=(-(params(10)*(-(1+params(5)))));
g1(16,2)=(-params(10));
g1(16,3)=(-(params(10)*T(2)));
g1(16,4)=1-params(4);
g1(16,5)=T(5);
g1(16,12)=(-(params(10)*(1-params(6)*params(2)-params(9))));
g1(17,9)=(-T(4));
g1(17,11)=T(4);
g1(18,6)=(-((-(1+params(5)))*params(12)));
g1(18,7)=(-params(12));
g1(18,8)=(-(T(2)*params(12)));
g1(18,9)=1-params(4);
g1(18,10)=T(6);
g1(18,12)=(-(params(12)*(params(11)-params(6)*params(2))));
g1(19,3)=(-T(1));
g1(19,5)=(-(T(1)*(-params(3))));
g1(19,8)=T(1);
g1(19,10)=(-(params(3)*T(1)));
g1(19,12)=1;
g1(20,1)=1-params(14);
g1(21,2)=1-params(15);
g1(22,6)=1-params(14);
g1(23,7)=1-params(15);
g1(24,4)=(-params(6));
g1(24,9)=(-(1-params(6)));
g1(24,13)=1;
g1(25,3)=(-params(6));
g1(25,8)=(-(1-params(6)));
g1(25,14)=1;
g1(26,1)=(-params(20));
g1(26,3)=(-params(16));
g1(26,4)=(-params(18));
g1(26,5)=1;
g1(26,6)=(-params(21));
g1(26,8)=(-params(17));
g1(26,9)=(-params(19));
g1(27,1)=(-params(26));
g1(27,3)=(-params(22));
g1(27,4)=(-params(24));
g1(27,6)=(-params(27));
g1(27,8)=(-params(23));
g1(27,9)=(-params(25));
g1(27,10)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
