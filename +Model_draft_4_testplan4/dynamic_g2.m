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
    T = Model_draft_4_testplan4.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(44,1);
g2_j = zeros(44,1);
g2_v = zeros(44,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=2;
g2_i(5)=2;
g2_i(6)=2;
g2_i(7)=3;
g2_i(8)=3;
g2_i(9)=3;
g2_i(10)=3;
g2_i(11)=3;
g2_i(12)=3;
g2_i(13)=3;
g2_i(14)=3;
g2_i(15)=3;
g2_i(16)=4;
g2_i(17)=4;
g2_i(18)=4;
g2_i(19)=4;
g2_i(20)=4;
g2_i(21)=4;
g2_i(22)=4;
g2_i(23)=4;
g2_i(24)=4;
g2_i(25)=5;
g2_i(26)=5;
g2_i(27)=6;
g2_i(28)=6;
g2_i(29)=7;
g2_i(30)=7;
g2_i(31)=7;
g2_i(32)=7;
g2_i(33)=8;
g2_i(34)=8;
g2_i(35)=8;
g2_i(36)=8;
g2_i(37)=9;
g2_i(38)=9;
g2_i(39)=9;
g2_i(40)=9;
g2_i(41)=10;
g2_i(42)=10;
g2_i(43)=10;
g2_i(44)=10;
g2_j(1)=77;
g2_j(2)=115;
g2_j(3)=210;
g2_j(4)=115;
g2_j(5)=172;
g2_j(6)=210;
g2_j(7)=96;
g2_j(8)=98;
g2_j(9)=132;
g2_j(10)=99;
g2_j(11)=150;
g2_j(12)=115;
g2_j(13)=134;
g2_j(14)=135;
g2_j(15)=152;
g2_j(16)=191;
g2_j(17)=193;
g2_j(18)=227;
g2_j(19)=194;
g2_j(20)=245;
g2_j(21)=210;
g2_j(22)=229;
g2_j(23)=230;
g2_j(24)=247;
g2_j(25)=98;
g2_j(26)=132;
g2_j(27)=193;
g2_j(28)=227;
g2_j(29)=1;
g2_j(30)=15;
g2_j(31)=253;
g2_j(32)=267;
g2_j(33)=39;
g2_j(34)=52;
g2_j(35)=273;
g2_j(36)=286;
g2_j(37)=20;
g2_j(38)=35;
g2_j(39)=290;
g2_j(40)=305;
g2_j(41)=58;
g2_j(42)=72;
g2_j(43)=310;
g2_j(44)=324;
g2_v(1)=params(5)*T(9)*T(9)*getPowerDeriv(y(5)/params(5),(-params(1)),2);
g2_v(2)=(-(params(5)*(1-params(6))*params(10)*T(19)));
g2_v(3)=(-(params(10)*params(6)*(1-params(5))*T(20)));
g2_v(4)=(-(params(10)*params(5)*params(7)*T(19)));
g2_v(5)=(1-params(5))*T(14)*T(14)*getPowerDeriv(y(10)/(1-params(5)),(-params(1)),2);
g2_v(6)=(-(params(10)*(1-params(5))*(1-params(7))*T(20)));
g2_v(7)=y(9)/y(8)*T(9)*T(9)*getPowerDeriv(y(6)/params(5),params(4),2);
g2_v(8)=T(10)*(-y(9))/(y(8)*y(8));
g2_v(9)=g2_v(8);
g2_v(10)=T(10)*1/y(8);
g2_v(11)=g2_v(10);
g2_v(12)=(-(params(10)*T(19)));
g2_v(13)=T(3)*(-((-y(9))*(y(8)+y(8))))/(y(8)*y(8)*y(8)*y(8));
g2_v(14)=T(3)*(-1)/(y(8)*y(8));
g2_v(15)=g2_v(14);
g2_v(16)=y(14)/y(13)*T(14)*T(14)*getPowerDeriv(y(11)/(1-params(5)),params(4),2);
g2_v(17)=T(15)*(-y(14))/(y(13)*y(13));
g2_v(18)=g2_v(17);
g2_v(19)=T(15)*1/y(13);
g2_v(20)=g2_v(19);
g2_v(21)=(-(params(10)*T(20)));
g2_v(22)=T(4)*(-((-y(14))*(y(13)+y(13))))/(y(13)*y(13)*y(13)*y(13));
g2_v(23)=T(4)*(-1)/(y(13)*y(13));
g2_v(24)=g2_v(23);
g2_v(25)=(-1);
g2_v(26)=g2_v(25);
g2_v(27)=(-1);
g2_v(28)=g2_v(27);
g2_v(29)=(-(exp(x(it_, 1))*getPowerDeriv(y(1),params(11),2)));
g2_v(30)=T(12);
g2_v(31)=g2_v(30);
g2_v(32)=(-T(5));
g2_v(33)=(-(exp(x(it_, 2))*getPowerDeriv(y(3),params(11),2)));
g2_v(34)=T(17);
g2_v(35)=g2_v(34);
g2_v(36)=(-T(6));
g2_v(37)=(-(exp(x(it_, 3))*getPowerDeriv(y(2),params(12),2)));
g2_v(38)=T(13);
g2_v(39)=g2_v(38);
g2_v(40)=(-T(7));
g2_v(41)=(-(exp(x(it_, 4))*getPowerDeriv(y(4),params(12),2)));
g2_v(42)=T(18);
g2_v(43)=g2_v(42);
g2_v(44)=(-T(8));
g2 = sparse(g2_i,g2_j,g2_v,10,324);
end
