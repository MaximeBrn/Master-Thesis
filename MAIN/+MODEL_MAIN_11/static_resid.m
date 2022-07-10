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
    T = MODEL_MAIN_11.static_resid_tt(T, y, x, params);
end
residual = zeros(94, 1);
lhs = 0;
rhs = params(2)*y(6)+params(3)*y(4)+params(14)*y(11)-(1+params(3))*y(1);
residual(1) = lhs - rhs;
lhs = 0;
rhs = params(2)*y(16)+params(3)*y(14)-y(11)*params(15)-(1+params(3))*y(2);
residual(2) = lhs - rhs;
lhs = params(19)*(y(4)-params(11)*y(5));
rhs = params(2)*y(6)+y(11)*params(8)*(1-params(7))*params(18);
residual(3) = lhs - rhs;
lhs = params(19)*(y(14)-params(11)*y(15));
rhs = params(2)*y(16)-y(11)*params(18)*params(8)*params(7);
residual(4) = lhs - rhs;
lhs = y(11);
rhs = params(21)*(y(4)-y(14)-params(11)*(y(5)-y(15)));
residual(5) = lhs - rhs;
lhs = y(5)*params(4);
rhs = params(2)*y(6)+params(14)*y(11);
residual(6) = lhs - rhs;
lhs = y(15)*params(4);
rhs = params(2)*y(16)-y(11)*params(15);
residual(7) = lhs - rhs;
lhs = y(21);
rhs = (-y(11));
residual(8) = lhs - rhs;
lhs = y(7);
rhs = y(6)+y(11)*params(14)*params(5);
residual(9) = lhs - rhs;
lhs = y(8);
rhs = y(6)+y(11)*(-params(5))*(1-params(14));
residual(10) = lhs - rhs;
lhs = y(17);
rhs = y(16)+y(11)*params(5)*(1-params(15));
residual(11) = lhs - rhs;
lhs = y(18);
rhs = y(16)+y(11)*params(15)*(-params(5));
residual(12) = lhs - rhs;
lhs = y(9);
rhs = y(4)-y(1);
residual(13) = lhs - rhs;
lhs = y(19);
rhs = y(14)-y(2);
residual(14) = lhs - rhs;
lhs = y(10);
rhs = y(5)-y(4);
residual(15) = lhs - rhs;
lhs = y(20);
rhs = y(15)-y(14);
residual(16) = lhs - rhs;
residual(17) = y(12);
residual(18) = y(22);
lhs = y(24);
rhs = y(4)*params(7)+y(14)*(1-params(7));
residual(19) = lhs - rhs;
lhs = y(25);
rhs = y(5)*params(7)+(1-params(7))*y(15);
residual(20) = lhs - rhs;
lhs = y(26);
rhs = y(6)*params(7)+y(16)*(1-params(7));
residual(21) = lhs - rhs;
lhs = y(29);
rhs = params(7)*y(12)+(1-params(7))*y(22);
residual(22) = lhs - rhs;
lhs = y(27);
rhs = params(7)*y(7)+(1-params(7))*y(17);
residual(23) = lhs - rhs;
lhs = y(28);
rhs = params(7)*y(8)+(1-params(7))*y(18);
residual(24) = lhs - rhs;
lhs = y(30);
rhs = params(7)*y(10)+(1-params(7))*y(20);
residual(25) = lhs - rhs;
lhs = y(31);
rhs = params(7)*y(9)+(1-params(7))*y(19);
residual(26) = lhs - rhs;
lhs = y(13);
rhs = y(4)-(1-params(11))*(y(6)+params(14)*y(11))-params(11)*y(5);
residual(27) = lhs - rhs;
lhs = y(23);
rhs = y(14)-(1-params(11))*(y(16)+params(15)*y(21))-params(11)*y(15);
residual(28) = lhs - rhs;
lhs = y(32);
rhs = params(7)*y(13)+(1-params(7))*y(23);
residual(29) = lhs - rhs;
lhs = y(34);
rhs = y(34)*params(1)+params(16)*((params(3)+params(21)*params(22))*y(33)-params(11)*params(21)*params(22)*y(35)+(params(19)-params(21)*params(22))*(y(44)-params(11)*y(46))-(1+params(3))*y(1));
residual(30) = lhs - rhs;
lhs = y(45);
rhs = params(1)*y(45)+params(17)*(y(44)*(params(3)+params(21)*params(23))-y(46)*params(11)*params(21)*params(23)+(params(19)-params(21)*params(23))*(y(33)-params(11)*y(35))-(1+params(3))*y(2));
residual(31) = lhs - rhs;
lhs = y(33);
rhs = y(33)-1/(params(21)*params(22))*(y(42)-y(34));
residual(32) = lhs - rhs;
lhs = y(44);
rhs = y(44)-1/(params(21)*params(23))*(y(52)-y(45));
residual(33) = lhs - rhs;
lhs = y(41);
rhs = params(21)*(y(33)-y(44)-params(11)*(y(35)-y(46)));
residual(34) = lhs - rhs;
lhs = y(53);
rhs = (-y(41));
residual(35) = lhs - rhs;
lhs = y(36);
rhs = y(33)-y(1);
residual(36) = lhs - rhs;
lhs = y(47);
rhs = y(44)-y(2);
residual(37) = lhs - rhs;
lhs = params(19)*(y(33)-params(11)*y(35));
rhs = params(2)*y(37)+params(8)*(1-params(7))*params(18)*y(41);
residual(38) = lhs - rhs;
lhs = params(19)*(y(44)-params(11)*y(46));
rhs = params(2)*y(48)-params(18)*params(8)*params(7)*y(41);
residual(39) = lhs - rhs;
lhs = y(40);
rhs = y(35)-y(33);
residual(40) = lhs - rhs;
lhs = y(51);
rhs = y(46)-y(44);
residual(41) = lhs - rhs;
lhs = y(38);
rhs = y(37)+params(14)*params(5)*y(41);
residual(42) = lhs - rhs;
lhs = y(39);
rhs = y(37)+(-params(5))*(1-params(14))*y(41);
residual(43) = lhs - rhs;
lhs = y(49);
rhs = y(48)+params(5)*(1-params(15))*y(41);
residual(44) = lhs - rhs;
lhs = y(50);
rhs = y(48)+params(15)*(-params(5))*y(41);
residual(45) = lhs - rhs;
lhs = y(42);
rhs = y(60);
residual(46) = lhs - rhs;
lhs = y(52);
rhs = y(60);
residual(47) = lhs - rhs;
lhs = y(61);
rhs = params(7)*y(34)+(1-params(7))*y(45);
residual(48) = lhs - rhs;
lhs = y(55);
rhs = params(7)*y(33)+(1-params(7))*y(44);
residual(49) = lhs - rhs;
lhs = y(56);
rhs = params(7)*y(35)+(1-params(7))*y(46);
residual(50) = lhs - rhs;
lhs = y(57);
rhs = params(7)*y(37)+(1-params(7))*y(48);
residual(51) = lhs - rhs;
lhs = y(58);
rhs = params(7)*y(38)+(1-params(7))*y(49);
residual(52) = lhs - rhs;
lhs = y(59);
rhs = params(7)*y(39)+(1-params(7))*y(50);
residual(53) = lhs - rhs;
lhs = y(62);
rhs = params(7)*y(40)+(1-params(7))*y(51);
residual(54) = lhs - rhs;
lhs = y(63);
rhs = params(7)*y(36)+(1-params(7))*y(47);
residual(55) = lhs - rhs;
lhs = y(43);
rhs = y(33)-(1-params(11))*(y(37)+params(14)*y(41))-params(11)*y(35);
residual(56) = lhs - rhs;
lhs = y(54);
rhs = y(44)-(1-params(11))*(y(48)+params(15)*y(53))-params(11)*y(46);
residual(57) = lhs - rhs;
lhs = y(64);
rhs = params(7)*y(43)+(1-params(7))*y(54);
residual(58) = lhs - rhs;
lhs = y(65);
rhs = y(33)-y(4);
residual(59) = lhs - rhs;
lhs = y(66);
rhs = y(35)-y(5);
residual(60) = lhs - rhs;
lhs = y(67);
rhs = y(37)-y(6);
residual(61) = lhs - rhs;
lhs = y(68);
rhs = y(38)-y(7);
residual(62) = lhs - rhs;
lhs = y(69);
rhs = y(39)-y(8);
residual(63) = lhs - rhs;
lhs = y(71);
rhs = y(36)-y(9);
residual(64) = lhs - rhs;
lhs = y(70);
rhs = y(40)-y(10);
residual(65) = lhs - rhs;
lhs = y(72);
rhs = y(41)-y(11);
residual(66) = lhs - rhs;
lhs = y(73);
rhs = y(42)-y(12);
residual(67) = lhs - rhs;
lhs = y(75);
rhs = y(44)-y(14);
residual(68) = lhs - rhs;
lhs = y(76);
rhs = y(46)-y(15);
residual(69) = lhs - rhs;
lhs = y(77);
rhs = y(48)-y(16);
residual(70) = lhs - rhs;
lhs = y(78);
rhs = y(49)-y(17);
residual(71) = lhs - rhs;
lhs = y(79);
rhs = y(50)-y(18);
residual(72) = lhs - rhs;
lhs = y(81);
rhs = y(47)-y(19);
residual(73) = lhs - rhs;
lhs = y(80);
rhs = y(51)-y(20);
residual(74) = lhs - rhs;
lhs = y(82);
rhs = y(53)-y(21);
residual(75) = lhs - rhs;
lhs = y(83);
rhs = y(52)-y(22);
residual(76) = lhs - rhs;
lhs = y(85);
rhs = params(7)*y(65)+(1-params(7))*y(75);
residual(77) = lhs - rhs;
lhs = y(86);
rhs = params(7)*y(66)+(1-params(7))*y(76);
residual(78) = lhs - rhs;
lhs = y(87);
rhs = params(7)*y(67)+(1-params(7))*y(77);
residual(79) = lhs - rhs;
lhs = y(90);
rhs = y(42)-y(29);
residual(80) = lhs - rhs;
lhs = y(94);
rhs = y(66)-y(76);
residual(81) = lhs - rhs;
lhs = y(91);
rhs = y(63)-y(31);
residual(82) = lhs - rhs;
lhs = y(92);
rhs = params(7)*y(70)+(1-params(7))*y(80);
residual(83) = lhs - rhs;
lhs = y(88);
rhs = params(7)*y(68)+(1-params(7))*y(78);
residual(84) = lhs - rhs;
lhs = y(89);
rhs = params(7)*y(69)+(1-params(7))*y(79);
residual(85) = lhs - rhs;
lhs = y(74);
rhs = y(43)-y(13);
residual(86) = lhs - rhs;
lhs = y(84);
rhs = y(54)-y(23);
residual(87) = lhs - rhs;
lhs = y(93);
rhs = params(7)*y(74)+(1-params(7))*y(84);
residual(88) = lhs - rhs;
lhs = y(60)-y(29);
rhs = (y(60)-y(29))*0.7+y(61)*2.5+y(85)*0.125;
residual(89) = lhs - rhs;
lhs = y(66);
rhs = y(66)*params(24)+params(25)*(y(65)-y(85))+params(26)*(y(34)-y(61));
residual(90) = lhs - rhs;
lhs = y(76);
rhs = y(76)*params(24)+params(27)*(y(75)-y(85))+params(28)*(y(45)-y(61));
residual(91) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(29)-x(1);
residual(92) = lhs - rhs;
lhs = y(2);
rhs = y(2)*params(29)-x(2);
residual(93) = lhs - rhs;
lhs = y(3);
rhs = y(1)*params(7)+y(2)*(1-params(7));
residual(94) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end