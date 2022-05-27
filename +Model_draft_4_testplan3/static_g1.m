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
    T = Model_draft_4_testplan3.static_g1_tt(T, y, x, params);
end
g1 = zeros(28, 28);
g1(1,1)=params(5)*T(1)*T(1)*getPowerDeriv(y(1)/params(5),1-params(1),2)/(1-params(1));
g1(1,21)=(-(1-params(6)));
g1(1,22)=(-params(6));
g1(2,15)=1;
g1(2,21)=1;
g1(3,16)=1;
g1(3,22)=1;
g1(4,4)=params(5)*(-(T(1)*T(1)*getPowerDeriv(y(4)/params(5),1+params(4),2)/(1+params(4))));
g1(4,6)=(-y(15));
g1(4,15)=(-y(6));
g1(5,5)=params(5)*params(10)*getPowerDeriv(y(5),1-params(9),2)/(1-params(9));
g1(5,15)=1;
g1(6,4)=(-y(15));
g1(6,6)=params(14)*y(17)*(-(exp(x(1))*getPowerDeriv(y(6),params(12),2)));
g1(6,15)=(-y(4));
g1(6,17)=1+params(14)*T(5);
g1(7,7)=params(14)*y(19)*(-(exp(x(2))*getPowerDeriv(y(7),params(13),2)));
g1(7,19)=1+params(14)*T(7);
g1(8,8)=(1-params(5))*T(2)*T(2)*getPowerDeriv(y(8)/(1-params(5)),1-params(1),2)/(1-params(1));
g1(8,23)=(-(1-params(7)));
g1(8,24)=(-params(7));
g1(9,15)=1;
g1(9,24)=1;
g1(10,16)=1;
g1(10,23)=1;
g1(11,11)=(1-params(5))*(-(y(14)*T(2)*T(2)*getPowerDeriv(y(11)/(1-params(5)),1+params(4),2)/(1+params(4))));
g1(11,13)=(-y(16));
g1(11,14)=(1-params(5))*(-(T(3)/(1+params(4))));
g1(11,16)=(-y(13));
g1(12,12)=(1-params(5))*params(10)*getPowerDeriv(y(12),1-params(9),2)/(1-params(9));
g1(12,16)=1;
g1(13,11)=(-y(16));
g1(13,13)=params(14)*y(18)*(-(exp(x(3))*getPowerDeriv(y(13),params(12),2)));
g1(13,16)=(-y(11));
g1(13,18)=1+params(14)*T(9);
g1(14,11)=(1-params(5))*(-(T(3)/(1+params(4))));
g1(14,14)=params(14)*y(20)*(-(exp(x(4))*getPowerDeriv(y(14),params(13),2)));
g1(14,20)=1+params(14)*T(11);
g1(15,2)=1;
g1(15,4)=(-y(6));
g1(15,5)=1;
g1(15,6)=(-y(4));
g1(15,9)=1;
g1(16,3)=1;
g1(16,10)=1;
g1(16,11)=(-y(13));
g1(16,12)=1;
g1(16,13)=(-y(11));
g1(17,6)=1-T(4);
g1(18,13)=1-T(8);
g1(19,7)=1-T(6);
g1(20,14)=1-T(10);
g1(21,1)=(-(1-params(6)));
g1(21,2)=1;
g1(22,1)=(-params(6));
g1(22,3)=1;
g1(23,8)=(-(1-params(7)));
g1(23,10)=1;
g1(24,8)=(-params(7));
g1(24,9)=1;
g1(25,25)=1;
g1(26,26)=1;
g1(27,27)=1;
g1(28,28)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
