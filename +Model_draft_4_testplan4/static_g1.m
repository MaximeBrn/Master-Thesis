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
    T = Model_draft_4_testplan4.static_g1_tt(T, y, x, params);
end
g1 = zeros(8, 8);
g1(1,1)=1/params(5)*getPowerDeriv(y(1)/params(5),(-params(1)),1);
g1(1,3)=(-(params(5)*(1-params(6))*params(10)*T(5)));
g1(1,7)=(-(params(10)*params(6)*(1-params(5))*T(6)));
g1(2,3)=(-(params(10)*params(5)*params(7)*T(5)));
g1(2,5)=1/(1-params(5))*getPowerDeriv(y(5)/(1-params(5)),(-params(1)),1);
g1(2,7)=(-(params(10)*(1-params(5))*(-params(7))*T(6)));
g1(3,2)=1/y(4)*1/params(5)*getPowerDeriv(y(2)/params(5),params(4),1);
g1(3,3)=(-(params(5)*params(10)*T(5)));
g1(3,4)=T(3)*(-1)/(y(4)*y(4));
g1(4,6)=1/y(8)*1/(1-params(5))*getPowerDeriv(y(6)/(1-params(5)),params(4),1);
g1(4,7)=(-(params(10)*(1-params(5))*T(6)));
g1(4,8)=T(4)*(-1)/(y(8)*y(8));
g1(5,1)=1-params(6);
g1(5,2)=(-y(4));
g1(5,3)=1;
g1(5,4)=(-y(2));
g1(5,5)=params(7);
g1(6,1)=params(6);
g1(6,5)=1-params(7);
g1(6,6)=(-y(8));
g1(6,7)=1;
g1(6,8)=(-y(6));
g1(7,4)=1-exp(x(1))*getPowerDeriv(y(4),params(11),1);
g1(8,8)=1-exp(x(2))*getPowerDeriv(y(8),params(11),1);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
