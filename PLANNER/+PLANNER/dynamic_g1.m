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
    T = Planner.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(25, 29);
g1(1,3)=T(5)*T(28);
g1(1,4)=T(6)*params(10)*T(2)*T(27)*getPowerDeriv(T(3),T(4),1);
g1(1,8)=T(31);
g1(2,3)=T(11)*T(28);
g1(2,5)=T(6)*params(10)*T(9)*T(27)*getPowerDeriv(T(10),T(4),1);
g1(2,15)=T(36);
g1(3,10)=T(16)*T(33);
g1(3,12)=T(17)*params(10)*T(14)*T(32)*getPowerDeriv(T(15),T(4),1);
g1(3,15)=T(36);
g1(4,8)=T(31);
g1(4,10)=T(20)*T(33);
g1(4,11)=T(17)*params(10)*T(18)*T(32)*getPowerDeriv(T(19),T(4),1);
g1(5,6)=T(27)*getPowerDeriv(y(6)/params(5),params(4),1);
g1(5,8)=(-(params(9)*y(9)*T(30)));
g1(5,9)=(-T(8));
g1(6,13)=T(32)*getPowerDeriv(y(13)/(1-params(5)),params(4),1);
g1(6,15)=(-(params(9)*y(16)*T(35)));
g1(6,16)=(-T(13));
g1(7,3)=T(27);
g1(7,4)=(-(T(2)*T(27)*getPowerDeriv(T(3),T(21),1)*T(29)));
g1(7,5)=(-(T(29)*T(9)*T(27)*getPowerDeriv(T(10),T(21),1)));
g1(8,10)=T(32);
g1(8,11)=(-(T(18)*T(32)*getPowerDeriv(T(19),T(21),1)*T(34)));
g1(8,12)=(-(T(34)*T(14)*T(32)*getPowerDeriv(T(15),T(21),1)));
g1(9,4)=1;
g1(9,7)=(-1);
g1(9,8)=1;
g1(9,11)=1;
g1(10,5)=1;
g1(10,12)=1;
g1(10,14)=(-1);
g1(10,15)=1;
g1(11,6)=(-y(9));
g1(11,7)=1;
g1(11,9)=(-y(6));
g1(12,13)=(-y(16));
g1(12,14)=1;
g1(12,16)=(-y(13));
g1(13,1)=(-(exp(x(it_, 1))*getPowerDeriv(y(1),params(11),1)));
g1(13,9)=1;
g1(13,28)=(-T(25));
g1(14,2)=(-(exp(x(it_, 2))*getPowerDeriv(y(2),params(11),1)));
g1(14,16)=1;
g1(14,29)=(-T(26));
g1(15,7)=(-(1/y(7)));
g1(15,17)=1;
g1(16,8)=(-(1/y(8)));
g1(16,19)=1;
g1(17,3)=(-(1/y(3)));
g1(17,20)=1;
g1(18,4)=(-(1/y(4)));
g1(18,21)=1;
g1(19,5)=(-(1/y(5)));
g1(19,22)=1;
g1(20,14)=(-(1/y(14)));
g1(20,23)=1;
g1(21,15)=(-(1/y(15)));
g1(21,24)=1;
g1(22,10)=(-(1/y(10)));
g1(22,25)=1;
g1(23,11)=(-(1/y(11)));
g1(23,26)=1;
g1(24,12)=(-(1/y(12)));
g1(24,27)=1;
g1(25,7)=(-((y(7)-(y(7)-(steady_state(5))))/(y(7)*y(7))));
g1(25,18)=1;

end
