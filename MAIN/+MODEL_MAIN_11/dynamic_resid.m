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
    T = MODEL_MAIN_11.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(94, 1);
lhs = 0;
rhs = params(2)*y(18)+params(3)*y(16)+params(14)*y(23)-(1+params(3))*y(13);
residual(1) = lhs - rhs;
lhs = 0;
rhs = params(2)*y(28)+params(3)*y(26)-y(23)*params(15)-(1+params(3))*y(14);
residual(2) = lhs - rhs;
lhs = params(19)*(y(16)-params(11)*y(17));
rhs = params(2)*y(18)+y(23)*params(8)*(1-params(7))*params(18);
residual(3) = lhs - rhs;
lhs = params(19)*(y(26)-params(11)*y(27));
rhs = params(2)*y(28)-y(23)*params(18)*params(8)*params(7);
residual(4) = lhs - rhs;
lhs = y(23);
rhs = params(21)*(y(16)-y(26)-params(11)*(y(17)-y(27)));
residual(5) = lhs - rhs;
lhs = y(17)*params(4);
rhs = params(2)*y(18)+params(14)*y(23);
residual(6) = lhs - rhs;
lhs = y(27)*params(4);
rhs = params(2)*y(28)-y(23)*params(15);
residual(7) = lhs - rhs;
lhs = y(33);
rhs = (-y(23));
residual(8) = lhs - rhs;
lhs = y(19);
rhs = y(18)+y(23)*params(14)*params(5);
residual(9) = lhs - rhs;
lhs = y(20);
rhs = y(18)+y(23)*(-params(5))*(1-params(14));
residual(10) = lhs - rhs;
lhs = y(29);
rhs = y(28)+y(23)*params(5)*(1-params(15));
residual(11) = lhs - rhs;
lhs = y(30);
rhs = y(28)+y(23)*params(15)*(-params(5));
residual(12) = lhs - rhs;
lhs = y(21);
rhs = y(16)-y(13);
residual(13) = lhs - rhs;
lhs = y(31);
rhs = y(26)-y(14);
residual(14) = lhs - rhs;
lhs = y(22);
rhs = y(17)-y(16);
residual(15) = lhs - rhs;
lhs = y(32);
rhs = y(27)-y(26);
residual(16) = lhs - rhs;
lhs = y(24);
rhs = (1+params(3))*(y(107)-y(13))-params(3)*(y(109)-y(16));
residual(17) = lhs - rhs;
lhs = y(34);
rhs = (1+params(3))*(y(108)-y(14))-params(3)*(y(110)-y(26));
residual(18) = lhs - rhs;
lhs = y(36);
rhs = y(16)*params(7)+y(26)*(1-params(7));
residual(19) = lhs - rhs;
lhs = y(37);
rhs = y(17)*params(7)+(1-params(7))*y(27);
residual(20) = lhs - rhs;
lhs = y(38);
rhs = y(18)*params(7)+y(28)*(1-params(7));
residual(21) = lhs - rhs;
lhs = y(41);
rhs = params(7)*y(24)+(1-params(7))*y(34);
residual(22) = lhs - rhs;
lhs = y(39);
rhs = params(7)*y(19)+(1-params(7))*y(29);
residual(23) = lhs - rhs;
lhs = y(40);
rhs = params(7)*y(20)+(1-params(7))*y(30);
residual(24) = lhs - rhs;
lhs = y(42);
rhs = params(7)*y(22)+(1-params(7))*y(32);
residual(25) = lhs - rhs;
lhs = y(43);
rhs = params(7)*y(21)+(1-params(7))*y(31);
residual(26) = lhs - rhs;
lhs = y(25);
rhs = y(16)-(1-params(11))*(y(18)+params(14)*y(23))-params(11)*y(17);
residual(27) = lhs - rhs;
lhs = y(35);
rhs = y(26)-(1-params(11))*(y(28)+params(15)*y(33))-params(11)*y(27);
residual(28) = lhs - rhs;
lhs = y(44);
rhs = params(7)*y(25)+(1-params(7))*y(35);
residual(29) = lhs - rhs;
lhs = y(46);
rhs = params(1)*y(112)+params(16)*((params(3)+params(21)*params(22))*y(45)-params(11)*params(21)*params(22)*y(47)+(params(19)-params(21)*params(22))*(y(56)-params(11)*y(58))-(1+params(3))*y(13));
residual(30) = lhs - rhs;
lhs = y(57);
rhs = params(1)*y(115)+params(17)*(y(56)*(params(3)+params(21)*params(23))-y(58)*params(11)*params(21)*params(23)+(params(19)-params(21)*params(23))*(y(45)-params(11)*y(47))-(1+params(3))*y(14));
residual(31) = lhs - rhs;
lhs = y(45);
rhs = y(111)-params(11)*(y(113)-y(47))-1/(params(21)*params(22))*(y(54)-y(112))+T(1)*(y(114)-y(56)-params(11)*(y(116)-y(58)));
residual(32) = lhs - rhs;
lhs = y(56);
rhs = y(114)-params(11)*(y(116)-y(58))-1/(params(21)*params(23))*(y(64)-y(115))+T(2)*(y(111)-y(45)-params(11)*(y(113)-y(47)));
residual(33) = lhs - rhs;
lhs = y(53);
rhs = params(21)*(y(45)-y(56)-params(11)*(y(47)-y(58)));
residual(34) = lhs - rhs;
lhs = y(65);
rhs = (-y(53));
residual(35) = lhs - rhs;
lhs = y(48);
rhs = y(45)-y(13);
residual(36) = lhs - rhs;
lhs = y(59);
rhs = y(56)-y(14);
residual(37) = lhs - rhs;
lhs = params(19)*(y(45)-params(11)*y(47));
rhs = params(2)*y(49)+params(8)*(1-params(7))*params(18)*y(53);
residual(38) = lhs - rhs;
lhs = params(19)*(y(56)-params(11)*y(58));
rhs = params(2)*y(60)-params(18)*params(8)*params(7)*y(53);
residual(39) = lhs - rhs;
lhs = y(52);
rhs = y(47)-y(45);
residual(40) = lhs - rhs;
lhs = y(63);
rhs = y(58)-y(56);
residual(41) = lhs - rhs;
lhs = y(50);
rhs = y(49)+params(14)*params(5)*y(53);
residual(42) = lhs - rhs;
lhs = y(51);
rhs = y(49)+(-params(5))*(1-params(14))*y(53);
residual(43) = lhs - rhs;
lhs = y(61);
rhs = y(60)+params(5)*(1-params(15))*y(53);
residual(44) = lhs - rhs;
lhs = y(62);
rhs = y(60)+params(15)*(-params(5))*y(53);
residual(45) = lhs - rhs;
lhs = y(54);
rhs = y(72);
residual(46) = lhs - rhs;
lhs = y(64);
rhs = y(72);
residual(47) = lhs - rhs;
lhs = y(73);
rhs = params(7)*y(46)+(1-params(7))*y(57);
residual(48) = lhs - rhs;
lhs = y(67);
rhs = params(7)*y(45)+(1-params(7))*y(56);
residual(49) = lhs - rhs;
lhs = y(68);
rhs = params(7)*y(47)+(1-params(7))*y(58);
residual(50) = lhs - rhs;
lhs = y(69);
rhs = params(7)*y(49)+(1-params(7))*y(60);
residual(51) = lhs - rhs;
lhs = y(70);
rhs = params(7)*y(50)+(1-params(7))*y(61);
residual(52) = lhs - rhs;
lhs = y(71);
rhs = params(7)*y(51)+(1-params(7))*y(62);
residual(53) = lhs - rhs;
lhs = y(74);
rhs = params(7)*y(52)+(1-params(7))*y(63);
residual(54) = lhs - rhs;
lhs = y(75);
rhs = params(7)*y(48)+(1-params(7))*y(59);
residual(55) = lhs - rhs;
lhs = y(55);
rhs = y(45)-(1-params(11))*(y(49)+params(14)*y(53))-params(11)*y(47);
residual(56) = lhs - rhs;
lhs = y(66);
rhs = y(56)-(1-params(11))*(y(60)+params(15)*y(65))-params(11)*y(58);
residual(57) = lhs - rhs;
lhs = y(76);
rhs = params(7)*y(55)+(1-params(7))*y(66);
residual(58) = lhs - rhs;
lhs = y(77);
rhs = y(45)-y(16);
residual(59) = lhs - rhs;
lhs = y(78);
rhs = y(47)-y(17);
residual(60) = lhs - rhs;
lhs = y(79);
rhs = y(49)-y(18);
residual(61) = lhs - rhs;
lhs = y(80);
rhs = y(50)-y(19);
residual(62) = lhs - rhs;
lhs = y(81);
rhs = y(51)-y(20);
residual(63) = lhs - rhs;
lhs = y(83);
rhs = y(48)-y(21);
residual(64) = lhs - rhs;
lhs = y(82);
rhs = y(52)-y(22);
residual(65) = lhs - rhs;
lhs = y(84);
rhs = y(53)-y(23);
residual(66) = lhs - rhs;
lhs = y(85);
rhs = y(54)-y(24);
residual(67) = lhs - rhs;
lhs = y(87);
rhs = y(56)-y(26);
residual(68) = lhs - rhs;
lhs = y(88);
rhs = y(58)-y(27);
residual(69) = lhs - rhs;
lhs = y(89);
rhs = y(60)-y(28);
residual(70) = lhs - rhs;
lhs = y(90);
rhs = y(61)-y(29);
residual(71) = lhs - rhs;
lhs = y(91);
rhs = y(62)-y(30);
residual(72) = lhs - rhs;
lhs = y(93);
rhs = y(59)-y(31);
residual(73) = lhs - rhs;
lhs = y(92);
rhs = y(63)-y(32);
residual(74) = lhs - rhs;
lhs = y(94);
rhs = y(65)-y(33);
residual(75) = lhs - rhs;
lhs = y(95);
rhs = y(64)-y(34);
residual(76) = lhs - rhs;
lhs = y(97);
rhs = params(7)*y(77)+(1-params(7))*y(87);
residual(77) = lhs - rhs;
lhs = y(98);
rhs = params(7)*y(78)+(1-params(7))*y(88);
residual(78) = lhs - rhs;
lhs = y(99);
rhs = params(7)*y(79)+(1-params(7))*y(89);
residual(79) = lhs - rhs;
lhs = y(102);
rhs = y(54)-y(41);
residual(80) = lhs - rhs;
lhs = y(106);
rhs = y(78)-y(88);
residual(81) = lhs - rhs;
lhs = y(103);
rhs = y(75)-y(43);
residual(82) = lhs - rhs;
lhs = y(104);
rhs = params(7)*y(82)+(1-params(7))*y(92);
residual(83) = lhs - rhs;
lhs = y(100);
rhs = params(7)*y(80)+(1-params(7))*y(90);
residual(84) = lhs - rhs;
lhs = y(101);
rhs = params(7)*y(81)+(1-params(7))*y(91);
residual(85) = lhs - rhs;
lhs = y(86);
rhs = y(55)-y(25);
residual(86) = lhs - rhs;
lhs = y(96);
rhs = y(66)-y(35);
residual(87) = lhs - rhs;
lhs = y(105);
rhs = params(7)*y(86)+(1-params(7))*y(96);
residual(88) = lhs - rhs;
lhs = y(72)-y(41);
rhs = 0.7*(y(6)-y(3))+y(73)*2.5+y(97)*0.125;
residual(89) = lhs - rhs;
lhs = y(78);
rhs = params(24)*y(9)+params(25)*(y(8)-y(12))+params(26)*(y(4)-y(7));
residual(90) = lhs - rhs;
lhs = y(88);
rhs = params(24)*y(11)+params(27)*(y(10)-y(12))+params(28)*(y(5)-y(7));
residual(91) = lhs - rhs;
lhs = y(13);
rhs = params(29)*y(1)-x(it_, 1);
residual(92) = lhs - rhs;
lhs = y(14);
rhs = params(29)*y(2)-x(it_, 2);
residual(93) = lhs - rhs;
lhs = y(15);
rhs = y(13)*params(7)+y(14)*(1-params(7));
residual(94) = lhs - rhs;

end
