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
    T = PLANNER.static_g1_tt(T, y, x, params);
end
g1 = zeros(25, 25);
g1(1,1)=T(5)*T(26);
g1(1,2)=T(6)*params(10)*T(2)*T(25)*getPowerDeriv(T(3),T(4),1);
g1(1,6)=T(29);
g1(2,1)=T(11)*T(26);
g1(2,3)=T(6)*params(10)*T(9)*T(25)*getPowerDeriv(T(10),T(4),1);
g1(2,13)=T(34);
g1(3,8)=T(16)*T(31);
g1(3,10)=T(17)*params(10)*T(14)*T(30)*getPowerDeriv(T(15),T(4),1);
g1(3,13)=T(34);
g1(4,6)=T(29);
g1(4,8)=T(20)*T(31);
g1(4,9)=T(17)*params(10)*T(18)*T(30)*getPowerDeriv(T(19),T(4),1);
g1(5,4)=T(25)*getPowerDeriv(y(4)/params(5),params(4),1);
g1(5,6)=(-(params(9)*y(7)*T(28)));
g1(5,7)=(-T(8));
g1(6,11)=T(30)*getPowerDeriv(y(11)/(1-params(5)),params(4),1);
g1(6,13)=(-(params(9)*y(14)*T(33)));
g1(6,14)=(-T(13));
g1(7,1)=T(25);
g1(7,2)=(-(T(2)*T(25)*getPowerDeriv(T(3),T(21),1)*T(27)));
g1(7,3)=(-(T(27)*T(9)*T(25)*getPowerDeriv(T(10),T(21),1)));
g1(8,8)=T(30);
g1(8,9)=(-(T(18)*T(30)*getPowerDeriv(T(19),T(21),1)*T(32)));
g1(8,10)=(-(T(32)*T(14)*T(30)*getPowerDeriv(T(15),T(21),1)));
g1(9,2)=1;
g1(9,5)=(-1);
g1(9,6)=1;
g1(9,9)=1;
g1(10,3)=1;
g1(10,10)=1;
g1(10,12)=(-1);
g1(10,13)=1;
g1(11,4)=(-y(7));
g1(11,5)=1;
g1(11,7)=(-y(4));
g1(12,11)=(-y(14));
g1(12,12)=1;
g1(12,14)=(-y(11));
g1(13,7)=1-exp(x(1))*getPowerDeriv(y(7),params(11),1);
g1(14,14)=1-exp((-x(2)))*getPowerDeriv(y(14),params(11),1);
g1(15,5)=(-(1/y(5)-1/(y(5))));
g1(15,15)=1;
g1(16,6)=(-(1/y(6)-1/(y(6))));
g1(16,17)=1;
g1(17,1)=(-(1/y(1)-1/(y(1))));
g1(17,18)=1;
g1(18,2)=(-(1/y(2)-1/(y(2))));
g1(18,19)=1;
g1(19,3)=(-(1/y(3)-1/(y(3))));
g1(19,20)=1;
g1(20,12)=(-(1/y(12)-1/(y(12))));
g1(20,21)=1;
g1(21,13)=(-(1/y(13)-1/(y(13))));
g1(21,22)=1;
g1(22,8)=(-(1/y(8)-1/(y(8))));
g1(22,23)=1;
g1(23,9)=(-(1/y(9)-1/(y(9))));
g1(23,24)=1;
g1(24,10)=(-(1/y(10)-1/(y(10))));
g1(24,25)=1;
g1(25,5)=(-((-(y(5)-(y(5))))/(y(5)*y(5))));
g1(25,16)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
