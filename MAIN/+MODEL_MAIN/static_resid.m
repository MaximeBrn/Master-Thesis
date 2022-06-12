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
    T = MODEL_MAIN.static_resid_tt(T, y, x, params);
end
residual = zeros(83, 1);
residual(1) = params(7)*0.5*params(3)*2*y(1)+y(71)+y(78)*(-params(7));
residual(2) = params(7)*0.5*params(4)*params(11)*2*y(2)+y(72)+(-params(7))*y(79);
residual(3) = y(73)+params(7)*0.5*params(2)*(1-params(11))*2*y(3);
residual(4) = 0.5*(1-params(7))*params(3)*2*y(4)+y(74)+y(78)*(-(1-params(7)));
residual(5) = 0.5*(1-params(7))*params(4)*params(11)*2*y(5)+y(75)+y(79)*(-(1-params(7)));
residual(6) = y(76)+0.5*(1-params(7))*params(2)*(1-params(11))*2*y(6);
residual(7) = y(77);
residual(8) = y(78);
residual(9) = y(79);
residual(10) = y(80)+y(60)+y(56)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(48)+params(23)*y(80)*(-params(21));
residual(11) = y(81)+params(23)*y(81)*(-params(22));
residual(12) = y(82)+y(64)+y(58)*(-((-(1+params(3)))*params(17)))+(1+params(3))*y(49)+params(23)*(-params(21))*y(82);
residual(13) = y(83)+params(23)*(-params(22))*y(83);
residual(14) = y(71)+params(19)*y(53)+params(19)*y(50)+y(48)*(-params(3));
residual(15) = y(72)+y(53)*params(19)*(-params(11))+y(52)*(-params(4))+y(50)*(-(params(11)*(params(19)+params(20))))+y(48)*(-(params(11)*params(20)))+y(47)*(-(params(4)*params(5)))+(-(params(4)*params(5)))*y(44);
residual(16) = y(73)+y(53)*(-params(19))+(1-params(2)*params(5))*y(45)+y(44)*(1-params(2)*params(5));
residual(17) = y(44);
residual(18) = y(45);
residual(19) = y(74)+params(19)*y(54)+params(19)*y(51)+y(49)*(-params(3));
residual(20) = y(75)+params(19)*(-params(11))*y(54)+params(4)*y(52)+(-(params(11)*(params(19)+params(20))))*y(51)+y(49)*(-(params(11)*params(20)))+(-(params(4)*params(5)))*y(46)+(-(params(4)*params(5)))*y(45);
residual(21) = y(76)+(-params(19))*y(54)+y(47)*(1-params(2)*params(5))+(1-params(2)*params(5))*y(46);
residual(22) = y(47);
residual(23) = y(46);
residual(24) = y(77)+y(54)*(1+params(18))*params(7)*params(8)+y(53)*(-((1+params(18))*(1-params(7))*params(8)))+y(52)+y(51)*params(18)+y(50)*(-params(18));
residual(25) = (-params(7))*y(69)+params(19)*y(61)+y(59)*(-T(1))+y(56)*(-(params(16)*(params(3)+params(19))))+y(55)+T(2)*(-y(55))-y(60)-y(71);
residual(26) = params(7)*0.5*params(6)/params(16)*2*y(26)+(-params(7))*y(68)+y(56)+T(2)*y(55)*(-T(3))+T(2)*y(56)*(-params(1));
residual(27) = (-params(7))*y(70)+params(19)*(-params(11))*y(61)+y(59)*(-((-params(11))*T(1)))+y(56)*(-(params(16)*(-(params(11)*params(19)))))+(-params(11))*y(55)+T(2)*params(11)*y(55)-y(72);
residual(28) = y(60);
residual(29) = (-params(19))*y(61)-y(62)-y(63)-y(73);
residual(30) = y(62);
residual(31) = y(63);
residual(32) = (-(1-params(7)))*y(69)+params(19)*y(65)+y(59)*T(1)+y(58)*(-(params(17)*(params(3)+params(19))))+y(57)+T(2)*(-y(57))-y(64)-y(74);
residual(33) = 0.5*(1-params(7))*params(6)/params(17)*2*y(33)+(-(1-params(7)))*y(68)+y(58)+T(2)*(-T(3))*y(57)+T(2)*y(58)*(-params(1));
residual(34) = (-(1-params(7)))*y(70)+params(19)*(-params(11))*y(65)+y(59)*(-(params(11)*T(1)))+y(58)*(-(params(17)*(-(params(11)*params(19)))))+(-params(11))*y(57)+T(2)*params(11)*y(57)-y(75);
residual(35) = y(64);
residual(36) = (-params(19))*y(65)-y(66)-y(67)-y(76);
residual(37) = y(66);
residual(38) = y(67);
residual(39) = T(3)*y(57)+y(55)*T(3);
residual(40) = y(67)*params(15)+y(66)*(-(1-params(15)))+(1+params(18))*params(7)*params(8)*y(65)+y(63)*(1-params(14))+y(62)*(-params(14))+(-((1+params(18))*(1-params(7))*params(8)))*y(61)+y(59)+y(58)*(-(params(17)*params(18)))+y(57)*T(4)+y(56)*(-(params(16)*(-params(18))))+y(55)*(-T(4))+T(2)*y(55)*T(4)+T(2)*y(57)*(-T(4))-y(77);
residual(41) = y(68);
residual(42) = y(69);
residual(43) = y(70);
residual(44) = y(17)-(params(4)*params(5)*y(15)-(1-params(2)*params(5))*y(16));
residual(45) = y(18)-(params(4)*params(5)*y(20)-(1-params(2)*params(5))*y(16));
residual(46) = y(23)-(params(4)*params(5)*y(20)-(1-params(2)*params(5))*y(21));
residual(47) = y(22)-(params(4)*params(5)*y(15)-(1-params(2)*params(5))*y(21));
residual(48) = (-(params(11)*params(20)*y(15)+params(3)*y(14)-(1+params(3))*y(10)));
residual(49) = (-(params(11)*params(20)*y(20)+params(3)*y(19)-(1+params(3))*y(12)));
residual(50) = params(19)*y(14)-(params(11)*(params(19)+params(20))*y(15)+params(18)*y(24));
residual(51) = params(19)*y(19)-(params(11)*(params(19)+params(20))*y(20)-params(18)*y(24));
residual(52) = y(24)-params(4)*(y(15)-y(20));
residual(53) = params(19)*(y(14)-params(11)*y(15))-(params(19)*y(16)+(1+params(18))*(1-params(7))*params(8)*y(24));
residual(54) = params(19)*(y(19)-params(11)*y(20))-(params(19)*y(21)-(1+params(18))*params(7)*params(8)*y(24));
residual(55) = y(25)-(y(25)-T(3)*(y(39)-y(26)));
residual(56) = y(26)-(y(26)*params(1)+params(16)*((params(3)+params(19))*y(25)-params(11)*params(19)*y(27)-params(18)*y(40)-(1+params(3))*y(10)));
residual(57) = y(32)-(y(32)-T(3)*(y(39)-y(33)));
residual(58) = y(33)-(params(1)*y(33)+params(17)*(params(18)*y(40)+(params(3)+params(19))*y(32)-params(11)*params(19)*y(34)-(1+params(3))*y(12)));
residual(59) = y(40)-T(1)*(y(25)-y(32)-params(11)*(y(27)-y(34)));
residual(60) = y(28)-(y(25)-y(10));
residual(61) = params(19)*(y(25)-params(11)*y(27))-(params(19)*y(29)+(1+params(18))*(1-params(7))*params(8)*y(40));
residual(62) = y(30)-(y(29)+params(14)*y(40));
residual(63) = y(31)-(y(29)+y(40)*(-(1-params(14))));
residual(64) = y(35)-(y(32)-y(12));
residual(65) = params(19)*(y(32)-params(11)*y(34))-(params(19)*y(36)-(1+params(18))*params(7)*params(8)*y(40));
residual(66) = y(37)-(y(36)+(1-params(15))*y(40));
residual(67) = y(38)-(y(36)+y(40)*(-params(15)));
residual(68) = y(41)-(params(7)*y(26)+(1-params(7))*y(33));
residual(69) = y(42)-(params(7)*y(25)+(1-params(7))*y(32));
residual(70) = y(43)-(params(7)*y(27)+(1-params(7))*y(34));
residual(71) = y(1)-(y(25)-y(14));
residual(72) = y(2)-(y(27)-y(15));
residual(73) = y(3)-(y(29)-y(16));
residual(74) = y(4)-(y(32)-y(19));
residual(75) = y(5)-(y(34)-y(20));
residual(76) = y(6)-(y(36)-y(21));
residual(77) = y(7)-(y(40)-y(24));
residual(78) = y(8)-(params(7)*y(1)+(1-params(7))*y(4));
residual(79) = y(9)-(params(7)*y(2)+(1-params(7))*y(5));
residual(80) = y(10)-(params(21)*y(10)+x(1));
residual(81) = y(11)-(params(22)*y(11)+x(2));
residual(82) = y(12)-(params(21)*y(12)+x(3));
residual(83) = y(13)-(params(22)*y(13)+x(4));
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
