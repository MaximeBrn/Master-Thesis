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
    T = Model_draft_4_testplan5.static_g1_tt(T, y, x, params);
end
g1 = zeros(29, 29);
g1(1,1)=params(5)*T(10)*getPowerDeriv(T(1),(-params(1)),1);
g1(1,13)=(-(1-params(6)));
g1(1,14)=(-params(7));
g1(2,2)=params(5)*y(6)*T(10)*getPowerDeriv(T(2),params(4),1);
g1(2,5)=(-y(13));
g1(2,6)=params(5)*T(3);
g1(2,13)=(-y(5));
g1(3,4)=params(5)*params(9)*T(10)*getPowerDeriv(y(4)/params(5),(-params(8)),1);
g1(3,13)=(-1);
g1(4,7)=(1-params(5))*T(14)*getPowerDeriv(T(4),(-params(1)),1);
g1(4,13)=(-params(6));
g1(4,14)=(-(1-params(7)));
g1(5,8)=(1-params(5))*y(12)*T(14)*getPowerDeriv(T(5),params(4),1);
g1(5,11)=(-y(14));
g1(5,12)=(1-params(5))*T(6);
g1(5,14)=(-y(11));
g1(6,10)=params(9)*(1-params(5))*T(14)*getPowerDeriv(y(10)/(1-params(5)),(-params(8)),1);
g1(6,14)=(-1);
g1(7,1)=1-params(6);
g1(7,2)=(-y(5));
g1(7,4)=1;
g1(7,5)=(-y(2));
g1(7,7)=params(7);
g1(8,1)=params(6);
g1(8,7)=1-params(7);
g1(8,8)=(-y(11));
g1(8,10)=1;
g1(8,11)=(-y(8));
g1(9,5)=1-exp(x(1))*getPowerDeriv(y(5),params(10),1);
g1(10,6)=1-exp(x(3))*getPowerDeriv(y(6),params(11),1);
g1(11,11)=1-exp(x(2))*getPowerDeriv(y(11),params(10),1);
g1(12,12)=1-exp(x(4))*getPowerDeriv(y(12),params(11),1);
g1(13,1)=(-(1/y(1)-1/(y(1))));
g1(13,15)=1;
g1(14,2)=(-(1/y(2)-1/(y(2))));
g1(14,16)=1;
g1(15,4)=(-(1/y(4)-1/(y(4))));
g1(15,17)=1;
g1(16,5)=(-(1/y(5)-1/(y(5))));
g1(16,18)=1;
g1(17,6)=(-(1/y(6)-1/(y(6))));
g1(17,19)=1;
g1(18,16)=(-1);
g1(18,18)=(-1);
g1(18,20)=1;
g1(19,7)=(-(1/y(7)-1/(y(7))));
g1(19,21)=1;
g1(20,8)=(-(1/y(8)-1/(y(8))));
g1(20,22)=1;
g1(21,10)=(-(1/y(10)-1/(y(10))));
g1(21,23)=1;
g1(22,11)=(-(1/y(11)-1/(y(11))));
g1(22,24)=1;
g1(23,12)=(-(1/y(12)-1/(y(12))));
g1(23,25)=1;
g1(24,22)=(-1);
g1(24,24)=(-1);
g1(24,26)=1;
g1(25,2)=(-y(5));
g1(25,3)=1;
g1(25,5)=(-y(2));
g1(26,8)=(-y(11));
g1(26,9)=1;
g1(26,11)=(-y(8));
g1(27,1)=(-(params(5)*T(11)));
g1(27,2)=(-(params(5)*(-T(12))));
g1(27,4)=(-(params(5)*T(13)));
g1(27,7)=(-((1-params(5))*T(15)));
g1(27,8)=(-((1-params(5))*(-T(16))));
g1(27,10)=(-((1-params(5))*T(17)));
g1(27,12)=(-((1-params(5))*(-(T(8)/(1+params(4))))));
g1(27,29)=1;
g1(28,1)=(-T(11));
g1(28,2)=T(12);
g1(28,4)=(-T(13));
g1(28,27)=1;
g1(29,7)=(-T(15));
g1(29,8)=T(16);
g1(29,10)=(-T(17));
g1(29,12)=T(8)/(1+params(4));
g1(29,28)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
