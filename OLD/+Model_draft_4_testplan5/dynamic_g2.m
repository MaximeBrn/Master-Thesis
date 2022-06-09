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
    T = Model_draft_4_testplan5.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(48,1);
g2_j = zeros(48,1);
g2_v = zeros(48,1);

g2_i(1)=1;
g2_i(2)=2;
g2_i(3)=2;
g2_i(4)=2;
g2_i(5)=2;
g2_i(6)=2;
g2_i(7)=3;
g2_i(8)=4;
g2_i(9)=5;
g2_i(10)=5;
g2_i(11)=5;
g2_i(12)=5;
g2_i(13)=5;
g2_i(14)=6;
g2_i(15)=7;
g2_i(16)=7;
g2_i(17)=8;
g2_i(18)=8;
g2_i(19)=9;
g2_i(20)=9;
g2_i(21)=9;
g2_i(22)=9;
g2_i(23)=10;
g2_i(24)=10;
g2_i(25)=10;
g2_i(26)=10;
g2_i(27)=11;
g2_i(28)=11;
g2_i(29)=11;
g2_i(30)=11;
g2_i(31)=12;
g2_i(32)=12;
g2_i(33)=12;
g2_i(34)=12;
g2_i(35)=13;
g2_i(36)=14;
g2_i(37)=15;
g2_i(38)=16;
g2_i(39)=17;
g2_i(40)=19;
g2_i(41)=20;
g2_i(42)=21;
g2_i(43)=22;
g2_i(44)=23;
g2_i(45)=25;
g2_i(46)=25;
g2_i(47)=26;
g2_i(48)=26;
g2_j(1)=141;
g2_j(2)=176;
g2_j(3)=180;
g2_j(4)=312;
g2_j(5)=289;
g2_j(6)=553;
g2_j(7)=246;
g2_j(8)=351;
g2_j(9)=386;
g2_j(10)=390;
g2_j(11)=522;
g2_j(12)=494;
g2_j(13)=593;
g2_j(14)=456;
g2_j(15)=179;
g2_j(16)=278;
g2_j(17)=389;
g2_j(18)=488;
g2_j(19)=1;
g2_j(20)=31;
g2_j(21)=1021;
g2_j(22)=1051;
g2_j(23)=36;
g2_j(24)=67;
g2_j(25)=1090;
g2_j(26)=1121;
g2_j(27)=71;
g2_j(28)=100;
g2_j(29)=1057;
g2_j(30)=1086;
g2_j(31)=106;
g2_j(32)=136;
g2_j(33)=1126;
g2_j(34)=1156;
g2_j(35)=141;
g2_j(36)=176;
g2_j(37)=246;
g2_j(38)=281;
g2_j(39)=316;
g2_j(40)=351;
g2_j(41)=386;
g2_j(42)=456;
g2_j(43)=491;
g2_j(44)=526;
g2_j(45)=179;
g2_j(46)=278;
g2_j(47)=389;
g2_j(48)=488;
g2_v(1)=params(5)*T(7)*T(7)*getPowerDeriv(y(5)/params(5),(-params(1)),2);
g2_v(2)=params(5)*y(10)*T(7)*T(7)*getPowerDeriv(y(6)/params(5),params(4),2);
g2_v(3)=params(5)*T(8);
g2_v(4)=g2_v(3);
g2_v(5)=(-1);
g2_v(6)=g2_v(5);
g2_v(7)=params(5)*params(9)*T(7)*T(7)*getPowerDeriv(y(8)/params(5),(-params(8)),2);
g2_v(8)=(1-params(5))*T(11)*T(11)*getPowerDeriv(y(11)/(1-params(5)),(-params(1)),2);
g2_v(9)=(1-params(5))*y(16)*T(11)*T(11)*getPowerDeriv(y(12)/(1-params(5)),params(4),2);
g2_v(10)=(1-params(5))*T(12);
g2_v(11)=g2_v(10);
g2_v(12)=(-1);
g2_v(13)=g2_v(12);
g2_v(14)=params(9)*(1-params(5))*T(11)*T(11)*getPowerDeriv(y(14)/(1-params(5)),(-params(8)),2);
g2_v(15)=(-1);
g2_v(16)=g2_v(15);
g2_v(17)=(-1);
g2_v(18)=g2_v(17);
g2_v(19)=(-(exp(x(it_, 1))*getPowerDeriv(y(1),params(10),2)));
g2_v(20)=T(9);
g2_v(21)=g2_v(20);
g2_v(22)=(-T(3));
g2_v(23)=(-(exp(x(it_, 3))*getPowerDeriv(y(2),params(11),2)));
g2_v(24)=T(10);
g2_v(25)=g2_v(24);
g2_v(26)=(-T(4));
g2_v(27)=(-(exp(x(it_, 2))*getPowerDeriv(y(3),params(10),2)));
g2_v(28)=T(13);
g2_v(29)=g2_v(28);
g2_v(30)=(-T(5));
g2_v(31)=(-(exp(x(it_, 4))*getPowerDeriv(y(4),params(11),2)));
g2_v(32)=T(14);
g2_v(33)=g2_v(32);
g2_v(34)=(-T(6));
g2_v(35)=(-((-1)/(y(5)*y(5))));
g2_v(36)=(-((-1)/(y(6)*y(6))));
g2_v(37)=(-((-1)/(y(8)*y(8))));
g2_v(38)=(-((-1)/(y(9)*y(9))));
g2_v(39)=(-((-1)/(y(10)*y(10))));
g2_v(40)=(-((-1)/(y(11)*y(11))));
g2_v(41)=(-((-1)/(y(12)*y(12))));
g2_v(42)=(-((-1)/(y(14)*y(14))));
g2_v(43)=(-((-1)/(y(15)*y(15))));
g2_v(44)=(-((-1)/(y(16)*y(16))));
g2_v(45)=(-1);
g2_v(46)=g2_v(45);
g2_v(47)=(-1);
g2_v(48)=g2_v(47);
g2 = sparse(g2_i,g2_j,g2_v,26,1156);
end
