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
    T = model_draft_4_Natural.static_g1_tt(T, y, x, params);
end
g1 = zeros(24, 24);
g1(1,14)=1+params(5);
g1(1,21)=1+params(21)*(-params(16));
g1(2,14)=(-1);
g1(2,22)=1+params(21)*(-params(17));
g1(3,3)=params(6)*0.5*2*params(5);
g1(3,14)=(-params(5));
g1(3,17)=(-T(1));
g1(3,19)=(-params(6));
g1(4,4)=params(6)*0.5*2*params(3)*params(8)/params(7);
g1(4,17)=(-(T(1)*(-params(3))));
g1(4,20)=(-params(6));
g1(5,5)=params(6)*0.5*2*(1-params(3))*params(1);
g1(5,14)=(-params(1));
g1(5,16)=params(1);
g1(5,17)=1;
g1(6,15)=1+params(5);
g1(6,23)=1+params(21)*(-params(16));
g1(7,15)=(-1);
g1(7,24)=1+params(21)*(-params(17));
g1(8,8)=0.5*(1-params(6))*2*params(5);
g1(8,15)=(-params(5));
g1(8,18)=(-T(1));
g1(8,19)=(-(1-params(6)));
g1(9,9)=0.5*(1-params(6))*2*params(3)*params(8)/params(7);
g1(9,18)=(-(T(1)*(-params(3))));
g1(9,20)=(-(1-params(6)));
g1(10,10)=0.5*(1-params(6))*2*(1-params(3))*params(1);
g1(10,15)=(-params(1));
g1(10,16)=(-params(1));
g1(10,18)=1;
g1(11,14)=(-params(18));
g1(11,15)=params(19);
g1(11,16)=(-(1-params(2)));
g1(11,17)=T(2);
g1(11,18)=(-(params(13)/params(1)));
g1(12,19)=1;
g1(13,20)=1;
g1(14,1)=1+params(5);
g1(14,2)=(-1);
g1(14,3)=(-params(5));
g1(14,5)=(-params(1));
g1(14,11)=(-params(18));
g1(15,6)=1+params(5);
g1(15,7)=(-1);
g1(15,8)=(-params(5));
g1(15,10)=(-params(1));
g1(15,11)=params(19);
g1(16,5)=params(1);
g1(16,10)=(-params(1));
g1(16,11)=(-(1-params(2)));
g1(17,3)=(-T(1));
g1(17,4)=(-(T(1)*(-params(3))));
g1(17,5)=1;
g1(17,11)=T(2);
g1(18,8)=(-T(1));
g1(18,9)=(-(T(1)*(-params(3))));
g1(18,10)=1;
g1(18,11)=(-(params(13)/params(1)));
g1(19,3)=(-params(6));
g1(19,8)=(-(1-params(6)));
g1(19,12)=1;
g1(20,4)=(-params(6));
g1(20,9)=(-(1-params(6)));
g1(20,13)=1;
g1(21,1)=1-params(16);
g1(22,2)=1-params(17);
g1(23,6)=1-params(16);
g1(24,7)=1-params(17);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
