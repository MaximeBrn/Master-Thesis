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
    T = MODEL_MAIN_9.static_resid_tt(T, y, x, params);
end
residual = zeros(85, 1);
lhs = 0;
rhs = params(2)*y(6)+params(3)*y(4)+params(14)*y(11)-(1+params(3))*y(1);
residual(1) = lhs - rhs;
lhs = 0;
rhs = params(2)*y(15)+params(3)*y(13)-y(11)*params(15)-(1+params(3))*y(2);
residual(2) = lhs - rhs;
lhs = params(19)*(y(4)-params(11)*y(5));
rhs = params(2)*y(6)+y(11)*params(8)*(1-params(7))*params(18);
residual(3) = lhs - rhs;
lhs = params(19)*(y(13)-params(11)*y(14));
rhs = params(2)*y(15)-y(11)*params(18)*params(8)*params(7);
residual(4) = lhs - rhs;
lhs = y(11);
rhs = params(21)*(y(4)-y(13)-params(11)*(y(5)-y(14)));
residual(5) = lhs - rhs;
lhs = y(5)*params(4);
rhs = params(2)*y(6)+params(14)*y(11);
residual(6) = lhs - rhs;
lhs = y(14)*params(4);
rhs = params(2)*y(15)-y(11)*params(15);
residual(7) = lhs - rhs;
lhs = y(20);
rhs = (-y(11));
residual(8) = lhs - rhs;
lhs = y(7);
rhs = y(6)+y(11)*params(14)*params(5);
residual(9) = lhs - rhs;
lhs = y(8);
rhs = y(6)+y(11)*(-params(5))*(1-params(14));
residual(10) = lhs - rhs;
lhs = y(16);
rhs = y(15)+y(11)*params(5)*(1-params(15));
residual(11) = lhs - rhs;
lhs = y(17);
rhs = y(15)+y(11)*params(15)*(-params(5));
residual(12) = lhs - rhs;
lhs = y(9);
rhs = y(4)-y(1);
residual(13) = lhs - rhs;
lhs = y(18);
rhs = y(13)-y(2);
residual(14) = lhs - rhs;
lhs = y(10);
rhs = y(5)-y(4);
residual(15) = lhs - rhs;
lhs = y(19);
rhs = y(14)-y(13);
residual(16) = lhs - rhs;
residual(17) = y(12);
residual(18) = y(21);
lhs = y(22);
rhs = y(4)*params(7)+y(13)*(1-params(7));
residual(19) = lhs - rhs;
lhs = y(23);
rhs = y(5)*params(7)+(1-params(7))*y(14);
residual(20) = lhs - rhs;
lhs = y(24);
rhs = y(6)*params(7)+y(15)*(1-params(7));
residual(21) = lhs - rhs;
lhs = y(27);
rhs = params(7)*y(12)+(1-params(7))*y(21);
residual(22) = lhs - rhs;
lhs = y(25);
rhs = params(7)*y(7)+(1-params(7))*y(16);
residual(23) = lhs - rhs;
lhs = y(26);
rhs = params(7)*y(8)+(1-params(7))*y(17);
residual(24) = lhs - rhs;
lhs = y(28);
rhs = params(7)*y(10)+(1-params(7))*y(19);
residual(25) = lhs - rhs;
lhs = y(29);
rhs = params(7)*y(9)+(1-params(7))*y(18);
residual(26) = lhs - rhs;
lhs = y(31);
rhs = y(31)*params(1)+params(16)*((params(3)+params(21)*params(22))*y(30)-params(11)*params(21)*params(22)*y(32)+(params(19)-params(21)*params(22))*(y(40)-params(11)*y(42))-(1+params(3))*y(1));
residual(27) = lhs - rhs;
lhs = y(41);
rhs = params(1)*y(41)+params(17)*(y(40)*(params(3)+params(21)*params(23))-y(42)*params(11)*params(21)*params(23)+(params(19)-params(21)*params(23))*(y(30)-params(11)*y(32))-(1+params(3))*y(2));
residual(28) = lhs - rhs;
lhs = y(30);
rhs = y(30)-1/(params(21)*params(22))*(y(39)-y(31));
residual(29) = lhs - rhs;
lhs = y(40);
rhs = y(40)-1/(params(21)*params(23))*(y(48)-y(41));
residual(30) = lhs - rhs;
lhs = y(38);
rhs = params(21)*(y(30)-y(40)-params(11)*(y(32)-y(42)));
residual(31) = lhs - rhs;
lhs = y(49);
rhs = (-y(38));
residual(32) = lhs - rhs;
lhs = y(33);
rhs = y(30)-y(1);
residual(33) = lhs - rhs;
lhs = y(43);
rhs = y(40)-y(2);
residual(34) = lhs - rhs;
lhs = params(19)*(y(30)-params(11)*y(32));
rhs = params(2)*y(34)+params(8)*(1-params(7))*params(18)*y(38);
residual(35) = lhs - rhs;
lhs = params(19)*(y(40)-params(11)*y(42));
rhs = params(2)*y(44)-params(18)*params(8)*params(7)*y(38);
residual(36) = lhs - rhs;
lhs = y(37);
rhs = y(32)-y(30);
residual(37) = lhs - rhs;
lhs = y(47);
rhs = y(42)-y(40);
residual(38) = lhs - rhs;
lhs = y(35);
rhs = y(34)+params(14)*params(5)*y(38);
residual(39) = lhs - rhs;
lhs = y(36);
rhs = y(34)+(-params(5))*(1-params(14))*y(38);
residual(40) = lhs - rhs;
lhs = y(45);
rhs = y(44)+params(5)*(1-params(15))*y(38);
residual(41) = lhs - rhs;
lhs = y(46);
rhs = y(44)+params(15)*(-params(5))*y(38);
residual(42) = lhs - rhs;
lhs = y(39);
rhs = y(55);
residual(43) = lhs - rhs;
lhs = y(48);
rhs = y(55);
residual(44) = lhs - rhs;
lhs = y(56);
rhs = params(7)*y(31)+(1-params(7))*y(41);
residual(45) = lhs - rhs;
lhs = y(50);
rhs = params(7)*y(30)+(1-params(7))*y(40);
residual(46) = lhs - rhs;
lhs = y(51);
rhs = params(7)*y(32)+(1-params(7))*y(42);
residual(47) = lhs - rhs;
lhs = y(52);
rhs = params(7)*y(34)+(1-params(7))*y(44);
residual(48) = lhs - rhs;
lhs = y(53);
rhs = params(7)*y(35)+(1-params(7))*y(45);
residual(49) = lhs - rhs;
lhs = y(54);
rhs = params(7)*y(36)+(1-params(7))*y(46);
residual(50) = lhs - rhs;
lhs = y(57);
rhs = params(7)*y(37)+(1-params(7))*y(47);
residual(51) = lhs - rhs;
lhs = y(58);
rhs = params(7)*y(33)+(1-params(7))*y(43);
residual(52) = lhs - rhs;
lhs = y(59);
rhs = y(30)-y(4);
residual(53) = lhs - rhs;
lhs = y(60);
rhs = y(32)-y(5);
residual(54) = lhs - rhs;
lhs = y(61);
rhs = y(34)-y(6);
residual(55) = lhs - rhs;
lhs = y(62);
rhs = y(35)-y(7);
residual(56) = lhs - rhs;
lhs = y(63);
rhs = y(36)-y(8);
residual(57) = lhs - rhs;
lhs = y(65);
rhs = y(33)-y(9);
residual(58) = lhs - rhs;
lhs = y(64);
rhs = y(37)-y(10);
residual(59) = lhs - rhs;
lhs = y(66);
rhs = y(38)-y(11);
residual(60) = lhs - rhs;
lhs = y(67);
rhs = y(39)-y(12);
residual(61) = lhs - rhs;
lhs = y(68);
rhs = y(40)-y(13);
residual(62) = lhs - rhs;
lhs = y(69);
rhs = y(42)-y(14);
residual(63) = lhs - rhs;
lhs = y(70);
rhs = y(44)-y(15);
residual(64) = lhs - rhs;
lhs = y(71);
rhs = y(45)-y(16);
residual(65) = lhs - rhs;
lhs = y(72);
rhs = y(46)-y(17);
residual(66) = lhs - rhs;
lhs = y(74);
rhs = y(43)-y(18);
residual(67) = lhs - rhs;
lhs = y(73);
rhs = y(47)-y(19);
residual(68) = lhs - rhs;
lhs = y(75);
rhs = y(49)-y(20);
residual(69) = lhs - rhs;
lhs = y(76);
rhs = y(48)-y(21);
residual(70) = lhs - rhs;
lhs = y(77);
rhs = params(7)*y(59)+(1-params(7))*y(68);
residual(71) = lhs - rhs;
lhs = y(78);
rhs = params(7)*y(60)+(1-params(7))*y(69);
residual(72) = lhs - rhs;
lhs = y(79);
rhs = params(7)*y(61)+(1-params(7))*y(70);
residual(73) = lhs - rhs;
lhs = y(82);
rhs = y(39)-y(27);
residual(74) = lhs - rhs;
lhs = y(85);
rhs = y(60)-y(69);
residual(75) = lhs - rhs;
lhs = y(83);
rhs = y(58)-y(29);
residual(76) = lhs - rhs;
lhs = y(84);
rhs = params(7)*y(64)+(1-params(7))*y(73);
residual(77) = lhs - rhs;
lhs = y(80);
rhs = params(7)*y(62)+(1-params(7))*y(71);
residual(78) = lhs - rhs;
lhs = y(81);
rhs = params(7)*y(63)+(1-params(7))*y(72);
residual(79) = lhs - rhs;
lhs = y(55)-y(27);
rhs = (y(55)-y(27))*0.7+y(56)*2.5+y(77)*0.125;
residual(80) = lhs - rhs;
lhs = y(64);
rhs = y(64)*params(24)+params(25)*(y(61)-y(59)-(y(79)-y(77)))+y(66)*params(26);
residual(81) = lhs - rhs;
lhs = y(73);
rhs = y(73)*params(24)+params(27)*(y(70)-y(68)-(y(79)-y(77)))+y(75)*params(28);
residual(82) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(29)-x(1);
residual(83) = lhs - rhs;
lhs = y(2);
rhs = y(2)*params(29)-x(2);
residual(84) = lhs - rhs;
lhs = y(3);
rhs = y(1)*params(7)+y(2)*(1-params(7));
residual(85) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end