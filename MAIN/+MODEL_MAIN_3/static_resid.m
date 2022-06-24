function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = MODEL_MAIN_3.static_resid_tt(T, y, x, params);
end
residual = zeros(51, 1);
lhs = 0;
rhs = params(2)*y(17)+params(3)*y(15)+params(14)*y(27)-(1+params(3))*y(13);
residual(1) = lhs - rhs;
lhs = 0;
rhs = params(2)*y(23)+params(3)*y(21)-y(27)*params(15)-(1+params(3))*y(14);
residual(2) = lhs - rhs;
lhs = params(19)*(y(15)-params(11)*y(16));
rhs = params(2)*y(17)+y(27)*params(8)*(1-params(7))*params(18);
residual(3) = lhs - rhs;
lhs = params(19)*(y(21)-params(11)*y(22));
rhs = params(2)*y(23)-y(27)*params(18)*params(8)*params(7);
residual(4) = lhs - rhs;
lhs = y(27);
rhs = params(21)*(y(15)-y(21)-params(11)*(y(16)-y(22)));
residual(5) = lhs - rhs;
lhs = y(16)*params(4);
rhs = params(2)*y(17)+params(14)*y(27);
residual(6) = lhs - rhs;
lhs = y(22)*params(4);
rhs = params(2)*y(23)-y(27)*params(15);
residual(7) = lhs - rhs;
lhs = y(18);
rhs = y(17)+y(27)*params(14)*params(5);
residual(8) = lhs - rhs;
lhs = y(19);
rhs = y(17)+y(27)*(-params(5))*(1-params(14));
residual(9) = lhs - rhs;
lhs = y(24);
rhs = y(23)+y(27)*params(5)*(1-params(15));
residual(10) = lhs - rhs;
lhs = y(25);
rhs = y(23)+y(27)*params(15)*(-params(5));
residual(11) = lhs - rhs;
residual(12) = y(20);
residual(13) = y(26);
lhs = y(28);
rhs = y(15)*params(7)+y(21)*(1-params(7));
residual(14) = lhs - rhs;
lhs = y(29);
rhs = y(16)*params(7)+(1-params(7))*y(22);
residual(15) = lhs - rhs;
lhs = y(30);
rhs = params(7)*y(20)+(1-params(7))*y(26);
residual(16) = lhs - rhs;
lhs = y(31);
rhs = y(31)-1/(params(21)*params(22))*(y(45)-y(32));
residual(17) = lhs - rhs;
lhs = y(32);
rhs = y(32)*params(1)+params(16)*(y(31)*(params(3)+params(21)*params(22))-y(33)*params(11)*params(21)*params(22)+(params(19)-params(21)*params(22))*(y(38)-params(11)*y(40))-(1+params(3))*y(13));
residual(18) = lhs - rhs;
lhs = y(38);
rhs = y(38)-1/(params(21)*params(23))*(y(46)-y(39));
residual(19) = lhs - rhs;
lhs = y(39);
rhs = params(1)*y(39)+params(17)*(y(38)*(params(3)+params(21)*params(23))-y(40)*params(11)*params(21)*params(23)+(params(19)-params(21)*params(23))*(y(31)-params(11)*y(33))-(1+params(3))*y(14));
residual(20) = lhs - rhs;
lhs = y(47);
rhs = params(21)*(y(31)-y(38)-params(11)*(y(33)-y(40)));
residual(21) = lhs - rhs;
lhs = y(34);
rhs = y(31)-y(13);
residual(22) = lhs - rhs;
lhs = y(41);
rhs = y(38)-y(14);
residual(23) = lhs - rhs;
lhs = params(19)*(y(31)-params(11)*y(33));
rhs = params(2)*y(35)+params(8)*(1-params(7))*params(18)*y(47);
residual(24) = lhs - rhs;
lhs = y(36);
rhs = y(35)+params(14)*params(5)*y(47);
residual(25) = lhs - rhs;
lhs = y(37);
rhs = y(35)+(-params(5))*(1-params(14))*y(47);
residual(26) = lhs - rhs;
lhs = params(19)*(y(38)-params(11)*y(40));
rhs = params(2)*y(42)-params(18)*params(8)*params(7)*y(47);
residual(27) = lhs - rhs;
lhs = y(43);
rhs = y(42)+params(5)*(1-params(15))*y(47);
residual(28) = lhs - rhs;
lhs = y(44);
rhs = y(42)+params(15)*(-params(5))*y(47);
residual(29) = lhs - rhs;
lhs = y(48);
rhs = y(32);
residual(30) = lhs - rhs;
lhs = y(49);
rhs = params(7)*y(31)+(1-params(7))*y(38);
residual(31) = lhs - rhs;
lhs = y(50);
rhs = params(7)*y(33)+(1-params(7))*y(40);
residual(32) = lhs - rhs;
lhs = y(51);
rhs = params(7)*y(35)+(1-params(7))*y(42);
residual(33) = lhs - rhs;
lhs = params(4)*y(33);
rhs = params(2)*y(35)+params(14)*y(47);
residual(34) = lhs - rhs;
lhs = params(4)*y(40);
rhs = params(2)*y(42)-params(15)*y(47);
residual(35) = lhs - rhs;
lhs = y(45);
rhs = y(30);
residual(36) = lhs - rhs;
lhs = y(46);
rhs = y(45);
residual(37) = lhs - rhs;
lhs = y(1);
rhs = y(31)-y(15);
residual(38) = lhs - rhs;
lhs = y(2);
rhs = y(33)-y(16);
residual(39) = lhs - rhs;
lhs = y(3);
rhs = y(35)-y(17);
residual(40) = lhs - rhs;
lhs = y(4);
rhs = y(2)-y(1);
residual(41) = lhs - rhs;
lhs = y(5);
rhs = y(38)-y(21);
residual(42) = lhs - rhs;
lhs = y(6);
rhs = y(40)-y(22);
residual(43) = lhs - rhs;
lhs = y(7);
rhs = y(42)-y(23);
residual(44) = lhs - rhs;
lhs = y(8);
rhs = y(6)-y(5);
residual(45) = lhs - rhs;
lhs = y(9);
rhs = y(47)-y(27);
residual(46) = lhs - rhs;
lhs = y(10);
rhs = params(7)*y(1)+(1-params(7))*y(5);
residual(47) = lhs - rhs;
lhs = y(11);
rhs = params(7)*y(2)+(1-params(7))*y(6);
residual(48) = lhs - rhs;
lhs = y(12);
rhs = params(7)*y(3)+(1-params(7))*y(7);
residual(49) = lhs - rhs;
lhs = y(13);
rhs = y(13)*params(29)-x(1);
residual(50) = lhs - rhs;
lhs = y(14);
rhs = y(14)*params(29)-x(2);
residual(51) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
