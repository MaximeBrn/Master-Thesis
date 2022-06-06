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
    T = Model_draft_4_Natural.static_g1_tt(T, y, x, params);
end
g1 = zeros(14, 14);
g1(1,1)=1+params(5);
g1(1,2)=(-1);
g1(1,3)=(-params(5));
g1(1,5)=(-params(1));
g1(1,11)=(-params(18));
g1(2,6)=1+params(5);
g1(2,7)=(-1);
g1(2,8)=(-params(5));
g1(2,10)=(-params(1));
g1(2,11)=params(19);
g1(3,5)=params(1);
g1(3,10)=(-params(1));
g1(3,11)=(-(1-params(2)));
g1(4,3)=(-T(1));
g1(4,4)=(-(T(1)*(-params(3))));
g1(4,5)=1;
g1(4,11)=(params(2)+params(11)-1)/params(1);
g1(5,8)=(-T(1));
g1(5,9)=(-(T(1)*(-params(3))));
g1(5,10)=1;
g1(5,11)=(-(params(13)/params(1)));
g1(6,1)=(-params(24));
g1(6,2)=(-params(26));
g1(6,3)=(-params(20));
g1(6,4)=1;
g1(6,5)=(-params(22));
g1(6,6)=(-params(25));
g1(6,7)=(-params(27));
g1(6,8)=(-params(21));
g1(6,10)=(-params(23));
g1(6,11)=(-params(28));
g1(7,1)=(-params(33));
g1(7,2)=(-params(35));
g1(7,3)=(-params(29));
g1(7,5)=(-params(31));
g1(7,6)=(-params(34));
g1(7,7)=(-params(36));
g1(7,8)=(-params(30));
g1(7,9)=1;
g1(7,10)=(-params(32));
g1(7,11)=(-params(37));
g1(8,14)=0.09999999999999998;
g1(9,3)=(-params(6));
g1(9,8)=(-(1-params(6)));
g1(9,12)=1;
g1(10,4)=(-params(6));
g1(10,9)=(-(1-params(6)));
g1(10,13)=1;
g1(11,1)=1-params(16);
g1(12,2)=1-params(17);
g1(13,6)=1-params(16);
g1(14,7)=1-params(17);
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
