@#include "NK_linear_costpush_common.inc"

shocks;
var eps_a = 0; %shut off
var eps_u = 1;
var eps_z = 0; %shut off
end;

SIGMA = 1;
VARPHI=5;
THETA=3/4;
RHOZ  = 0.5;
RHOA  = 0.9;
BETA  = 0.99;
ALPHA = 1/4;
EPSILON= 9;

@#ifndef VALUERHOU
  RHOU=0;   % Response to transitory cost-push shock under commitment
  %RHOU=0.8; % Response to persistent cost-push shock under commitment
@#else
  RHOU = @{VALUERHOU};
@#endif

planner_objective pie^2 +VARTHETA*x^2;
ramsey_model(instruments=(ii),planner_discount=BETA);
stoch_simul(order=1,irf=30);
evaluate_planner_objective;