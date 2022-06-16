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
    T = MODEL_MAIN_2_noparam.static_resid_tt(T, y, x, params);
end
residual = zeros(85, 1);
residual(1) = params(7)*0.5*params(3)*2*y(1)+y(72)+y(79)*(-params(7));
residual(2) = params(7)*0.5*params(11)*params(4)*2*y(2)+y(73)+(-params(7))*y(80);
residual(3) = params(7)*0.5*(params(2)*(1-params(11))*2*y(3)+T(1)*2*(y(3)-y(10)))+y(74)+(-params(7))*y(81);
residual(4) = 0.5*(1-params(7))*params(3)*2*y(4)+y(75)+y(79)*(-(1-params(7)));
residual(5) = 0.5*(1-params(7))*params(11)*params(4)*2*y(5)+y(76)+y(80)*(-(1-params(7)));
residual(6) = 0.5*(1-params(7))*(params(2)*(1-params(11))*2*y(6)+T(2)*2*(y(6)-y(10)))+y(77)+y(81)*(-(1-params(7)));
residual(7) = y(78);
residual(8) = y(79);
residual(9) = y(80);
residual(10) = y(81)+params(7)*0.5*T(1)*(-(2*(y(3)-y(10))))+0.5*(1-params(7))*T(2)*(-(2*(y(6)-y(10))));
residual(11) = y(82)+y(61)+y(57)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(45)+params(27)*y(82)*(-params(25));
residual(12) = y(83)+params(27)*y(83)*(-params(26));
residual(13) = y(84)+y(65)+y(59)*(-((-(1+params(3)))*params(17)))+(1+params(3))*y(46)+params(27)*(-params(25))*y(84);
residual(14) = y(85)+params(27)*(-params(26))*y(85);
residual(15) = y(72)+y(49)*(-params(22))+params(19)*y(47)+y(45)*(-params(3));
residual(16) = y(73)+params(4)*y(50)+y(49)*(-(params(22)*(-params(11))))+y(47)*params(19)*(-params(11));
residual(17) = y(74)+y(50)*(-params(2))+y(47)*(-params(2))+y(45)*(-params(2))-y(52)-y(53);
residual(18) = y(52);
residual(19) = y(53);
residual(20) = y(75)+y(49)*params(22)+params(19)*y(48)+y(46)*(-params(3));
residual(21) = y(76)+params(4)*y(51)+y(49)*(-(params(11)*params(22)))+params(19)*(-params(11))*y(48);
residual(22) = y(77)+(-params(2))*y(51)+(-params(2))*y(48)+y(46)*(-params(2))-y(54)-y(55);
residual(23) = y(54);
residual(24) = y(55);
residual(25) = y(78)+params(15)*y(55)+y(54)*(-(1-params(15)))+(1-params(14))*y(53)+y(52)*(-params(14))+params(15)*y(51)+y(50)*(-params(14))+y(49)+y(48)*params(18)*params(7)*params(8)+y(47)*(-(params(18)*(1-params(7))*params(8)))+params(15)*y(46)+y(45)*(-params(14));
residual(26) = (-params(7))*y(70)+params(19)*y(62)+(-params(22))*y(60)+y(59)*(-(params(17)*(params(19)-params(22)*params(24))))+T(3)*y(58)+y(57)*(-(params(16)*(params(3)+params(22)*params(23))))+y(56)+T(4)*(-y(56))+T(4)*y(58)*(-T(3))-y(61)-y(72);
residual(27) = params(7)*0.5*params(6)/params(16)*2*y(27)+(-params(7))*y(69)+y(57)+T(4)*y(56)*(-T(5))+T(4)*y(57)*(-params(1));
residual(28) = (-params(7))*y(71)+params(19)*(-params(11))*y(62)+(-(params(22)*(-params(11))))*y(60)+y(59)*(-(params(17)*(-params(11))*(params(19)-params(22)*params(24))))+y(58)*(-(params(11)*T(3)))+y(57)*(-(params(16)*(-(params(11)*params(22)*params(23)))))+(-params(11))*y(56)+T(4)*params(11)*y(56)+T(4)*y(58)*(-((-params(11))*T(3)))-y(73);
residual(29) = y(61);
residual(30) = (-params(2))*y(62)-y(63)-y(64)-y(74);
residual(31) = y(63);
residual(32) = y(64);
residual(33) = (-(1-params(7)))*y(70)+params(19)*y(66)+params(22)*y(60)+y(59)*(-(params(17)*(params(3)+params(22)*params(24))))+y(58)+y(57)*(-(params(16)*(params(19)-params(22)*params(23))))+y(56)*T(6)+T(4)*y(56)*(-T(6))+T(4)*(-y(58))-y(65)-y(75);
residual(34) = 0.5*(1-params(7))*params(6)/params(17)*2*y(34)+(-(1-params(7)))*y(69)+y(59)+T(4)*y(58)*(-T(7))+T(4)*y(59)*(-params(1));
residual(35) = (-(1-params(7)))*y(71)+params(19)*(-params(11))*y(66)+(-(params(11)*params(22)))*y(60)+y(59)*(-(params(17)*(-(params(11)*params(22)*params(24)))))+(-params(11))*y(58)+y(57)*(-(params(16)*(-params(11))*(params(19)-params(22)*params(23))))+y(56)*(-(params(11)*T(6)))+T(4)*y(56)*(-((-params(11))*T(6)))+T(4)*params(11)*y(58)-y(76);
residual(36) = y(65);
residual(37) = (-params(2))*y(66)-y(67)-y(68)-y(77);
residual(38) = y(67);
residual(39) = y(68);
residual(40) = y(58)*T(7)+y(56)*T(5);
residual(41) = params(15)*y(68)+(-(1-params(15)))*y(67)+params(18)*params(7)*params(8)*y(66)+(1-params(14))*y(64)+(-params(14))*y(63)+y(60)+(-(params(18)*(1-params(7))*params(8)))*y(62)-y(78);
residual(42) = y(69);
residual(43) = y(70);
residual(44) = y(71);
residual(45) = (-(params(2)*y(17)+params(3)*y(15)+params(14)*y(25)-(1+params(3))*y(11)));
residual(46) = (-(params(2)*y(22)+params(3)*y(20)-params(15)*y(25)-(1+params(3))*y(13)));
residual(47) = params(19)*(y(15)-params(11)*y(16))-(params(2)*y(17)+params(18)*(1-params(7))*params(8)*y(25));
residual(48) = params(19)*(y(20)-params(11)*y(21))-(params(2)*y(22)-params(18)*params(7)*params(8)*y(25));
residual(49) = y(25)-params(22)*(y(15)-y(20)-params(11)*(y(16)-y(21)));
residual(50) = params(4)*y(16)-(params(2)*y(17)+params(14)*y(25));
residual(51) = params(4)*y(21)-(params(2)*y(22)-params(15)*y(25));
residual(52) = y(18)-(y(17)+params(14)*y(25));
residual(53) = y(19)-(y(17)+y(25)*(-(1-params(14))));
residual(54) = y(23)-(y(22)+(1-params(15))*y(25));
residual(55) = y(24)-(y(22)+y(25)*(-params(15)));
residual(56) = y(26)-(y(26)-T(5)*(y(40)-y(27)));
residual(57) = y(27)-(y(27)*params(1)+params(16)*((params(3)+params(22)*params(23))*y(26)-params(11)*params(22)*params(23)*y(28)+(params(19)-params(22)*params(23))*(y(33)-params(11)*y(35))-(1+params(3))*y(11)));
residual(58) = y(33)-(y(33)-T(7)*(y(40)-y(34)));
residual(59) = y(34)-(params(1)*y(34)+params(17)*((params(3)+params(22)*params(24))*y(33)-params(11)*params(22)*params(24)*y(35)+(params(19)-params(22)*params(24))*(y(26)-params(11)*y(28))-(1+params(3))*y(13)));
residual(60) = y(41)-params(22)*(y(26)-y(33)-params(11)*(y(28)-y(35)));
residual(61) = y(29)-(y(26)-y(11));
residual(62) = params(19)*(y(26)-params(11)*y(28))-(params(2)*y(30)+params(18)*(1-params(7))*params(8)*y(41));
residual(63) = y(31)-(y(30)+params(14)*y(41));
residual(64) = y(32)-(y(30)+(-(1-params(14)))*y(41));
residual(65) = y(36)-(y(33)-y(13));
residual(66) = params(19)*(y(33)-params(11)*y(35))-(params(2)*y(37)-params(18)*params(7)*params(8)*y(41));
residual(67) = y(38)-(y(37)+(1-params(15))*y(41));
residual(68) = y(39)-(y(37)+(-params(15))*y(41));
residual(69) = y(42)-(params(7)*y(27)+(1-params(7))*y(34));
residual(70) = y(43)-(params(7)*y(26)+(1-params(7))*y(33));
residual(71) = y(44)-(params(7)*y(28)+(1-params(7))*y(35));
residual(72) = y(1)-(y(26)-y(15));
residual(73) = y(2)-(y(28)-y(16));
residual(74) = y(3)-(y(30)-y(17));
residual(75) = y(4)-(y(33)-y(20));
residual(76) = y(5)-(y(35)-y(21));
residual(77) = y(6)-(y(37)-y(22));
residual(78) = y(7)-(y(41)-y(25));
residual(79) = y(8)-(params(7)*y(1)+(1-params(7))*y(4));
residual(80) = y(9)-(params(7)*y(2)+(1-params(7))*y(5));
residual(81) = y(10)-(params(7)*y(3)+(1-params(7))*y(6));
residual(82) = y(11)-(params(25)*y(11)+x(1));
residual(83) = y(12)-(params(26)*y(12)+x(2));
residual(84) = y(13)-(params(25)*y(13)+x(3));
residual(85) = y(14)-(params(26)*y(14)+x(4));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end