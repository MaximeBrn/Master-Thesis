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
    T = Model_MAIN_2.static_resid_tt(T, y, x, params);
end
residual = zeros(85, 1);
residual(1) = params(7)*0.5*params(3)*2*y(1)+y(80)*(-params(7))+y(73)+y(72)*(-params(29))+y(71)*(-params(25));
residual(2) = y(74)+(-params(7))*y(81);
residual(3) = y(75)+params(7)*0.5*params(2)*(1-params(11))*2*y(3);
residual(4) = 0.5*(1-params(7))*params(3)*2*y(4)+y(80)*(-(1-params(7)))+y(76)+y(72)*(-params(30))+y(71)*(-params(26));
residual(5) = y(77)+y(81)*(-(1-params(7)));
residual(6) = y(78)+0.5*(1-params(7))*params(2)*(1-params(11))*2*y(6);
residual(7) = y(79);
residual(8) = y(80);
residual(9) = y(81);
residual(10) = y(82)+y(60)+y(56)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(44)+params(35)*y(82)*(-params(33));
residual(11) = y(83)+params(35)*y(83)*(-params(34));
residual(12) = y(84)+y(64)+y(58)*(-((-(1+params(3)))*params(17)))+(1+params(3))*y(45)+params(35)*(-params(33))*y(84);
residual(13) = y(85)+params(35)*(-params(34))*y(85);
residual(14) = y(73)+y(48)*(-params(22))+params(19)*y(46)+y(44)*(-params(3));
residual(15) = y(74)+params(4)*y(49)+y(48)*(-(params(22)*(-params(11))))+y(46)*params(19)*(-params(11));
residual(16) = y(75)+y(49)*(-params(2))+y(46)*(-params(2))+y(44)*(-params(2))-y(51)-y(52);
residual(17) = y(51);
residual(18) = y(52);
residual(19) = y(76)+y(48)*params(22)+params(19)*y(47)+y(45)*(-params(3));
residual(20) = y(77)+params(4)*y(50)+y(48)*(-(params(11)*params(22)))+params(19)*(-params(11))*y(47);
residual(21) = y(78)+(-params(2))*y(50)+(-params(2))*y(47)+y(45)*(-params(2))-y(53)-y(54);
residual(22) = y(53);
residual(23) = y(54);
residual(24) = y(79)+y(54)*params(15)+y(53)*(-(1-params(15)))+y(52)*(1-params(14))+y(51)*(-params(14))+y(50)*params(15)+y(49)*(-params(14))+y(48)+y(47)*params(18)*params(7)*params(8)+y(46)*(-(params(18)*(1-params(7))*params(8)))+y(45)*params(15)+y(44)*(-params(14));
residual(25) = (-params(7))*y(69)+params(19)*y(61)+(-params(22))*y(59)+y(58)*(-(params(17)*(params(19)-params(22)*params(24))))+T(1)*y(57)+y(56)*(-(params(16)*(params(3)+params(22)*params(23))))+y(55)+T(2)*(-y(55))+T(2)*y(57)*(-T(1))-y(60)-y(73);
residual(26) = params(7)*0.5*params(6)/params(16)*2*y(26)+y(72)*(-params(31))+y(71)*(-params(27))+(-params(7))*y(68)+y(56)+T(2)*y(55)*(-T(3))+T(2)*y(56)*(-params(1));
residual(27) = y(71)+(-params(7))*y(70)+params(19)*(-params(11))*y(61)+(-(params(22)*(-params(11))))*y(59)+y(58)*(-(params(17)*(-params(11))*(params(19)-params(22)*params(24))))+y(57)*(-(params(11)*T(1)))+y(56)*(-(params(16)*(-(params(11)*params(22)*params(23)))))+(-params(11))*y(55)+T(2)*params(11)*y(55)+T(2)*y(57)*(-((-params(11))*T(1)))-y(74);
residual(28) = y(60);
residual(29) = (-params(2))*y(61)-y(62)-y(63)-y(75);
residual(30) = y(62);
residual(31) = y(63);
residual(32) = (-(1-params(7)))*y(69)+params(19)*y(65)+params(22)*y(59)+y(58)*(-(params(17)*(params(3)+params(22)*params(24))))+y(57)+y(56)*(-(params(16)*(params(19)-params(22)*params(23))))+y(55)*T(4)+T(2)*y(55)*(-T(4))+T(2)*(-y(57))-y(64)-y(76);
residual(33) = 0.5*(1-params(7))*params(6)/params(17)*2*y(33)+y(72)*(-params(32))+y(71)*(-params(28))+(-(1-params(7)))*y(68)+y(58)+T(2)*y(57)*(-T(5))+T(2)*y(58)*(-params(1));
residual(34) = y(72)+(-(1-params(7)))*y(70)+params(19)*(-params(11))*y(65)+(-(params(11)*params(22)))*y(59)+y(58)*(-(params(17)*(-(params(11)*params(22)*params(24)))))+(-params(11))*y(57)+y(56)*(-(params(16)*(-params(11))*(params(19)-params(22)*params(23))))+y(55)*(-(params(11)*T(4)))+T(2)*y(55)*(-((-params(11))*T(4)))+T(2)*params(11)*y(57)-y(77);
residual(35) = y(64);
residual(36) = (-params(2))*y(65)-y(66)-y(67)-y(78);
residual(37) = y(66);
residual(38) = y(67);
residual(39) = y(57)*T(5)+y(55)*T(3);
residual(40) = params(15)*y(67)+(-(1-params(15)))*y(66)+params(18)*params(7)*params(8)*y(65)+(1-params(14))*y(63)+(-params(14))*y(62)+y(59)+(-(params(18)*(1-params(7))*params(8)))*y(61)-y(79);
residual(41) = y(68);
residual(42) = y(69);
residual(43) = y(70);
residual(44) = (-(params(2)*y(16)+params(3)*y(14)+params(14)*y(24)-(1+params(3))*y(10)));
residual(45) = (-(params(2)*y(21)+params(3)*y(19)-params(15)*y(24)-(1+params(3))*y(12)));
residual(46) = params(19)*(y(14)-params(11)*y(15))-(params(2)*y(16)+params(18)*(1-params(7))*params(8)*y(24));
residual(47) = params(19)*(y(19)-params(11)*y(20))-(params(2)*y(21)-params(18)*params(7)*params(8)*y(24));
residual(48) = y(24)-params(22)*(y(14)-y(19)-params(11)*(y(15)-y(20)));
residual(49) = params(4)*y(15)-(params(2)*y(16)+params(14)*y(24));
residual(50) = params(4)*y(20)-(params(2)*y(21)-params(15)*y(24));
residual(51) = y(17)-(y(16)+params(14)*y(24));
residual(52) = y(18)-(y(16)+y(24)*(-(1-params(14))));
residual(53) = y(22)-(y(21)+(1-params(15))*y(24));
residual(54) = y(23)-(y(21)+y(24)*(-params(15)));
residual(55) = y(25)-(y(25)-T(3)*(y(39)-y(26)));
residual(56) = y(26)-(y(26)*params(1)+params(16)*((params(3)+params(22)*params(23))*y(25)-params(11)*params(22)*params(23)*y(27)+(params(19)-params(22)*params(23))*(y(32)-params(11)*y(34))-(1+params(3))*y(10)));
residual(57) = y(32)-(y(32)-T(5)*(y(39)-y(33)));
residual(58) = y(33)-(params(1)*y(33)+params(17)*((params(3)+params(22)*params(24))*y(32)-params(11)*params(22)*params(24)*y(34)+(params(19)-params(22)*params(24))*(y(25)-params(11)*y(27))-(1+params(3))*y(12)));
residual(59) = y(40)-params(22)*(y(25)-y(32)-params(11)*(y(27)-y(34)));
residual(60) = y(28)-(y(25)-y(10));
residual(61) = params(19)*(y(25)-params(11)*y(27))-(params(2)*y(29)+params(18)*(1-params(7))*params(8)*y(40));
residual(62) = y(30)-(y(29)+params(14)*y(40));
residual(63) = y(31)-(y(29)+(-(1-params(14)))*y(40));
residual(64) = y(35)-(y(32)-y(12));
residual(65) = params(19)*(y(32)-params(11)*y(34))-(params(2)*y(36)-params(18)*params(7)*params(8)*y(40));
residual(66) = y(37)-(y(36)+(1-params(15))*y(40));
residual(67) = y(38)-(y(36)+(-params(15))*y(40));
residual(68) = y(41)-(params(7)*y(26)+(1-params(7))*y(33));
residual(69) = y(42)-(params(7)*y(25)+(1-params(7))*y(32));
residual(70) = y(43)-(params(7)*y(27)+(1-params(7))*y(34));
residual(71) = y(27)-(y(1)*params(25)+y(4)*params(26)+y(26)*params(27)+y(33)*params(28));
residual(72) = y(34)-(y(1)*params(29)+y(4)*params(30)+y(26)*params(31)+y(33)*params(32));
residual(73) = y(1)-(y(25)-y(14));
residual(74) = y(2)-(y(27)-y(15));
residual(75) = y(3)-(y(29)-y(16));
residual(76) = y(4)-(y(32)-y(19));
residual(77) = y(5)-(y(34)-y(20));
residual(78) = y(6)-(y(36)-y(21));
residual(79) = y(7)-(y(40)-y(24));
residual(80) = y(8)-(params(7)*y(1)+(1-params(7))*y(4));
residual(81) = y(9)-(params(7)*y(2)+(1-params(7))*y(5));
residual(82) = y(10)-(params(33)*y(10)+x(1));
residual(83) = y(11)-(params(34)*y(11)+x(2));
residual(84) = y(12)-(params(33)*y(12)+x(3));
residual(85) = y(13)-(params(34)*y(13)+x(4));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
