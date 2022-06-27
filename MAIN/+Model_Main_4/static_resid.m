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
    T = MODEL_MAIN_4.static_resid_tt(T, y, x, params);
end
residual = zeros(123, 1);
residual(1) = 0.5*params(3)*2*y(1)+y(105)+y(118)*(-params(7));
residual(2) = 0.5*params(11)*params(4)*2*y(2)+y(106)+(-params(7))*y(119);
residual(3) = 0.5*params(2)*(1-params(11))*2*y(3)+y(107)+(-params(7))*y(120);
residual(4) = y(109);
residual(5) = y(108);
residual(6) = y(110);
residual(7) = 0.5*params(3)*2*y(7)+y(112)+y(118)*T(1);
residual(8) = 0.5*params(11)*params(4)*2*y(8)+y(113)+y(119)*T(1);
residual(9) = 0.5*params(2)*(1-params(11))*2*y(9)+y(114)+y(120)*T(1);
residual(10) = y(116);
residual(11) = y(115);
residual(12) = y(117);
residual(13) = y(111)+T(2)*2*y(13);
residual(14) = y(118);
residual(15) = y(119);
residual(16) = y(120);
residual(17) = y(121);
residual(18) = y(122)+y(89)+y(84)*(-(params(22)*(-(1+params(3)))))+(1+params(3))*y(79)+y(75)+(1+params(3))*y(64)+T(3)*(-(1+params(3)))*y(79)+params(31)*y(122)*(-params(30));
residual(19) = y(123)+y(90)+y(85)*(-((-(1+params(3)))*params(23)))+(1+params(3))*y(80)+y(76)+(1+params(3))*y(65)+T(3)*(-(1+params(3)))*y(80)+params(31)*(-params(30))*y(123);
residual(20) = y(105)+(-params(7))*y(81)+y(79)*(-params(3))+y(77)+y(68)*(-params(27))+params(25)*y(66)+y(64)*(-params(3))-y(75)+T(3)*params(3)*y(79);
residual(21) = y(106)+(-params(7))*y(82)+params(4)*y(69)+y(68)*(-(params(27)*(-params(11))))+y(66)*params(25)*(-params(11))-y(77);
residual(22) = y(107)+y(69)*(-params(2))+y(66)*(-params(2))+y(64)*(-params(2))-y(71)-y(72);
residual(23) = y(108)+y(75);
residual(24) = y(71);
residual(25) = y(72);
residual(26) = y(110)+y(79)+(-params(7))*y(83);
residual(27) = y(109)+y(77);
residual(28) = y(112)+T(1)*y(81)+y(80)*(-params(3))+y(78)+y(68)*params(27)+params(25)*y(67)+y(65)*(-params(3))-y(76)+T(3)*params(3)*y(80);
residual(29) = y(113)+T(1)*y(82)+params(4)*y(70)+y(68)*(-(params(11)*params(27)))+params(25)*(-params(11))*y(67)-y(78);
residual(30) = y(114)+(-params(2))*y(70)+(-params(2))*y(67)+y(65)*(-params(2))-y(73)-y(74);
residual(31) = y(73);
residual(32) = y(74);
residual(33) = y(115)+y(76);
residual(34) = y(117)+y(80)+T(1)*y(83);
residual(35) = y(116)+y(78);
residual(36) = y(111)+y(74)*(-(params(21)*(-params(5))))+y(73)*(-(params(5)*(1-params(21))))+y(72)*(-((-params(5))*(1-params(20))))+y(71)*(-(params(5)*params(20)))+y(70)*params(21)+y(69)*(-params(20))+y(68)+y(67)*params(24)*params(7)*params(8)+y(66)*(-(params(24)*(1-params(7))*params(8)))+y(65)*params(21)+y(64)*(-params(20));
residual(37) = y(81);
residual(38) = y(82);
residual(39) = y(121)+y(83);
residual(40) = (-params(7))*y(102)+y(93)+params(25)*y(91)+(-params(27))*y(88)+T(4)*y(87)+y(86)+y(85)*(-(params(23)*(params(25)-params(27)*params(29))))+y(84)*(-(params(22)*(params(3)+params(27)*params(28))))+T(3)*(-y(86))+T(3)*y(87)*(-T(4))-y(89)-y(105);
residual(41) = 0.5*params(6)/params(22)*2*y(41)+(-params(7))*y(101)+y(84)+T(3)*y(84)*(-params(1))+T(3)*y(86)*(-T(5));
residual(42) = (-params(7))*y(103)+params(25)*(-params(11))*y(91)+(-(params(27)*(-params(11))))*y(88)+y(87)*(-(params(11)*T(4)))+(-params(11))*y(86)+y(85)*(-(params(23)*(-params(11))*(params(25)-params(27)*params(29))))+y(84)*(-(params(22)*(-(params(11)*params(27)*params(28)))))+T(3)*params(11)*y(86)+T(3)*y(87)*(-((-params(11))*T(4)))-y(93)-y(106);
residual(43) = y(89)-y(108);
residual(44) = (-params(7))*y(104)+(-params(2))*y(91)-y(95)-y(96)-y(107);
residual(45) = y(95);
residual(46) = y(96);
residual(47) = y(93)-y(109);
residual(48) = T(1)*y(102)+y(94)+params(25)*y(92)+params(27)*y(88)+y(87)+y(86)*T(6)+y(85)*(-(params(23)*(params(3)+params(27)*params(29))))+y(84)*(-(params(22)*(params(25)-params(27)*params(28))))+T(3)*y(86)*(-T(6))+T(3)*(-y(87))-y(90)-y(112);
residual(49) = 0.5*params(6)/params(23)*2*y(49)+T(1)*y(101)+y(85)+T(3)*y(85)*(-params(1))+T(3)*y(87)*(-T(7));
residual(50) = T(1)*y(103)+params(25)*(-params(11))*y(92)+(-(params(11)*params(27)))*y(88)+(-params(11))*y(87)+y(86)*(-(params(11)*T(6)))+y(85)*(-(params(23)*(-(params(11)*params(27)*params(29)))))+y(84)*(-(params(22)*(-params(11))*(params(25)-params(27)*params(28))))+T(3)*y(86)*(-((-params(11))*T(6)))+T(3)*params(11)*y(87)-y(94)-y(113);
residual(51) = y(90)-y(115);
residual(52) = T(1)*y(104)+(-params(2))*y(92)-y(97)-y(98)-y(114);
residual(53) = y(97);
residual(54) = y(98);
residual(55) = y(94)-y(116);
residual(56) = y(99)+y(86)*T(5)-y(110)-y(121);
residual(57) = y(100)+y(87)*T(7)-y(117);
residual(58) = (-y(100))-y(99);
residual(59) = (-(params(21)*(-params(5))))*y(98)+(-(params(5)*(1-params(21))))*y(97)+(-((-params(5))*(1-params(20))))*y(96)+(-(params(5)*params(20)))*y(95)+params(24)*params(7)*params(8)*y(92)+y(88)+(-(params(24)*(1-params(7))*params(8)))*y(91)-y(111);
residual(60) = y(101);
residual(61) = y(102);
residual(62) = y(103);
residual(63) = y(104);
residual(64) = (-(params(2)*y(22)+params(3)*y(20)+params(20)*y(36)-(1+params(3))*y(18)));
residual(65) = (-(params(2)*y(30)+params(3)*y(28)-params(21)*y(36)-(1+params(3))*y(19)));
residual(66) = params(25)*(y(20)-params(11)*y(21))-(params(2)*y(22)+params(24)*(1-params(7))*params(8)*y(36));
residual(67) = params(25)*(y(28)-params(11)*y(29))-(params(2)*y(30)-params(24)*params(7)*params(8)*y(36));
residual(68) = y(36)-params(27)*(y(20)-y(28)-params(11)*(y(21)-y(29)));
residual(69) = params(4)*y(21)-(params(2)*y(22)+params(20)*y(36));
residual(70) = params(4)*y(29)-(params(2)*y(30)-params(21)*y(36));
residual(71) = y(24)-(y(22)+params(5)*params(20)*y(36));
residual(72) = y(25)-(y(22)+(-params(5))*(1-params(20))*y(36));
residual(73) = y(31)-(y(30)+params(5)*(1-params(21))*y(36));
residual(74) = y(32)-(y(30)+params(21)*(-params(5))*y(36));
residual(75) = y(23)-(y(20)-y(18));
residual(76) = y(33)-(y(28)-y(19));
residual(77) = y(27)-(y(21)-y(20));
residual(78) = y(35)-(y(29)-y(28));
residual(79) = y(26);
residual(80) = y(34);
residual(81) = y(37)-(params(7)*y(20)+(1-params(7))*y(28));
residual(82) = y(38)-(params(7)*y(21)+(1-params(7))*y(29));
residual(83) = y(39)-(params(7)*y(26)+(1-params(7))*y(34));
residual(84) = y(41)-(y(41)*params(1)+params(22)*((params(3)+params(27)*params(28))*y(40)-params(11)*params(27)*params(28)*y(42)+(params(25)-params(27)*params(28))*(y(48)-params(11)*y(50))-(1+params(3))*y(18)));
residual(85) = y(49)-(params(1)*y(49)+params(23)*((params(3)+params(27)*params(29))*y(48)-params(11)*params(27)*params(29)*y(50)+(params(25)-params(27)*params(29))*(y(40)-params(11)*y(42))-(1+params(3))*y(19)));
residual(86) = y(40)-(y(40)-T(5)*(y(56)-y(41)));
residual(87) = y(48)-(y(48)-T(7)*(y(57)-y(49)));
residual(88) = y(59)-params(27)*(y(40)-y(48)-params(11)*(y(42)-y(50)));
residual(89) = y(43)-(y(40)-y(18));
residual(90) = y(51)-(y(48)-y(19));
residual(91) = params(25)*(y(40)-params(11)*y(42))-(params(2)*y(44)+params(24)*(1-params(7))*params(8)*y(59));
residual(92) = params(25)*(y(48)-params(11)*y(50))-(params(2)*y(52)-params(24)*params(7)*params(8)*y(59));
residual(93) = y(47)-(y(42)-y(40));
residual(94) = y(55)-(y(50)-y(48));
residual(95) = y(45)-(y(44)+params(5)*params(20)*y(59));
residual(96) = y(46)-(y(44)+(-params(5))*(1-params(20))*y(59));
residual(97) = y(53)-(y(52)+params(5)*(1-params(21))*y(59));
residual(98) = y(54)-(y(52)+params(21)*(-params(5))*y(59));
residual(99) = y(56)-y(58);
residual(100) = y(57)-y(58);
residual(101) = y(60)-(params(7)*y(41)+(1-params(7))*y(49));
residual(102) = y(61)-(params(7)*y(40)+(1-params(7))*y(48));
residual(103) = y(62)-(params(7)*y(42)+(1-params(7))*y(50));
residual(104) = y(63)-(params(7)*y(44)+(1-params(7))*y(52));
residual(105) = y(1)-(y(40)-y(20));
residual(106) = y(2)-(y(42)-y(21));
residual(107) = y(3)-(y(44)-y(22));
residual(108) = y(5)-(y(43)-y(23));
residual(109) = y(4)-(y(47)-y(27));
residual(110) = y(6)-(y(56)-y(26));
residual(111) = y(13)-(y(59)-y(36));
residual(112) = y(7)-(y(48)-y(28));
residual(113) = y(8)-(y(50)-y(29));
residual(114) = y(9)-(y(52)-y(30));
residual(115) = y(11)-(y(51)-y(33));
residual(116) = y(10)-(y(55)-y(35));
residual(117) = y(12)-(y(57)-y(34));
residual(118) = y(14)-(y(1)*params(7)+y(7)*(1-params(7)));
residual(119) = y(15)-(params(7)*y(2)+(1-params(7))*y(8));
residual(120) = y(16)-(params(7)*y(3)+(1-params(7))*y(9));
residual(121) = y(17)-(y(56)-y(39));
residual(122) = y(18)-(params(30)*y(18)-x(1));
residual(123) = y(19)-(params(30)*y(19)-x(2));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
