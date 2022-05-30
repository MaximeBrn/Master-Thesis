@#define MONPOL = 2
@#include "Model_draft_4.inc"

shocks;
var eps_a = 0; 
var eps_xi = 0; 
var eps_a_starr = 1; 
var eps_xi_starr = 0; 
end;

SIGMA = 3;
ALPHA_bar = 1;
DELTA = 0.25;
BETA = 0.99;
PHI = 1;
h = 0.8;
THETA = 0.75;
THETA_starr = 0.75;
ETA=4.5;
CHI=0.03;
GAMMA=1.1;

W_ALPHA_bar = 1-ALPHA_bar*h+(1-h)*ALPHA_bar*(2-ALPHA_bar)*(SIGMA*ETA-1);
LAMBDA = (1-THETA)*(1-THETA*BETA)/THETA;

W_ALPHA_bar_starr = ALPHA_bar*h*(1+(2-ALPHA_bar)*(SIGMA*ETA-1));
LAMBDA_starr = (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;

RHOA=0.8;
RHOXI=0.8;

@#if MONPOL != 1
COEF_y_gapH=1; COEF_y_gapF=1;COEF_pieH=1; COEF_pieF=1; 
COEF_y_gapH_starr=1; COEF_y_gapF_starr=1; COEF_pieH_starr=1; COEF_pieF_starr=1; 

planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2);
ramsey_model(instruments=(ii),planner_discount=BETA);


optim_weights;
pie h/LAMBDA;
pie_starr (1-h)/LAMBDA_starr;
y_gap h*(1+PHI);
y_gap_starr (1-h)*(1+PHI);
g_gap h;
g_gap_starr 1-h;
end;

osr_params COEF_y_gapH COEF_y_gapF COEF_pieH COEF_pieF COEF_y_gapH_starr COEF_y_gapF_starr COEF_pieH_starr COEF_pieF_starr;

osr_params_bounds;
COEF_y_gapH, -10, 10;
COEF_y_gapF, -10, 10;
COEF_pieH, -10, 10;
COEF_pieF, -10, 10;
COEF_y_gapH_starr, -10, 10;
COEF_y_gapF_starr, -10, 10;
COEF_pieH_starr, -10, 10;
COEF_pieF_starr, -10, 10;
end;

osr(opt_algo=9,irf=30); 
oo_.osr.optim_params
evaluate_planner_objective;

alternative_c=exp(oo_.irfs.c_eps_a_starr)
alternative_n=exp(oo_.irfs.n_eps_a_starr)
alternative_g=exp(oo_.irfs.g_eps_a_starr)
alternative_xi=exp(oo_.irfs.xi_eps_a_starr)
alternative_c_starr=exp(oo_.irfs.c_starr_eps_a_starr)
alternative_n_starr=exp(oo_.irfs.n_starr_eps_a_starr)
alternative_g_starr=exp(oo_.irfs.g_starr_eps_a_starr)
alternative_xi_starr=exp(oo_.irfs.xi_starr_eps_a_starr)

alternative_u=h*((alternative_c/h).^(1-SIGMA)/(1-SIGMA)+CHI*(alternative_g/h).^(1-GAMMA)/(1-GAMMA)-alternative_xi.*(alternative_n/h).^(1+PHI)/(1+PHI))+(1-h)*((alternative_c_starr/(1-h)).^(1-SIGMA)/(1-SIGMA)+CHI*(alternative_g_starr/(1-h)).^(1-GAMMA)/(1-GAMMA)-alternative_xi_starr.*(alternative_n_starr/(1-h)).^(1+PHI)/(1+PHI))


@#else 

planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2+GAMMA*(1-DELTA)*g_gap^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2+GAMMA*(1-DELTA)*g_gap_starr^2);
//planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2);
ramsey_model(instruments=(ii,g_starr),planner_discount=BETA);


stoch_simul(order=1,irf=30);
evaluate_planner_objective;

benchmark_c=exp(oo_.irfs.c_eps_a_starr)
benchmark_n=exp(oo_.irfs.n_eps_a_starr)
benchmark_g=exp(oo_.irfs.g_eps_a_starr)
benchmark_xi=exp(oo_.irfs.xi_eps_a_starr)
benchmark_c_starr=exp(oo_.irfs.c_starr_eps_a_starr)
benchmark_n_starr=exp(oo_.irfs.n_starr_eps_a_starr)
benchmark_g_starr=exp(oo_.irfs.g_starr_eps_a_starr)
benchmark_xi_starr=exp(oo_.irfs.xi_starr_eps_a_starr)

benchmark_u=h*((benchmark_c/h).^(1-SIGMA)/(1-SIGMA)+CHI*(benchmark_g/h).^(1-GAMMA)/(1-GAMMA)-benchmark_xi.*(benchmark_n/h).^(1+PHI)/(1+PHI))+(1-h)*((benchmark_c_starr/(1-h)).^(1-SIGMA)/(1-SIGMA)+CHI*(benchmark_g_starr/(1-h)).^(1-GAMMA)/(1-GAMMA)-benchmark_xi_starr.*(benchmark_n_starr/(1-h)).^(1+PHI)/(1+PHI))

@#endif

