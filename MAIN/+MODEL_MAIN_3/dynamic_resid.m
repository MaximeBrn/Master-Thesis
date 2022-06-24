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
    T = MODEL_MAIN_3.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(51, 1);
lhs = 0;
rhs = params(2)*y(20)+params(3)*y(18)+params(14)*y(30)-(1+params(3))*y(16);
residual(1) = lhs - rhs;
lhs = 0;
rhs = params(2)*y(26)+params(3)*y(24)-y(30)*params(15)-(1+params(3))*y(17);
residual(2) = lhs - rhs;
lhs = params(19)*(y(18)-params(11)*y(19));
rhs = params(2)*y(20)+y(30)*params(8)*(1-params(7))*params(18);
residual(3) = lhs - rhs;
lhs = params(19)*(y(24)-params(11)*y(25));
rhs = params(2)*y(26)-y(30)*params(18)*params(8)*params(7);
residual(4) = lhs - rhs;
lhs = y(30);
rhs = params(21)*(y(18)-y(24)-params(11)*(y(19)-y(25)));
residual(5) = lhs - rhs;
lhs = y(19)*params(4);
rhs = params(2)*y(20)+params(14)*y(30);
residual(6) = lhs - rhs;
lhs = y(25)*params(4);
rhs = params(2)*y(26)-y(30)*params(15);
residual(7) = lhs - rhs;
lhs = y(21);
rhs = y(20)+y(30)*params(14)*params(5);
residual(8) = lhs - rhs;
lhs = y(22);
rhs = y(20)+y(30)*(-params(5))*(1-params(14));
residual(9) = lhs - rhs;
lhs = y(27);
rhs = y(26)+y(30)*params(5)*(1-params(15));
residual(10) = lhs - rhs;
lhs = y(28);
rhs = y(26)+y(30)*params(15)*(-params(5));
residual(11) = lhs - rhs;
lhs = y(23);
rhs = (1+params(3))*(y(55)-y(16))-params(3)*(y(57)-y(18));
residual(12) = lhs - rhs;
lhs = y(29);
rhs = (1+params(3))*(y(56)-y(17))-params(3)*(y(58)-y(24));
residual(13) = lhs - rhs;
lhs = y(31);
rhs = y(18)*params(7)+y(24)*(1-params(7));
residual(14) = lhs - rhs;
lhs = y(32);
rhs = y(19)*params(7)+(1-params(7))*y(25);
residual(15) = lhs - rhs;
lhs = y(33);
rhs = params(7)*y(23)+(1-params(7))*y(29);
residual(16) = lhs - rhs;
lhs = y(34);
rhs = y(59)-params(11)*(y(61)-y(36))-1/(params(21)*params(22))*(y(48)-y(60))+T(1)*(y(62)-y(41)-params(11)*(y(64)-y(43)));
residual(17) = lhs - rhs;
lhs = y(35);
rhs = y(60)*params(1)+params(16)*(y(34)*(params(3)+params(21)*params(22))-y(36)*params(11)*params(21)*params(22)+(params(19)-params(21)*params(22))*(y(41)-params(11)*y(43))-(1+params(3))*y(16));
residual(18) = lhs - rhs;
lhs = y(41);
rhs = y(62)-params(11)*(y(64)-y(43))-1/(params(21)*params(23))*(y(49)-y(63))+T(2)*(y(59)-y(34)-params(11)*(y(61)-y(36)));
residual(19) = lhs - rhs;
lhs = y(42);
rhs = params(1)*y(63)+params(17)*(y(41)*(params(3)+params(21)*params(23))-y(43)*params(11)*params(21)*params(23)+(params(19)-params(21)*params(23))*(y(34)-params(11)*y(36))-(1+params(3))*y(17));
residual(20) = lhs - rhs;
lhs = y(50);
rhs = params(21)*(y(34)-y(41)-params(11)*(y(36)-y(43)));
residual(21) = lhs - rhs;
lhs = y(37);
rhs = y(34)-y(16);
residual(22) = lhs - rhs;
lhs = y(44);
rhs = y(41)-y(17);
residual(23) = lhs - rhs;
lhs = params(19)*(y(34)-params(11)*y(36));
rhs = params(2)*y(38)+params(8)*(1-params(7))*params(18)*y(50);
residual(24) = lhs - rhs;
lhs = y(39);
rhs = y(38)+params(14)*params(5)*y(50);
residual(25) = lhs - rhs;
lhs = y(40);
rhs = y(38)+(-params(5))*(1-params(14))*y(50);
residual(26) = lhs - rhs;
lhs = params(19)*(y(41)-params(11)*y(43));
rhs = params(2)*y(45)-params(18)*params(8)*params(7)*y(50);
residual(27) = lhs - rhs;
lhs = y(46);
rhs = y(45)+params(5)*(1-params(15))*y(50);
residual(28) = lhs - rhs;
lhs = y(47);
rhs = y(45)+params(15)*(-params(5))*y(50);
residual(29) = lhs - rhs;
lhs = y(51);
rhs = y(35)+(1-params(7))*(y(50)-y(3));
residual(30) = lhs - rhs;
lhs = y(52);
rhs = params(7)*y(34)+(1-params(7))*y(41);
residual(31) = lhs - rhs;
lhs = y(53);
rhs = params(7)*y(36)+(1-params(7))*y(43);
residual(32) = lhs - rhs;
lhs = y(54);
rhs = params(7)*y(38)+(1-params(7))*y(45);
residual(33) = lhs - rhs;
lhs = params(4)*y(36);
rhs = params(2)*y(38)+params(14)*y(50);
residual(34) = lhs - rhs;
lhs = params(4)*y(43);
rhs = params(2)*y(45)-params(15)*y(50);
residual(35) = lhs - rhs;
lhs = y(48);
rhs = y(33);
residual(36) = lhs - rhs;
lhs = y(49);
rhs = y(48);
residual(37) = lhs - rhs;
lhs = y(4);
rhs = y(34)-y(18);
residual(38) = lhs - rhs;
lhs = y(5);
rhs = y(36)-y(19);
residual(39) = lhs - rhs;
lhs = y(6);
rhs = y(38)-y(20);
residual(40) = lhs - rhs;
lhs = y(7);
rhs = y(5)-y(4);
residual(41) = lhs - rhs;
lhs = y(8);
rhs = y(41)-y(24);
residual(42) = lhs - rhs;
lhs = y(9);
rhs = y(43)-y(25);
residual(43) = lhs - rhs;
lhs = y(10);
rhs = y(45)-y(26);
residual(44) = lhs - rhs;
lhs = y(11);
rhs = y(9)-y(8);
residual(45) = lhs - rhs;
lhs = y(12);
rhs = y(50)-y(30);
residual(46) = lhs - rhs;
lhs = y(13);
rhs = params(7)*y(4)+(1-params(7))*y(8);
residual(47) = lhs - rhs;
lhs = y(14);
rhs = params(7)*y(5)+(1-params(7))*y(9);
residual(48) = lhs - rhs;
lhs = y(15);
rhs = params(7)*y(6)+(1-params(7))*y(10);
residual(49) = lhs - rhs;
lhs = y(16);
rhs = params(29)*y(1)-x(it_, 1);
residual(50) = lhs - rhs;
lhs = y(17);
rhs = params(29)*y(2)-x(it_, 2);
residual(51) = lhs - rhs;

end
