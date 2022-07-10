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
    T = MODEL_MAIN_9.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(8,1);
g2_j = zeros(8,1);
g2_v = zeros(8,1);

g2_i(1)=27;
g2_i(2)=27;
g2_i(3)=28;
g2_i(4)=28;
g2_i(5)=56;
g2_i(6)=56;
g2_i(7)=57;
g2_i(8)=57;
g2_j(1)=1374;
g2_j(2)=1934;
g2_j(3)=2514;
g2_j(4)=3074;
g2_j(5)=4907;
g2_j(6)=5355;
g2_j(7)=6162;
g2_j(8)=6722;
g2_v(1)=params(14)*(1-params(11));
g2_v(2)=g2_v(1);
g2_v(3)=params(15)*(1-params(11));
g2_v(4)=g2_v(3);
g2_v(5)=params(14)*(1-params(11));
g2_v(6)=g2_v(5);
g2_v(7)=params(15)*(1-params(11));
g2_v(8)=g2_v(7);
g2 = sparse(g2_i,g2_j,g2_v,94,12769);
end
