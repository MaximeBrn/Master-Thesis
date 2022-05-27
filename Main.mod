@#define MONPOL = 2
@#include "Model_draft_4.inc"

shocks;
var eps_a = 0; 
var eps_xi = 0; 
var eps_a_starr = 1; 
var eps_xi_starr = 0; 
end;

SIGMA = 1;
ALPHA_bar = 0.1;
DELTA = 0.8;
BETA = 0.99;
PHI = 3;
h = 0.95;
THETA = 0.01;
THETA_starr = 0.01;
ETA=1;
CHI=0.03;
GAMMA=SIGMA;

W_ALPHA_bar = 1-ALPHA_bar*h+(1-h)*ALPHA_bar*(2-ALPHA_bar)*(SIGMA*ETA-1);
LAMBDA = (1-THETA)*(1-THETA*BETA)/THETA;

W_ALPHA_bar_starr = ALPHA_bar*h*(1+(2-ALPHA_bar)*(SIGMA*ETA-1));
LAMBDA_starr = (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;

RHOA=0.8;
RHOXI=0.8;

@#if MONPOL != 1
COEF_yH=1; COEF_yF=1;COEF_pieH=1; COEF_pieF=1; COEF_aH=1; COEF_aF=1;
COEF_yH_starr=1; COEF_yF_starr=1; COEF_pieH_starr=1; COEF_pieF_starr=1; COEF_aH_starr=1; COEF_aF_starr=1;

planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2);
ramsey_model(instruments=(ii,g,g_starr),planner_discount=BETA);

optim_weights;
pie h/LAMBDA;
pie_starr (1-h)/LAMBDA_starr;
y_gap h*(1+PHI);
y_gap_starr (1-h)*(1+PHI);
end;

osr_params COEF_yH COEF_yF COEF_pieH COEF_pieF COEF_aH COEF_aF COEF_yH_starr COEF_yF_starr COEF_pieH_starr COEF_pieF_starr COEF_aH_starr COEF_aF_starr;

osr_params_bounds;
COEF_yH, 0, 1;
COEF_yF, 0, 1;
COEF_pieH, 0, 1;
COEF_pieF, 0, 1;
COEF_aH, 0, 1;
COEF_aF, 0, 1;
COEF_yH_starr, 0, 1;
COEF_yF_starr, 0, 1;
COEF_pieH_starr, 0, 1;
COEF_pieF_starr, 0, 1;
COEF_aH_starr, 0, 1;
COEF_aF_starr, 0, 1;
end;

osr(opt_algo=9,irf=30); 
oo_.osr.optim_params
evaluate_planner_objective;
@#else 

planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2);
ramsey_model(instruments=(ii,g,g_starr),planner_discount=BETA);
stoch_simul(order=1,irf=30);
evaluate_planner_objective;
@#endif

