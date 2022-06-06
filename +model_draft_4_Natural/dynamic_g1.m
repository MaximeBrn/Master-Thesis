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
    T = Model_draft_4_Natural.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(14, 24);
g1(1,5)=1+params(5);
g1(1,6)=(-1);
g1(1,7)=(-params(5));
g1(1,9)=(-params(1));
g1(1,15)=(-params(18));
g1(2,10)=1+params(5);
g1(2,11)=(-1);
g1(2,12)=(-params(5));
g1(2,14)=(-params(1));
g1(2,15)=params(19);
g1(3,9)=params(1);
g1(3,14)=(-params(1));
g1(3,15)=(-(1-params(2)));
g1(4,7)=(-T(1));
g1(4,8)=(-(T(1)*(-params(3))));
g1(4,9)=1;
g1(4,15)=(params(2)+params(11)-1)/params(1);
g1(5,12)=(-T(1));
g1(5,13)=(-(T(1)*(-params(3))));
g1(5,14)=1;
g1(5,15)=(-(params(13)/params(1)));
g1(6,5)=(-params(24));
g1(6,6)=(-params(26));
g1(6,7)=(-params(20));
g1(6,8)=1;
g1(6,9)=(-params(22));
g1(6,10)=(-params(25));
g1(6,11)=(-params(27));
g1(6,12)=(-params(21));
g1(6,14)=(-params(23));
g1(6,15)=(-params(28));
g1(7,5)=(-params(33));
g1(7,6)=(-params(35));
g1(7,7)=(-params(29));
g1(7,9)=(-params(31));
g1(7,10)=(-params(34));
g1(7,11)=(-params(36));
g1(7,12)=(-params(30));
g1(7,13)=1;
g1(7,14)=(-params(32));
g1(7,15)=(-params(37));
g1(8,18)=1;
g1(8,19)=(-0.9);
g1(9,7)=(-params(6));
g1(9,12)=(-(1-params(6)));
g1(9,16)=1;
g1(10,8)=(-params(6));
g1(10,13)=(-(1-params(6)));
g1(10,17)=1;
g1(11,1)=(-params(16));
g1(11,5)=1;
g1(11,20)=(-1);
g1(11,24)=(-1);
g1(12,2)=(-params(17));
g1(12,6)=1;
g1(12,21)=(-1);
g1(13,3)=(-params(16));
g1(13,10)=1;
g1(13,22)=(-1);
g1(13,24)=(-1);
g1(14,4)=(-params(17));
g1(14,11)=1;
g1(14,23)=(-1);

end
