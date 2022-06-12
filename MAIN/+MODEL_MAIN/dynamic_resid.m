function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = MODEL_MAIN.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(83, 1);
residual(1) = params(7)*0.5*params(3)*2*y(9)+y(79)+y(86)*(-params(7));
residual(2) = params(7)*0.5*params(4)*params(11)*2*y(10)+y(80)+(-params(7))*y(87);
residual(3) = y(81)+params(7)*0.5*params(2)*(1-params(11))*2*y(11);
residual(4) = (1-params(7))*0.5*params(3)*2*y(12)+y(82)+y(86)*(-(1-params(7)));
residual(5) = (1-params(7))*0.5*params(4)*params(11)*2*y(13)+y(83)+y(87)*(-(1-params(7)));
residual(6) = y(84)+(1-params(7))*0.5*params(2)*(1-params(11))*2*y(14);
residual(7) = y(85);
residual(8) = y(86);
residual(9) = y(87);
residual(10) = y(88)+y(68)+y(64)*(-(params(16)*(-(1+params(3)))))+(1+params(3))*y(56)+params(23)*y(99)*(-params(21));
residual(11) = y(89)+params(23)*y(100)*(-params(22));
residual(12) = y(90)+y(72)+y(66)*(-(params(17)*(-(1+params(3)))))+(1+params(3))*y(57)+params(23)*(-params(21))*y(101);
residual(13) = y(91)+params(23)*(-params(22))*y(102);
residual(14) = y(79)+params(19)*y(61)+params(19)*y(58)+y(56)*(-params(3));
residual(15) = y(80)+y(61)*params(19)*(-params(11))+y(60)*(-params(4))+y(58)*(-(params(11)*(params(20)+params(19))))+y(56)*(-(params(20)*params(11)))+y(55)*(-(params(5)*params(4)))+(-(params(5)*params(4)))*y(52);
residual(16) = y(81)+y(61)*(-params(19))+(1-params(5)*params(2))*y(53)+(1-params(5)*params(2))*y(52);
residual(17) = y(52);
residual(18) = y(53);
residual(19) = y(82)+params(19)*y(62)+params(19)*y(59)+y(57)*(-params(3));
residual(20) = y(83)+params(19)*(-params(11))*y(62)+params(4)*y(60)+(-(params(11)*(params(20)+params(19))))*y(59)+y(57)*(-(params(20)*params(11)))+(-(params(5)*params(4)))*y(54)+(-(params(5)*params(4)))*y(53);
residual(21) = y(84)+(-params(19))*y(62)+(1-params(5)*params(2))*y(55)+(1-params(5)*params(2))*y(54);
residual(22) = y(55);
residual(23) = y(54);
residual(24) = y(85)+(1+params(18))*params(8)*params(7)*y(62)+y(61)*(-(params(8)*(1-params(7))*(1+params(18))))+y(60)+params(18)*y(59)+y(58)*(-params(18));
residual(25) = (-params(7))*y(77)+params(19)*y(69)+y(67)*(-T(3))+y(64)*(-(params(16)*(params(3)+params(19))))+y(63)+T(4)*(-y(5))-y(68)-y(79);
residual(26) = params(7)*0.5*params(6)/params(16)*2*y(34)+(-params(7))*y(76)+y(64)+T(4)*y(5)*(-T(1))+T(4)*y(6)*(-params(1));
residual(27) = (-params(7))*y(78)+params(19)*(-params(11))*y(69)+y(67)*(-(T(3)*(-params(11))))+y(64)*(-(params(16)*(-(params(11)*params(19)))))+(-params(11))*y(63)+T(4)*params(11)*y(5)-y(80);
residual(28) = y(68);
residual(29) = (-params(19))*y(69)-y(70)-y(71)-y(81);
residual(30) = y(70);
residual(31) = y(71);
residual(32) = (-(1-params(7)))*y(77)+params(19)*y(73)+T(3)*y(67)+y(66)*(-((params(3)+params(19))*params(17)))+y(65)+T(4)*(-y(7))-y(72)-y(82);
residual(33) = (1-params(7))*0.5*params(6)/params(17)*2*y(41)+(-(1-params(7)))*y(76)+y(66)+T(4)*(-T(1))*y(7)+T(4)*(-params(1))*y(8);
residual(34) = (-(1-params(7)))*y(78)+params(19)*(-params(11))*y(73)+y(67)*(-(params(11)*T(3)))+y(66)*(-(params(17)*(-(params(11)*params(19)))))+(-params(11))*y(65)+T(4)*params(11)*y(7)-y(83);
residual(35) = y(72);
residual(36) = (-params(19))*y(73)-y(74)-y(75)-y(84);
residual(37) = y(74);
residual(38) = y(75);
residual(39) = T(1)*y(65)+T(1)*y(63);
residual(40) = params(15)*y(75)+y(74)*(-(1-params(15)))+(1+params(18))*params(8)*params(7)*y(73)+(1-params(14))*y(71)+y(70)*(-params(14))+(-(params(8)*(1-params(7))*(1+params(18))))*y(69)+y(67)+y(66)*(-(params(18)*params(17)))+T(2)*y(65)+y(64)*(-(params(16)*(-params(18))))+y(63)*(-T(2))+T(4)*T(2)*y(5)+T(4)*y(7)*(-T(2))-y(85);
residual(41) = y(76);
residual(42) = y(77);
residual(43) = y(78);
residual(44) = y(25)-(params(5)*params(4)*y(23)-(1-params(5)*params(2))*y(24));
residual(45) = y(26)-(params(5)*params(4)*y(28)-(1-params(5)*params(2))*y(24));
residual(46) = y(31)-(params(5)*params(4)*y(28)-(1-params(5)*params(2))*y(29));
residual(47) = y(30)-(params(5)*params(4)*y(23)-(1-params(5)*params(2))*y(29));
residual(48) = (-(y(23)*params(20)*params(11)+params(3)*y(22)-(1+params(3))*y(18)));
residual(49) = (-(y(28)*params(20)*params(11)+params(3)*y(27)-(1+params(3))*y(20)));
residual(50) = y(22)*params(19)-(y(23)*params(11)*(params(20)+params(19))+params(18)*y(32));
residual(51) = y(27)*params(19)-(y(28)*params(11)*(params(20)+params(19))-params(18)*y(32));
residual(52) = y(32)-params(4)*(y(23)-y(28));
residual(53) = params(19)*(y(22)-y(23)*params(11))-(y(24)*params(19)+y(32)*params(8)*(1-params(7))*(1+params(18)));
residual(54) = params(19)*(y(27)-y(28)*params(11))-(y(29)*params(19)-y(32)*(1+params(18))*params(8)*params(7));
residual(55) = y(33)-(y(92)-T(1)*(y(47)-y(93))-T(2)*(y(98)-y(48))-params(11)*(y(94)-y(35)));
residual(56) = y(34)-(y(93)*params(1)+params(16)*(y(33)*(params(3)+params(19))-y(35)*params(11)*params(19)-params(18)*y(48)-(1+params(3))*y(18)));
residual(57) = y(40)-(T(2)*(y(98)-y(48))+y(95)-T(1)*(y(47)-y(96))-params(11)*(y(97)-y(42)));
residual(58) = y(41)-(params(1)*y(96)+params(17)*(params(18)*y(48)+(params(3)+params(19))*y(40)-params(11)*params(19)*y(42)-(1+params(3))*y(20)));
residual(59) = y(48)-T(3)*(y(33)-y(40)-params(11)*(y(35)-y(42)));
residual(60) = y(36)-(y(33)-y(18));
residual(61) = params(19)*(y(33)-params(11)*y(35))-(params(19)*y(37)+params(8)*(1-params(7))*(1+params(18))*y(48));
residual(62) = y(38)-(y(37)+y(48)*params(14));
residual(63) = y(39)-(y(37)+y(48)*(-(1-params(14))));
residual(64) = y(43)-(y(40)-y(20));
residual(65) = params(19)*(y(40)-params(11)*y(42))-(params(19)*y(44)-(1+params(18))*params(8)*params(7)*y(48));
residual(66) = y(45)-(y(44)+y(48)*(1-params(15)));
residual(67) = y(46)-(y(44)+y(48)*(-params(15)));
residual(68) = y(49)-(params(7)*y(34)+(1-params(7))*y(41));
residual(69) = y(50)-(params(7)*y(33)+(1-params(7))*y(40));
residual(70) = y(51)-(params(7)*y(35)+(1-params(7))*y(42));
residual(71) = y(9)-(y(33)-y(22));
residual(72) = y(10)-(y(35)-y(23));
residual(73) = y(11)-(y(37)-y(24));
residual(74) = y(12)-(y(40)-y(27));
residual(75) = y(13)-(y(42)-y(28));
residual(76) = y(14)-(y(44)-y(29));
residual(77) = y(15)-(y(48)-y(32));
residual(78) = y(16)-(params(7)*y(9)+(1-params(7))*y(12));
residual(79) = y(17)-(params(7)*y(10)+(1-params(7))*y(13));
residual(80) = y(18)-(params(21)*y(1)+x(it_, 1));
residual(81) = y(19)-(params(22)*y(2)+x(it_, 2));
residual(82) = y(20)-(params(21)*y(3)+x(it_, 3));
residual(83) = y(21)-(params(22)*y(4)+x(it_, 4));

end
