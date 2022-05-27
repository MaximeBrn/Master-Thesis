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
    T = Model_draft_4_testplan.static_g1_tt(T, y, x, params);
end
g1 = zeros(30, 30);
g1(1,1)=params(5)*getPowerDeriv(y(1),1-params(1),2)/(1-params(1));
g1(1,19)=1;
g1(2,2)=y(19)*(-(T(8)*T(2)*getPowerDeriv(y(2),T(3),2)+T(4)*T(4)*T(25)));
g1(2,3)=y(19)*(-(T(4)*T(9)*T(25)));
g1(2,18)=(-1);
g1(2,19)=(-(T(4)*T(8)));
g1(3,2)=y(19)*(-(T(9)*T(4)*T(25)));
g1(3,3)=y(19)*(-(T(9)*T(9)*T(25)+T(8)*T(5)*getPowerDeriv(y(3),T(3),2)));
g1(3,19)=(-(T(8)*T(9)));
g1(3,21)=(-1);
g1(4,4)=params(5)*(-(getPowerDeriv(y(4),1+params(4),2)/(1+params(4))));
g1(4,7)=(-y(17));
g1(4,17)=(-y(7));
g1(5,5)=params(5)*params(10)*getPowerDeriv(y(5),1-params(9),2)/(1-params(9));
g1(5,18)=(-1);
g1(6,17)=1;
g1(6,18)=1;
g1(7,4)=(-y(17));
g1(7,7)=params(13)*y(23)*(-(exp(x(1))*getPowerDeriv(y(7),params(11),2)));
g1(7,17)=(-y(4));
g1(7,23)=1+params(13)*T(18);
g1(8,8)=params(13)*y(25)*(-(exp(x(2))*getPowerDeriv(y(8),params(12),2)));
g1(8,25)=1+params(13)*T(20);
g1(9,9)=(1-params(5))*getPowerDeriv(y(9),1-params(1),2)/(1-params(1));
g1(9,22)=1;
g1(10,10)=y(22)*(-(T(14)*T(10)*getPowerDeriv(y(10),T(3),2)+T(11)*T(11)*T(26)));
g1(10,11)=y(22)*(-(T(11)*T(15)*T(26)));
g1(10,18)=(-1);
g1(10,22)=(-(T(11)*T(14)));
g1(11,10)=y(22)*(-(T(15)*T(11)*T(26)));
g1(11,11)=y(22)*(-(T(15)*T(15)*T(26)+T(14)*T(12)*getPowerDeriv(y(11),T(3),2)));
g1(11,21)=(-1);
g1(11,22)=(-(T(14)*T(15)));
g1(12,12)=(1-params(5))*(-(y(16)*getPowerDeriv(y(12),1+params(4),2)/(1+params(4))));
g1(12,15)=(-y(20));
g1(12,16)=(1-params(5))*(-(T(16)/(1+params(4))));
g1(12,20)=(-y(15));
g1(13,13)=(1-params(5))*params(10)*getPowerDeriv(y(13),1-params(9),2)/(1-params(9));
g1(13,21)=(-1);
g1(14,20)=1;
g1(14,21)=1;
g1(15,12)=(-y(20));
g1(15,15)=params(13)*y(24)*(-(exp(x(3))*getPowerDeriv(y(15),params(11),2)));
g1(15,20)=(-y(12));
g1(15,24)=1+params(13)*T(22);
g1(16,12)=(1-params(5))*(-(T(16)/(1+params(4))));
g1(16,16)=params(13)*y(26)*(-(exp(x(4))*getPowerDeriv(y(16),params(12),2)));
g1(16,26)=1+params(13)*T(24);
g1(17,4)=(-y(7));
g1(17,6)=1;
g1(17,7)=(-y(4));
g1(18,2)=(-1);
g1(18,5)=(-1);
g1(18,6)=1;
g1(18,10)=(-1);
g1(19,1)=1;
g1(19,2)=(-(T(4)*T(8)));
g1(19,3)=(-(T(8)*T(9)));
g1(20,12)=(-y(15));
g1(20,14)=1;
g1(20,15)=(-y(12));
g1(21,3)=(-1);
g1(21,11)=(-1);
g1(21,13)=(-1);
g1(21,14)=1;
g1(22,9)=1;
g1(22,10)=(-(T(11)*T(14)));
g1(22,11)=(-(T(14)*T(15)));
g1(23,7)=1-T(17);
g1(24,15)=1-T(21);
g1(25,8)=1-T(19);
g1(26,16)=1-T(23);
g1(27,27)=1;
g1(28,28)=1;
g1(29,29)=1;
g1(30,30)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
