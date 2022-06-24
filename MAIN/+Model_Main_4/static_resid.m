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
    T = Model_Main_4.static_resid_tt(T, y, x, params);
end
residual = zeros(57, 1);
lhs = 0;
rhs = params(2)*y(20)+params(3)*y(18)+params(20)*y(32)-(1+params(3))*y(16);
residual(1) = lhs - rhs;
lhs = 0;
rhs = params(2)*y(27)+params(3)*y(25)-y(32)*params(21)-(1+params(3))*y(17);
residual(2) = lhs - rhs;
lhs = params(25)*(y(18)-params(11)*y(19));
rhs = params(2)*y(20)+y(32)*params(8)*(1-params(7))*params(24);
residual(3) = lhs - rhs;
lhs = params(25)*(y(25)-params(11)*y(26));
rhs = params(2)*y(27)-y(32)*params(24)*params(8)*params(7);
residual(4) = lhs - rhs;
lhs = y(32);
rhs = params(27)*(y(18)-y(25)-params(11)*(y(19)-y(26)));
residual(5) = lhs - rhs;
lhs = y(19)*params(4);
rhs = params(2)*y(20)+params(20)*y(32);
residual(6) = lhs - rhs;
lhs = y(26)*params(4);
rhs = params(2)*y(27)-y(32)*params(21);
residual(7) = lhs - rhs;
lhs = y(22);
rhs = y(20)+y(32)*params(20)*params(5);
residual(8) = lhs - rhs;
lhs = y(23);
rhs = y(20)+y(32)*(-params(5))*(1-params(20));
residual(9) = lhs - rhs;
lhs = y(28);
rhs = y(27)+y(32)*params(5)*(1-params(21));
residual(10) = lhs - rhs;
lhs = y(29);
rhs = y(27)+y(32)*params(21)*(-params(5));
residual(11) = lhs - rhs;
lhs = y(21);
rhs = y(18)-y(16);
residual(12) = lhs - rhs;
lhs = y(30);
rhs = y(25)-y(17);
residual(13) = lhs - rhs;
residual(14) = y(24);
residual(15) = y(31);
lhs = y(33);
rhs = y(18)*params(7)+y(25)*(1-params(7));
residual(16) = lhs - rhs;
lhs = y(34);
rhs = y(19)*params(7)+(1-params(7))*y(26);
residual(17) = lhs - rhs;
lhs = y(35);
rhs = params(7)*y(24)+(1-params(7))*y(31);
residual(18) = lhs - rhs;
lhs = y(37);
rhs = y(37)*params(1)+params(22)*((params(3)+params(27)*params(28))*y(36)-params(11)*params(27)*params(28)*y(38)+(params(25)-params(27)*params(28))*(y(43)-params(11)*y(45))-(1+params(3))*y(16));
residual(19) = lhs - rhs;
lhs = y(44);
rhs = params(1)*y(44)+params(23)*(y(43)*(params(3)+params(27)*params(29))-y(45)*params(11)*params(27)*params(29)+(params(25)-params(27)*params(29))*(y(36)-params(11)*y(38))-(1+params(3))*y(17));
residual(20) = lhs - rhs;
lhs = y(36);
rhs = y(36)-1/(params(27)*params(28))*(y(50)-y(37));
residual(21) = lhs - rhs;
lhs = y(43);
rhs = y(43)-1/(params(27)*params(29))*(y(51)-y(44));
residual(22) = lhs - rhs;
lhs = y(53);
rhs = params(27)*(y(36)-y(43)-params(11)*(y(38)-y(45)));
residual(23) = lhs - rhs;
lhs = y(39);
rhs = y(36)-y(16);
residual(24) = lhs - rhs;
lhs = y(46);
rhs = y(43)-y(17);
residual(25) = lhs - rhs;
lhs = params(25)*(y(36)-params(11)*y(38));
rhs = params(2)*y(40)+params(8)*(1-params(7))*params(24)*y(53);
residual(26) = lhs - rhs;
lhs = params(25)*(y(43)-params(11)*y(45));
rhs = params(2)*y(47)-params(24)*params(8)*params(7)*y(53);
residual(27) = lhs - rhs;
lhs = y(41);
rhs = y(40)+params(20)*params(5)*y(53);
residual(28) = lhs - rhs;
lhs = y(42);
rhs = y(40)+(-params(5))*(1-params(20))*y(53);
residual(29) = lhs - rhs;
lhs = y(48);
rhs = y(47)+params(5)*(1-params(21))*y(53);
residual(30) = lhs - rhs;
lhs = y(49);
rhs = y(47)+params(21)*(-params(5))*y(53);
residual(31) = lhs - rhs;
lhs = y(50);
rhs = y(52);
residual(32) = lhs - rhs;
lhs = y(51);
rhs = y(52);
residual(33) = lhs - rhs;
lhs = y(54);
rhs = params(7)*y(37)+(1-params(7))*y(44);
residual(34) = lhs - rhs;
lhs = y(55);
rhs = params(7)*y(36)+(1-params(7))*y(43);
residual(35) = lhs - rhs;
lhs = y(56);
rhs = params(7)*y(38)+(1-params(7))*y(45);
residual(36) = lhs - rhs;
lhs = y(57);
rhs = params(7)*y(40)+(1-params(7))*y(47);
residual(37) = lhs - rhs;
lhs = y(52);
rhs = y(35)+y(54)*2.5+0.125*y(12)+y(52)*0.7;
residual(38) = lhs - rhs;
lhs = y(2);
rhs = y(2)*0.85+params(30)*y(1)+y(37)*params(31);
residual(39) = lhs - rhs;
lhs = y(7);
rhs = 0.85*y(7)+params(38)*y(6)+y(44)*params(39);
residual(40) = lhs - rhs;
lhs = y(1);
rhs = y(36)-y(18);
residual(41) = lhs - rhs;
lhs = y(2);
rhs = y(38)-y(19);
residual(42) = lhs - rhs;
lhs = y(3);
rhs = y(40)-y(20);
residual(43) = lhs - rhs;
lhs = y(4);
rhs = y(2)-y(1);
residual(44) = lhs - rhs;
lhs = y(5);
rhs = y(50)-y(24);
residual(45) = lhs - rhs;
lhs = y(11);
rhs = y(53)-y(32);
residual(46) = lhs - rhs;
lhs = y(6);
rhs = y(43)-y(25);
residual(47) = lhs - rhs;
lhs = y(7);
rhs = y(45)-y(26);
residual(48) = lhs - rhs;
lhs = y(8);
rhs = y(47)-y(27);
residual(49) = lhs - rhs;
lhs = y(9);
rhs = y(7)-y(6);
residual(50) = lhs - rhs;
lhs = y(10);
rhs = y(51)-y(31);
residual(51) = lhs - rhs;
lhs = y(12);
rhs = params(7)*y(1)+(1-params(7))*y(6);
residual(52) = lhs - rhs;
lhs = y(13);
rhs = params(7)*y(2)+(1-params(7))*y(7);
residual(53) = lhs - rhs;
lhs = y(14);
rhs = params(7)*y(3)+(1-params(7))*y(8);
residual(54) = lhs - rhs;
lhs = y(15);
rhs = y(50)-y(35);
residual(55) = lhs - rhs;
lhs = y(16);
rhs = y(16)*params(42)-x(1);
residual(56) = lhs - rhs;
lhs = y(17);
rhs = y(17)*params(42)-x(2);
residual(57) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
