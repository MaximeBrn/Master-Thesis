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
    T = Model_draft_4_testplan6.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(36, 48);
g1(1,5)=params(5)*T(9)*T(9)*getPowerDeriv(y(5)/params(5),1-params(1),2)/(1-params(1));
g1(1,23)=(1-params(6))/params(5);
g1(1,24)=params(7)/params(5);
g1(1,27)=(-T(9));
g1(2,6)=params(5)*(-(y(10)*T(9)*T(9)*getPowerDeriv(T(3),1+params(4),2)/(1+params(4))));
g1(2,9)=(-y(35));
g1(2,10)=params(5)*(-(T(10)/(1+params(4))));
g1(2,29)=(-T(9));
g1(2,35)=(-y(9));
g1(3,23)=(-T(9));
g1(3,35)=1;
g1(4,8)=params(5)*params(9)*T(9)*T(9)*getPowerDeriv(T(1),1-params(8),2)/(1-params(8));
g1(4,23)=T(9);
g1(4,25)=(-T(9));
g1(5,6)=(-y(35));
g1(5,31)=1;
g1(5,35)=(-y(6));
g1(5,41)=params(12);
g1(6,6)=params(5)*(-(T(10)/(1+params(4))));
g1(6,32)=1;
g1(6,42)=params(12);
g1(7,11)=(1-params(5))*T(11)*T(11)*getPowerDeriv(y(11)/(1-params(5)),1-params(1),2)/(1-params(1));
g1(7,23)=params(6)/(1-params(5));
g1(7,24)=(1-params(7))/(1-params(5));
g1(7,28)=(-T(11));
g1(8,12)=(1-params(5))*(-(y(16)*T(11)*T(11)*getPowerDeriv(T(4),1+params(4),2)/(1+params(4))));
g1(8,15)=(-y(36));
g1(8,16)=(1-params(5))*(-(T(12)/(1+params(4))));
g1(8,30)=(-T(11));
g1(8,36)=(-y(15));
g1(9,24)=(-T(11));
g1(9,36)=1;
g1(10,14)=(1-params(5))*params(9)*T(11)*T(11)*getPowerDeriv(T(2),1-params(8),2)/(1-params(8));
g1(10,24)=T(11);
g1(10,26)=(-T(11));
g1(11,12)=(-y(36));
g1(11,33)=1;
g1(11,36)=(-y(12));
g1(11,43)=params(12);
g1(12,12)=(1-params(5))*(-(T(12)/(1+params(4))));
g1(12,34)=1;
g1(12,44)=params(12);
g1(13,25)=1;
g1(14,26)=1;
g1(15,27)=1;
g1(16,28)=1;
g1(17,29)=1;
g1(18,30)=1;
g1(19,5)=(1-params(6))/params(5);
g1(19,7)=(-T(9));
g1(19,8)=T(9);
g1(19,11)=params(6)/(1-params(5));
g1(20,5)=params(7)/params(5);
g1(20,11)=(1-params(7))/(1-params(5));
g1(20,13)=(-T(11));
g1(20,14)=T(11);
g1(21,8)=(-T(9));
g1(21,17)=1;
g1(22,14)=(-T(11));
g1(22,18)=1;
g1(23,5)=(-T(9));
g1(23,19)=1;
g1(24,11)=(-T(11));
g1(24,20)=1;
g1(25,6)=(-T(9));
g1(25,21)=1;
g1(26,12)=(-T(11));
g1(26,22)=1;
g1(27,1)=T(14);
g1(27,9)=1;
g1(27,45)=(-T(5));
g1(28,2)=T(16);
g1(28,10)=1;
g1(28,47)=(-T(6));
g1(29,3)=T(18);
g1(29,15)=1;
g1(29,46)=(-T(7));
g1(30,4)=T(20);
g1(30,16)=1;
g1(30,48)=(-T(8));
g1(31,6)=(-y(9));
g1(31,7)=1;
g1(31,9)=(-y(6));
g1(32,12)=(-y(15));
g1(32,13)=1;
g1(32,15)=(-y(12));
g1(33,1)=(-(y(31)*(-(exp(x(it_, 1))*getPowerDeriv(y(1),params(10),2)))));
g1(33,45)=(-(y(31)*T(14)));
g1(33,31)=T(13);
g1(33,37)=1;
g1(34,2)=(-(y(32)*(-(exp(x(it_, 3))*getPowerDeriv(y(2),params(11),2)))));
g1(34,47)=(-(y(32)*T(16)));
g1(34,32)=T(15);
g1(34,38)=1;
g1(35,3)=(-(y(33)*(-(exp(x(it_, 2))*getPowerDeriv(y(3),params(10),2)))));
g1(35,46)=(-(y(33)*T(18)));
g1(35,33)=T(17);
g1(35,39)=1;
g1(36,4)=(-(y(34)*(-(exp(x(it_, 4))*getPowerDeriv(y(4),params(11),2)))));
g1(36,48)=(-(y(34)*T(20)));
g1(36,34)=T(19);
g1(36,40)=1;

end
