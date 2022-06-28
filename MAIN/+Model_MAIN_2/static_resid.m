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
    T = MODEL_MAIN_2.static_resid_tt(T, y, x, params);
end
residual = zeros(121, 1);
residual(1) = params(7)*0.5*params(3)*2*y(1)+y(117)*(-params(7))+y(111)+y(108)+y(107)*(-params(28))+y(106)*(-params(24));
residual(2) = params(7)*0.5*params(11)*params(4)*2*y(2)+(-params(7))*y(118)+y(106)+y(109)-y(111);
residual(3) = params(7)*0.5*(params(2)*(1-params(11))*2*y(3)+T(1)*2*(y(3)-y(12)))+y(110)+(-params(7))*y(119);
residual(4) = y(111);
residual(5) = 0.5*(1-params(7))*params(3)*2*y(5)+y(117)*T(2)+y(115)+y(112)+y(107)*(-params(29))+y(106)*(-params(25));
residual(6) = 0.5*(1-params(7))*params(11)*params(4)*2*y(6)+y(118)*T(2)+y(107)+y(113)-y(115);
residual(7) = 0.5*(1-params(7))*(params(2)*(1-params(11))*2*y(7)+T(3)*2*(y(7)-y(12)))+y(114)+y(119)*T(2);
residual(8) = y(115);
residual(9) = y(116);
residual(10) = y(117);
residual(11) = y(118);
residual(12) = y(119)+params(7)*0.5*T(1)*(-(2*(y(3)-y(12))))+0.5*(1-params(7))*T(3)*(-(2*(y(7)-y(12))));
residual(13) = y(120)+y(90)+y(84)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(78)+y(74)+(1+params(3))*y(62)+T(4)*(-(1+params(3)))*y(78)+params(33)*y(120)*(-params(32));
residual(14) = y(121)+y(91)+y(85)*(-((-(1+params(3)))*params(17)))+(1+params(3))*y(79)+y(75)+(1+params(3))*y(63)+T(4)*(-(1+params(3)))*y(79)+params(33)*(-params(32))*y(121);
residual(15) = y(108)+(-params(7))*y(80)+y(78)*(-params(3))+y(76)+y(66)*(-params(21))+params(19)*y(64)+y(62)*(-params(3))-y(74)+T(4)*params(3)*y(78);
residual(16) = y(109)+(-params(7))*y(81)+params(4)*y(67)+y(66)*(-(params(21)*(-params(11))))+y(64)*params(19)*(-params(11))-y(76);
residual(17) = y(110)+(-params(7))*y(82)+y(67)*(-params(2))+y(64)*(-params(2))+y(62)*(-params(2))-y(70)-y(71);
residual(18) = y(70);
residual(19) = y(71);
residual(20) = y(74);
residual(21) = y(76);
residual(22) = y(116)+y(73)*(-(params(15)*(-params(5))))+y(72)*(-(params(5)*(1-params(15))))+y(71)*(-((1-params(14))*(-params(5))))+y(70)*(-(params(14)*params(5)))+y(69)+params(15)*y(68)+y(67)*(-params(14))+y(66)+params(18)*params(7)*params(8)*y(65)+y(64)*(-(params(18)*(1-params(7))*params(8)))+params(15)*y(63)+y(62)*(-params(14));
residual(23) = y(78)+(-params(7))*y(83);
residual(24) = y(112)+T(2)*y(80)+y(79)*(-params(3))+y(77)+y(66)*params(21)+params(19)*y(65)+y(63)*(-params(3))-y(75)+T(4)*params(3)*y(79);
residual(25) = y(113)+T(2)*y(81)+params(4)*y(68)+y(66)*(-(params(11)*params(21)))+params(19)*(-params(11))*y(65)-y(77);
residual(26) = y(114)+T(2)*y(82)+(-params(2))*y(68)+(-params(2))*y(65)+y(63)*(-params(2))-y(72)-y(73);
residual(27) = y(72);
residual(28) = y(73);
residual(29) = y(75);
residual(30) = y(77);
residual(31) = y(69);
residual(32) = y(79)+T(2)*y(83);
residual(33) = y(80);
residual(34) = y(81);
residual(35) = y(82);
residual(36) = y(83);
residual(37) = (-params(7))*y(103)+y(94)+params(19)*y(92)+(-params(21))*y(88)+T(5)*y(87)+y(86)+y(85)*(-(params(17)*(params(19)-params(21)*params(23))))+y(84)*(-(params(16)*(params(3)+params(21)*params(22))))+T(4)*(-y(86))+T(4)*y(87)*(-T(5))-y(90)-y(108);
residual(38) = params(7)*0.5*params(6)/params(16)*2*y(38)+y(107)*(-params(30))+y(106)*(-params(26))+(-params(7))*y(102)+y(84)+T(4)*y(84)*(-params(1))+T(4)*y(86)*(-T(6));
residual(39) = (-params(7))*y(104)+params(19)*(-params(11))*y(92)+(-(params(21)*(-params(11))))*y(88)+y(87)*(-(params(11)*T(5)))+(-params(11))*y(86)+y(85)*(-(params(17)*(-params(11))*(params(19)-params(21)*params(23))))+y(84)*(-(params(16)*(-(params(11)*params(21)*params(22)))))+T(4)*params(11)*y(86)+T(4)*y(87)*(-((-params(11))*T(5)))-y(94)-y(109);
residual(40) = y(90);
residual(41) = (-params(7))*y(105)+(-params(2))*y(92)-y(96)-y(97)-y(110);
residual(42) = y(96);
residual(43) = y(97);
residual(44) = y(94);
residual(45) = (-(params(15)*(-params(5))))*y(99)+(-(params(5)*(1-params(15))))*y(98)+(-((1-params(14))*(-params(5))))*y(97)+(-(params(14)*params(5)))*y(96)+params(18)*params(7)*params(8)*y(93)+(-(params(18)*(1-params(7))*params(8)))*y(92)+y(88)+y(89)-y(116);
residual(46) = y(100)+y(86)*T(6);
residual(47) = T(2)*y(103)+y(95)+params(19)*y(93)+params(21)*y(88)+y(87)+y(86)*T(7)+y(85)*(-(params(17)*(params(3)+params(21)*params(23))))+y(84)*(-(params(16)*(params(19)-params(21)*params(22))))+T(4)*y(86)*(-T(7))+T(4)*(-y(87))-y(91)-y(112);
residual(48) = 0.5*(1-params(7))*params(6)/params(17)*2*y(48)+y(107)*(-params(31))+y(106)*(-params(27))+T(2)*y(102)+y(85)+T(4)*y(85)*(-params(1))+T(4)*y(87)*(-T(8));
residual(49) = T(2)*y(104)+params(19)*(-params(11))*y(93)+(-(params(11)*params(21)))*y(88)+(-params(11))*y(87)+y(86)*(-(params(11)*T(7)))+y(85)*(-(params(17)*(-(params(11)*params(21)*params(23)))))+y(84)*(-(params(16)*(-params(11))*(params(19)-params(21)*params(22))))+T(4)*y(86)*(-((-params(11))*T(7)))+T(4)*params(11)*y(87)-y(95)-y(113);
residual(50) = y(91);
residual(51) = T(2)*y(105)+(-params(2))*y(93)-y(98)-y(99)-y(114);
residual(52) = y(98);
residual(53) = y(99);
residual(54) = y(95);
residual(55) = y(101)+y(87)*T(8);
residual(56) = y(89);
residual(57) = y(103);
residual(58) = y(104);
residual(59) = y(105);
residual(60) = (-y(101))-y(100);
residual(61) = y(102);
residual(62) = (-(params(2)*y(17)+params(3)*y(15)+params(14)*y(22)-(1+params(3))*y(13)));
residual(63) = (-(params(2)*y(26)+params(3)*y(24)-params(15)*y(22)-(1+params(3))*y(14)));
residual(64) = params(19)*(y(15)-params(11)*y(16))-(params(2)*y(17)+params(18)*(1-params(7))*params(8)*y(22));
residual(65) = params(19)*(y(24)-params(11)*y(25))-(params(2)*y(26)-params(18)*params(7)*params(8)*y(22));
residual(66) = y(22)-params(21)*(y(15)-y(24)-params(11)*(y(16)-y(25)));
residual(67) = params(4)*y(16)-(params(2)*y(17)+params(14)*y(22));
residual(68) = params(4)*y(25)-(params(2)*y(26)-params(15)*y(22));
residual(69) = y(22)+y(31);
residual(70) = y(18)-(y(17)+params(14)*params(5)*y(22));
residual(71) = y(19)-(y(17)+(1-params(14))*(-params(5))*y(22));
residual(72) = y(27)-(y(26)+params(5)*(1-params(15))*y(22));
residual(73) = y(28)-(y(26)+params(15)*(-params(5))*y(22));
residual(74) = y(20)-(y(15)-y(13));
residual(75) = y(29)-(y(24)-y(14));
residual(76) = y(21)-(y(16)-y(15));
residual(77) = y(30)-(y(25)-y(24));
residual(78) = y(23);
residual(79) = y(32);
residual(80) = y(33)-(params(7)*y(15)+(1-params(7))*y(24));
residual(81) = y(34)-(params(7)*y(16)+(1-params(7))*y(25));
residual(82) = y(35)-(params(7)*y(17)+(1-params(7))*y(26));
residual(83) = y(36)-(params(7)*y(23)+(1-params(7))*y(32));
residual(84) = y(38)-(y(38)*params(1)+params(16)*((params(3)+params(21)*params(22))*y(37)-params(11)*params(21)*params(22)*y(39)+(params(19)-params(21)*params(22))*(y(47)-params(11)*y(49))-(1+params(3))*y(13)));
residual(85) = y(48)-(params(1)*y(48)+params(17)*((params(3)+params(21)*params(23))*y(47)-params(11)*params(21)*params(23)*y(49)+(params(19)-params(21)*params(23))*(y(37)-params(11)*y(39))-(1+params(3))*y(14)));
residual(86) = y(37)-(y(37)-T(6)*(y(46)-y(38)));
residual(87) = y(47)-(y(47)-T(8)*(y(55)-y(48)));
residual(88) = y(45)-params(21)*(y(37)-y(47)-params(11)*(y(39)-y(49)));
residual(89) = y(45)+y(56);
residual(90) = y(40)-(y(37)-y(13));
residual(91) = y(50)-(y(47)-y(14));
residual(92) = params(19)*(y(37)-params(11)*y(39))-(params(2)*y(41)+params(18)*(1-params(7))*params(8)*y(45));
residual(93) = params(19)*(y(47)-params(11)*y(49))-(params(2)*y(51)-params(18)*params(7)*params(8)*y(45));
residual(94) = y(44)-(y(39)-y(37));
residual(95) = y(54)-(y(49)-y(47));
residual(96) = y(42)-(y(41)+params(14)*params(5)*y(45));
residual(97) = y(43)-(y(41)+(1-params(14))*(-params(5))*y(45));
residual(98) = y(52)-(y(51)+params(5)*(1-params(15))*y(45));
residual(99) = y(53)-(y(51)+params(15)*(-params(5))*y(45));
residual(100) = y(46)-y(60);
residual(101) = y(55)-y(60);
residual(102) = y(61)-(params(7)*y(38)+(1-params(7))*y(48));
residual(103) = y(57)-(params(7)*y(37)+(1-params(7))*y(47));
residual(104) = y(58)-(params(7)*y(39)+(1-params(7))*y(49));
residual(105) = y(59)-(params(7)*y(41)+(1-params(7))*y(51));
residual(106) = y(2)-(y(1)*params(24)+y(5)*params(25)+y(38)*params(26)+y(48)*params(27));
residual(107) = y(6)-(y(1)*params(28)+y(5)*params(29)+y(38)*params(30)+y(48)*params(31));
residual(108) = y(1)-(y(37)-y(15));
residual(109) = y(2)-(y(39)-y(16));
residual(110) = y(3)-(y(41)-y(17));
residual(111) = y(4)-(y(2)-y(1));
residual(112) = y(5)-(y(47)-y(24));
residual(113) = y(6)-(y(49)-y(25));
residual(114) = y(7)-(y(51)-y(26));
residual(115) = y(8)-(y(6)-y(5));
residual(116) = y(9)-(y(45)-y(22));
residual(117) = y(10)-(params(7)*y(1)+(1-params(7))*y(5));
residual(118) = y(11)-(params(7)*y(2)+(1-params(7))*y(6));
residual(119) = y(12)-(params(7)*y(3)+(1-params(7))*y(7));
residual(120) = y(13)-(params(32)*y(13)-x(1));
residual(121) = y(14)-(params(32)*y(14)-x(2));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
