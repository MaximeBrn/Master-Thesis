function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = Model_draft_4_testplan3.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(69,1);
g2_j = zeros(69,1);
g2_v = zeros(69,1);

g2_i(1)=1;
g2_i(2)=4;
g2_i(3)=4;
g2_i(4)=4;
g2_i(5)=5;
g2_i(6)=6;
g2_i(7)=6;
g2_i(8)=6;
g2_i(9)=6;
g2_i(10)=6;
g2_i(11)=6;
g2_i(12)=6;
g2_i(13)=6;
g2_i(14)=6;
g2_i(15)=6;
g2_i(16)=7;
g2_i(17)=7;
g2_i(18)=7;
g2_i(19)=7;
g2_i(20)=7;
g2_i(21)=7;
g2_i(22)=7;
g2_i(23)=7;
g2_i(24)=8;
g2_i(25)=11;
g2_i(26)=11;
g2_i(27)=11;
g2_i(28)=11;
g2_i(29)=11;
g2_i(30)=12;
g2_i(31)=13;
g2_i(32)=13;
g2_i(33)=13;
g2_i(34)=13;
g2_i(35)=13;
g2_i(36)=13;
g2_i(37)=13;
g2_i(38)=13;
g2_i(39)=13;
g2_i(40)=13;
g2_i(41)=14;
g2_i(42)=14;
g2_i(43)=14;
g2_i(44)=14;
g2_i(45)=14;
g2_i(46)=14;
g2_i(47)=14;
g2_i(48)=14;
g2_i(49)=14;
g2_i(50)=15;
g2_i(51)=15;
g2_i(52)=16;
g2_i(53)=16;
g2_i(54)=17;
g2_i(55)=17;
g2_i(56)=17;
g2_i(57)=17;
g2_i(58)=18;
g2_i(59)=18;
g2_i(60)=18;
g2_i(61)=18;
g2_i(62)=19;
g2_i(63)=19;
g2_i(64)=19;
g2_i(65)=19;
g2_i(66)=20;
g2_i(67)=20;
g2_i(68)=20;
g2_i(69)=20;
g2_j(1)=181;
g2_j(2)=316;
g2_j(3)=415;
g2_j(4)=802;
g2_j(5)=361;
g2_j(6)=327;
g2_j(7)=800;
g2_j(8)=406;
g2_j(9)=429;
g2_j(10)=1418;
g2_j(11)=433;
g2_j(12)=1594;
g2_j(13)=1445;
g2_j(14)=1617;
g2_j(15)=1621;
g2_j(16)=451;
g2_j(17)=475;
g2_j(18)=1507;
g2_j(19)=478;
g2_j(20)=1639;
g2_j(21)=1534;
g2_j(22)=1663;
g2_j(23)=1666;
g2_j(24)=496;
g2_j(25)=631;
g2_j(26)=634;
g2_j(27)=763;
g2_j(28)=724;
g2_j(29)=853;
g2_j(30)=676;
g2_j(31)=636;
g2_j(32)=851;
g2_j(33)=721;
g2_j(34)=738;
g2_j(35)=1469;
g2_j(36)=743;
g2_j(37)=1689;
g2_j(38)=1491;
g2_j(39)=1706;
g2_j(40)=1711;
g2_j(41)=631;
g2_j(42)=766;
g2_j(43)=784;
g2_j(44)=1558;
g2_j(45)=788;
g2_j(46)=1734;
g2_j(47)=1580;
g2_j(48)=1752;
g2_j(49)=1756;
g2_j(50)=318;
g2_j(51)=404;
g2_j(52)=633;
g2_j(53)=719;
g2_j(54)=1;
g2_j(55)=41;
g2_j(56)=1761;
g2_j(57)=1801;
g2_j(58)=91;
g2_j(59)=131;
g2_j(60)=1851;
g2_j(61)=1891;
g2_j(62)=46;
g2_j(63)=86;
g2_j(64)=1806;
g2_j(65)=1846;
g2_j(66)=136;
g2_j(67)=176;
g2_j(68)=1896;
g2_j(69)=1936;
g2_v(1)=params(5)*T(5)*T(5)*T(5)*getPowerDeriv(y(5)/params(5),1-params(1),3)/(1-params(1));
g2_v(2)=params(5)*(-(T(5)*T(5)*T(5)*getPowerDeriv(y(8)/params(5),1+params(4),3)/(1+params(4))));
g2_v(3)=(-1);
g2_v(4)=g2_v(3);
g2_v(5)=params(5)*params(10)*getPowerDeriv(y(9),1-params(9),3)/(1-params(9));
g2_v(6)=(-1);
g2_v(7)=g2_v(6);
g2_v(8)=params(14)*y(33)*(-(exp(y(37))*getPowerDeriv(y(10),params(12),3)));
g2_v(9)=params(14)*T(14);
g2_v(10)=g2_v(9);
g2_v(11)=params(14)*y(33)*T(14);
g2_v(12)=g2_v(11);
g2_v(13)=params(14)*T(9);
g2_v(14)=g2_v(13);
g2_v(15)=params(14)*y(33)*T(9);
g2_v(16)=params(14)*y(35)*(-(exp(y(38))*getPowerDeriv(y(11),params(13),3)));
g2_v(17)=params(14)*T(16);
g2_v(18)=g2_v(17);
g2_v(19)=params(14)*y(35)*T(16);
g2_v(20)=g2_v(19);
g2_v(21)=params(14)*T(10);
g2_v(22)=g2_v(21);
g2_v(23)=params(14)*y(35)*T(10);
g2_v(24)=(1-params(5))*T(6)*T(6)*T(6)*getPowerDeriv(y(12)/(1-params(5)),1-params(1),3)/(1-params(1));
g2_v(25)=(1-params(5))*(-(y(18)*T(6)*T(6)*T(6)*getPowerDeriv(T(7),1+params(4),3)/(1+params(4))));
g2_v(26)=(1-params(5))*(-(T(17)/(1+params(4))));
g2_v(27)=g2_v(26);
g2_v(28)=(-1);
g2_v(29)=g2_v(28);
g2_v(30)=(1-params(5))*params(10)*getPowerDeriv(y(16),1-params(9),3)/(1-params(9));
g2_v(31)=(-1);
g2_v(32)=g2_v(31);
g2_v(33)=params(14)*y(34)*(-(exp(y(39))*getPowerDeriv(y(17),params(12),3)));
g2_v(34)=params(14)*T(19);
g2_v(35)=g2_v(34);
g2_v(36)=params(14)*y(34)*T(19);
g2_v(37)=g2_v(36);
g2_v(38)=params(14)*T(11);
g2_v(39)=g2_v(38);
g2_v(40)=params(14)*y(34)*T(11);
g2_v(41)=(1-params(5))*(-(T(17)/(1+params(4))));
g2_v(42)=params(14)*y(36)*(-(exp(y(40))*getPowerDeriv(y(18),params(13),3)));
g2_v(43)=params(14)*T(21);
g2_v(44)=g2_v(43);
g2_v(45)=params(14)*y(36)*T(21);
g2_v(46)=g2_v(45);
g2_v(47)=params(14)*T(12);
g2_v(48)=g2_v(47);
g2_v(49)=params(14)*y(36)*T(12);
g2_v(50)=(-1);
g2_v(51)=g2_v(50);
g2_v(52)=(-1);
g2_v(53)=g2_v(52);
g2_v(54)=(-(exp(x(it_, 1))*getPowerDeriv(y(1),params(12),2)));
g2_v(55)=T(13);
g2_v(56)=g2_v(55);
g2_v(57)=(-T(1));
g2_v(58)=(-(exp(x(it_, 3))*getPowerDeriv(y(3),params(12),2)));
g2_v(59)=T(18);
g2_v(60)=g2_v(59);
g2_v(61)=(-T(2));
g2_v(62)=(-(exp(x(it_, 2))*getPowerDeriv(y(2),params(13),2)));
g2_v(63)=T(15);
g2_v(64)=g2_v(63);
g2_v(65)=(-T(3));
g2_v(66)=(-(exp(x(it_, 4))*getPowerDeriv(y(4),params(13),2)));
g2_v(67)=T(20);
g2_v(68)=g2_v(67);
g2_v(69)=(-T(4));
g2 = sparse(g2_i,g2_j,g2_v,28,1936);
end
