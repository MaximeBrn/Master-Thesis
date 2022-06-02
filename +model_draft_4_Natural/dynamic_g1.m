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
    T = model_draft_4_Natural.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(24, 36);
g1(1,18)=1+params(5);
g1(1,25)=1;
g1(1,29)=params(21)*(-params(16));
g1(2,18)=(-1);
g1(2,26)=1;
g1(2,30)=params(21)*(-params(17));
g1(3,7)=params(6)*0.5*2*params(5);
g1(3,18)=(-params(5));
g1(3,21)=(-T(1));
g1(3,23)=(-params(6));
g1(4,8)=params(6)*0.5*2*params(3)*params(8)/params(7);
g1(4,21)=(-(T(1)*(-params(3))));
g1(4,24)=(-params(6));
g1(5,9)=params(6)*0.5*2*params(1)*(1-params(3));
g1(5,18)=(-params(1));
g1(5,20)=params(1);
g1(5,21)=1;
g1(6,19)=1+params(5);
g1(6,27)=1;
g1(6,31)=params(21)*(-params(16));
g1(7,19)=(-1);
g1(7,28)=1;
g1(7,32)=params(21)*(-params(17));
g1(8,12)=(1-params(6))*0.5*2*params(5);
g1(8,19)=(-params(5));
g1(8,22)=(-T(1));
g1(8,23)=(-(1-params(6)));
g1(9,13)=(1-params(6))*0.5*2*params(3)*params(8)/params(7);
g1(9,22)=(-(T(1)*(-params(3))));
g1(9,24)=(-(1-params(6)));
g1(10,14)=(1-params(6))*0.5*2*params(1)*(1-params(3));
g1(10,19)=(-params(1));
g1(10,20)=(-params(1));
g1(10,22)=1;
g1(11,18)=(-params(18));
g1(11,19)=params(19);
g1(11,20)=(-(1-params(2)));
g1(11,21)=T(2);
g1(11,22)=(-(params(13)/params(1)));
g1(12,23)=1;
g1(13,24)=1;
g1(14,5)=1+params(5);
g1(14,6)=(-1);
g1(14,7)=(-params(5));
g1(14,9)=(-params(1));
g1(14,15)=(-params(18));
g1(15,10)=1+params(5);
g1(15,11)=(-1);
g1(15,12)=(-params(5));
g1(15,14)=(-params(1));
g1(15,15)=params(19);
g1(16,9)=params(1);
g1(16,14)=(-params(1));
g1(16,15)=(-(1-params(2)));
g1(17,7)=(-T(1));
g1(17,8)=(-(T(1)*(-params(3))));
g1(17,9)=1;
g1(17,15)=T(2);
g1(18,12)=(-T(1));
g1(18,13)=(-(T(1)*(-params(3))));
g1(18,14)=1;
g1(18,15)=(-(params(13)/params(1)));
g1(19,7)=(-params(6));
g1(19,12)=(-(1-params(6)));
g1(19,16)=1;
g1(20,8)=(-params(6));
g1(20,13)=(-(1-params(6)));
g1(20,17)=1;
g1(21,1)=(-params(16));
g1(21,5)=1;
g1(21,33)=(-1);
g1(22,2)=(-params(17));
g1(22,6)=1;
g1(22,34)=(-1);
g1(23,3)=(-params(16));
g1(23,10)=1;
g1(23,35)=(-1);
g1(24,4)=(-params(17));
g1(24,11)=1;
g1(24,36)=(-1);

end
