function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = PLANNER_EFFICIENT_GM.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(40, 52);
g1(1,25)=(-(1-params(5)));
g1(1,26)=(-params(5));
g1(1,31)=T(7);
g1(2,9)=(-y(27));
g1(2,27)=(-y(9));
g1(2,33)=T(7);
g1(3,25)=1;
g1(3,27)=1;
g1(4,25)=(-1);
g1(4,29)=T(7);
g1(5,6)=(-y(27));
g1(5,27)=(-y(6));
g1(5,35)=1;
g1(5,45)=params(10);
g1(6,21)=T(27);
g1(6,36)=1;
g1(6,39)=(-T(8));
g1(6,46)=params(10);
g1(7,25)=(-params(6));
g1(7,26)=(-(1-params(6)));
g1(7,32)=T(9);
g1(8,15)=(-y(28));
g1(8,28)=(-y(15));
g1(8,34)=T(9);
g1(9,26)=1;
g1(9,28)=1;
g1(10,26)=(-1);
g1(10,30)=T(9);
g1(11,12)=(-y(28));
g1(11,28)=(-y(12));
g1(11,37)=1;
g1(11,47)=params(10);
g1(12,22)=T(28);
g1(12,38)=1;
g1(12,40)=(-T(10));
g1(12,48)=params(10);
g1(13,17)=params(4)*params(7)*(-1)/(y(17)*y(17))+y(39)*(-(params(4)*params(7)*(-1)/(y(17)*y(17))));
g1(13,29)=1;
g1(13,39)=T(11);
g1(14,18)=(1-params(4))*params(7)*(-1)/(y(18)*y(18))+y(40)*(-((1-params(4))*params(7)*(-1)/(y(18)*y(18))));
g1(14,30)=1;
g1(14,40)=T(12);
g1(15,19)=params(4)*(1-params(7))*(-1)/(y(19)*y(19))+y(39)*(-(params(4)*(1-params(7))*(-1)/(y(19)*y(19))));
g1(15,31)=1;
g1(15,39)=T(13);
g1(16,20)=(1-params(4))*(1-params(7))*(-1)/(y(20)*y(20))+y(40)*(-((1-params(4))*(1-params(7))*(-1)/(y(20)*y(20))));
g1(16,32)=1;
g1(16,40)=T(14);
g1(17,10)=T(27);
g1(17,21)=T(29)+y(39)*(-T(29));
g1(17,33)=1;
g1(17,39)=(-T(16));
g1(18,16)=T(28);
g1(18,22)=T(30)+y(40)*(-T(30));
g1(18,34)=1;
g1(18,40)=(-T(18));
g1(19,39)=1;
g1(20,40)=1;
g1(21,5)=(-(1-params(5)));
g1(21,7)=1;
g1(21,8)=(-1);
g1(21,11)=(-params(6));
g1(22,5)=(-params(5));
g1(22,11)=(-(1-params(6)));
g1(22,13)=1;
g1(22,14)=(-1);
g1(23,6)=(-y(9));
g1(23,7)=1;
g1(23,9)=(-y(6));
g1(24,12)=(-y(15));
g1(24,13)=1;
g1(24,15)=(-y(12));
g1(25,8)=T(7);
g1(25,17)=1;
g1(26,14)=T(9);
g1(26,18)=1;
g1(27,5)=T(7);
g1(27,19)=1;
g1(28,11)=T(9);
g1(28,20)=1;
g1(29,6)=T(7);
g1(29,21)=1;
g1(30,12)=T(9);
g1(30,22)=1;
g1(31,1)=T(20);
g1(31,9)=1;
g1(31,49)=(-T(1));
g1(32,2)=T(22);
g1(32,10)=1;
g1(32,51)=(-T(2));
g1(33,3)=T(24);
g1(33,15)=1;
g1(33,50)=(-T(3));
g1(34,4)=T(26);
g1(34,16)=1;
g1(34,52)=(-T(4));
g1(35,10)=(-T(8));
g1(35,17)=T(11);
g1(35,19)=T(13);
g1(35,21)=(-T(16));
g1(35,23)=1;
g1(36,16)=(-T(10));
g1(36,18)=T(12);
g1(36,20)=T(14);
g1(36,22)=(-T(18));
g1(36,24)=1;
g1(37,1)=(-(y(35)*(-(exp(x(it_, 1))*getPowerDeriv(y(1),params(8),2)))));
g1(37,49)=(-(y(35)*T(20)));
g1(37,35)=T(19);
g1(37,41)=1;
g1(38,2)=(-(y(36)*(-(exp(x(it_, 3))*getPowerDeriv(y(2),params(9),2)))));
g1(38,51)=(-(y(36)*T(22)));
g1(38,36)=T(21);
g1(38,42)=1;
g1(39,3)=(-(y(37)*(-(exp(x(it_, 2))*getPowerDeriv(y(3),params(8),2)))));
g1(39,50)=(-(y(37)*T(24)));
g1(39,37)=T(23);
g1(39,43)=1;
g1(40,4)=(-(y(38)*(-(exp(x(it_, 4))*getPowerDeriv(y(4),params(9),2)))));
g1(40,52)=(-(y(38)*T(26)));
g1(40,38)=T(25);
g1(40,44)=1;

end
