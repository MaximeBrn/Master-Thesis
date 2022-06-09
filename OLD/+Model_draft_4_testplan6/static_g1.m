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
    T = Model_draft_4_testplan6.static_g1_tt(T, y, x, params);
end
g1 = zeros(36, 36);
g1(1,1)=params(5)*T(1)*T(1)*getPowerDeriv(y(1)/params(5),1-params(1),2)/(1-params(1));
g1(1,19)=(1-params(6))/params(5);
g1(1,20)=params(7)/params(5);
g1(1,23)=(-T(1));
g1(2,2)=params(5)*(-(y(6)*T(1)*T(1)*getPowerDeriv(T(2),1+params(4),2)/(1+params(4))));
g1(2,5)=(-y(31));
g1(2,6)=params(5)*(-(T(3)/(1+params(4))));
g1(2,25)=(-T(1));
g1(2,31)=(-y(5));
g1(3,19)=(-T(1));
g1(3,31)=1;
g1(4,4)=params(5)*params(9)*T(1)*T(1)*getPowerDeriv(T(4),1-params(8),2)/(1-params(8));
g1(4,19)=T(1);
g1(4,21)=(-T(1));
g1(5,2)=(-y(31));
g1(5,5)=params(12)*T(21);
g1(5,27)=1+params(12)*T(10);
g1(5,31)=(-y(2));
g1(6,2)=params(5)*(-(T(3)/(1+params(4))));
g1(6,6)=params(12)*T(22);
g1(6,28)=1+params(12)*T(13);
g1(7,7)=(1-params(5))*T(5)*T(5)*getPowerDeriv(y(7)/(1-params(5)),1-params(1),2)/(1-params(1));
g1(7,19)=params(6)/(1-params(5));
g1(7,20)=(1-params(7))/(1-params(5));
g1(7,24)=(-T(5));
g1(8,8)=(1-params(5))*(-(y(12)*T(5)*T(5)*getPowerDeriv(T(6),1+params(4),2)/(1+params(4))));
g1(8,11)=(-y(32));
g1(8,12)=(1-params(5))*(-(T(7)/(1+params(4))));
g1(8,26)=(-T(5));
g1(8,32)=(-y(11));
g1(9,20)=(-T(5));
g1(9,32)=1;
g1(10,10)=(1-params(5))*params(9)*T(5)*T(5)*getPowerDeriv(T(8),1-params(8),2)/(1-params(8));
g1(10,20)=T(5);
g1(10,22)=(-T(5));
g1(11,8)=(-y(32));
g1(11,11)=params(12)*T(23);
g1(11,29)=1+params(12)*T(16);
g1(11,32)=(-y(8));
g1(12,8)=(1-params(5))*(-(T(7)/(1+params(4))));
g1(12,12)=params(12)*T(24);
g1(12,30)=1+params(12)*T(19);
g1(13,21)=1;
g1(14,22)=1;
g1(15,23)=1;
g1(16,24)=1;
g1(17,25)=1;
g1(18,26)=1;
g1(19,1)=(1-params(6))/params(5);
g1(19,3)=(-T(1));
g1(19,4)=T(1);
g1(19,7)=params(6)/(1-params(5));
g1(20,1)=params(7)/params(5);
g1(20,7)=(1-params(7))/(1-params(5));
g1(20,9)=(-T(5));
g1(20,10)=T(5);
g1(21,4)=(-T(1));
g1(21,13)=1;
g1(22,10)=(-T(5));
g1(22,14)=1;
g1(23,1)=(-T(1));
g1(23,15)=1;
g1(24,7)=(-T(5));
g1(24,16)=1;
g1(25,2)=(-T(1));
g1(25,17)=1;
g1(26,8)=(-T(5));
g1(26,18)=1;
g1(27,5)=1-T(9);
g1(28,6)=1-T(12);
g1(29,11)=1-T(15);
g1(30,12)=1-T(18);
g1(31,2)=(-y(5));
g1(31,3)=1;
g1(31,5)=(-y(2));
g1(32,8)=(-y(11));
g1(32,9)=1;
g1(32,11)=(-y(8));
g1(33,5)=(-T(21));
g1(33,27)=T(9);
g1(33,33)=1;
g1(34,6)=(-T(22));
g1(34,28)=T(12);
g1(34,34)=1;
g1(35,11)=(-T(23));
g1(35,29)=T(15);
g1(35,35)=1;
g1(36,12)=(-T(24));
g1(36,30)=T(18);
g1(36,36)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
