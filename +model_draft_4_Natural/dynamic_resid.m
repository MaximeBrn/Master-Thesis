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
    T = model_draft_4_Natural.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(24, 1);
residual(1) = y(25)+(1+params(5))*y(18)+params(21)*y(29)*(-params(16));
residual(2) = y(26)+params(21)*y(30)*(-params(17))-y(18);
residual(3) = params(6)*0.5*params(5)*2*y(7)+y(23)*(-params(6))+y(21)*(-T(1))+y(18)*(-params(5));
residual(4) = params(6)*0.5*params(3)*params(8)/params(7)*2*y(8)+(-params(6))*y(24)+y(21)*(-(T(1)*(-params(3))));
residual(5) = params(6)*0.5*params(1)*(1-params(3))*2*y(9)+y(21)+params(1)*y(20)+y(18)*(-params(1));
residual(6) = y(27)+(1+params(5))*y(19)+params(21)*(-params(16))*y(31);
residual(7) = y(28)+params(21)*(-params(17))*y(32)-y(19);
residual(8) = (1-params(6))*0.5*params(5)*2*y(12)+y(23)*(-(1-params(6)))+(-T(1))*y(22)+(-params(5))*y(19);
residual(9) = (1-params(6))*0.5*params(3)*params(8)/params(7)*2*y(13)+y(24)*(-(1-params(6)))+(-(T(1)*(-params(3))))*y(22);
residual(10) = (1-params(6))*0.5*params(1)*(1-params(3))*2*y(14)+y(22)+y(20)*(-params(1))+(-params(1))*y(19);
residual(11) = y(22)*(-(params(13)/params(1)))+T(2)*y(21)+y(20)*(-(1-params(2)))+params(19)*y(19)+y(18)*(-params(18));
residual(12) = y(23);
residual(13) = y(24);
residual(14) = (-(y(6)+params(1)*y(9)+params(5)*y(7)+params(18)*y(15)-(1+params(5))*y(5)));
residual(15) = (-(y(11)+params(1)*y(14)+params(5)*y(12)-y(15)*params(19)-(1+params(5))*y(10)));
residual(16) = params(1)*y(9)-(params(1)*y(14)+y(15)*(1-params(2)));
residual(17) = y(9)-(T(1)*(y(7)-params(3)*y(8))-y(15)*T(2));
residual(18) = y(14)-(T(1)*(y(12)-params(3)*y(13))+y(15)*params(13)/params(1));
residual(19) = y(16)-(y(7)*params(6)+y(12)*(1-params(6)));
residual(20) = y(17)-(y(8)*params(6)+y(13)*(1-params(6)));
residual(21) = y(5)-(params(16)*y(1)+x(it_, 1));
residual(22) = y(6)-(params(17)*y(2)+x(it_, 2));
residual(23) = y(10)-(params(16)*y(3)+x(it_, 3));
residual(24) = y(11)-(params(17)*y(4)+x(it_, 4));

end
