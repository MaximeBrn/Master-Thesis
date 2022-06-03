@#define MONPOL = 1
//@#include "Model_draft_4.inc"
@#include "Model_draft_4_test.mod"

shocks;
var eps_a = 0; 
var eps_xi = 0; 
var eps_a_starr = 1; 
var eps_xi_starr = 0; 
end;

SIGMA = 1;
ALPHA_bar = 0.2;
CHI=0.03;
DELTA = CHI;
BETA = 0.99;
PHI = 1;
h = 0.5;
THETA = 0.0000001;
THETA_starr = 0.000001;
ETA=4.5;
GAMMA=1;
EPSILON=1;

ALPHA=ALPHA_bar*(1-h);
ALPHA_starr = ALPHA_bar*h;

W_ALPHA_bar = 1-ALPHA_bar*h+(1-h)*ALPHA_bar*(2-ALPHA_bar)*(SIGMA*ETA-1);
LAMBDA = (1-THETA)*(1-THETA*BETA)/THETA;

W_ALPHA_bar_starr = ALPHA_bar*h*(1+(2-ALPHA_bar)*(SIGMA*ETA-1));
LAMBDA_starr = (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;

RHOA=0.9;
RHOXI=0.9;

@#if MONPOL != 1
COEF_y_gapH=1; COEF_y_gapF=1;COEF_pieH=1; COEF_pieF=1; 
COEF_y_gapH_starr=1; COEF_y_gapF_starr=1; COEF_pieH_starr=1; COEF_pieF_starr=1; 

//planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2+g_gap^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2+g_gap_starr^2);
//planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2+(g_gap-y_gap)^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2+(g_gap_starr-y_gap_starr)^2);
//planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2);

//planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
planner_objective h*(1/2*(1+PHI)*(y-a)^2+1/2*(1-SIGMA)*(1-DELTA)*c^2+1/2*(1-GAMMA)*DELTA/CHI*g^2+EPSILON/(2*LAMBDA*h)*pie^2)+(1-h)*(1/2*(1+PHI)*(y_starr-a_starr)^2+1/2*(1-SIGMA)*(1-DELTA)*c_starr^2+1/2*(1-GAMMA)*DELTA/CHI*g_starr^2+EPSILON/(2*LAMBDA*(1-h))*pie_starr^2);


ramsey_model(instruments=(ii),planner_discount=BETA);

optim_weights;
pie h;
pie_starr 1-h;
y_gap h;
y_gap_starr 1-h;
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

osr(opt_algo=9,irf=30) pie y c g pie_starr y_starr c_starr g_starr s pie_cu y_cu g_cu ; 
oo_.osr.optim_params
//evaluate_planner_objective;

//alternative_c=exp(oo_.irfs.c_eps_a_starr)
//alternative_n=exp(oo_.irfs.n_eps_a_starr)
//alternative_g=exp(oo_.irfs.g_eps_a_starr)
//alternative_xi=exp(oo_.irfs.xi_eps_a_starr)
//alternative_c_starr=exp(oo_.irfs.c_starr_eps_a_starr)
//alternative_n_starr=exp(oo_.irfs.n_starr_eps_a_starr)
//alternative_g_starr=exp(oo_.irfs.g_starr_eps_a_starr)
//alternative_xi_starr=exp(oo_.irfs.xi_starr_eps_a_starr)

//alternative_u=h*((alternative_c/h).^(1-SIGMA)/(1-SIGMA)+CHI*(alternative_g/h).^(1-GAMMA)/(1-GAMMA)-alternative_xi.*(alternative_n/h).^(1+PHI)/(1+PHI))+(1-h)*((alternative_c_starr/(1-h)).^(1-SIGMA)/(1-SIGMA)+CHI*(alternative_g_starr/(1-h)).^(1-GAMMA)/(1-GAMMA)-alternative_xi_starr.*(alternative_n_starr/(1-h)).^(1+PHI)/(1+PHI))


@#else 

//planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2+g_gap^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2+g_gap_starr^2);
//planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2+(g_gap-y_gap)^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2+(g_gap_starr-y_gap_starr)^2);
//planner_objective h*(1/LAMBDA*pie^2+PHI*(y_gap)^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+PHI*(y_gap_starr)^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
//planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y_gap)^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_gap_starr)^2);

//planner_objective h*(y-a+1/2*(1+PHI)*(y-a)^2+(1-DELTA)*c+1/2*(1-SIGMA)*(1-DELTA)*c^2+DELTA/CHI*g+1/2*(1-GAMMA)*DELTA/CHI*g^2+EPSILON/(2*LAMBDA*h)*pie^2)+(1-h)*(y_starr-a_starr+1/2*(1+PHI)*(y_starr-a_starr)^2+(1-DELTA)*c_starr+1/2*(1-SIGMA)*(1-DELTA)*c_starr^2+DELTA/CHI*g_starr+1/2*(1-GAMMA)*DELTA/CHI*g_starr^2+EPSILON/(2*LAMBDA*(1-h))*pie_starr^2);
planner_objective h*(1/2*(1+PHI)*(y-a)^2+1/2*(1-SIGMA)*(1-DELTA)*c^2+1/2*(1-GAMMA)*DELTA*g^2+EPSILON/(2*LAMBDA*h)*pie^2)+(1-h)*(1/2*(1+PHI)*(y_starr-a_starr)^2+1/2*(1-SIGMA)*(1-DELTA)*c_starr^2+1/2*(1-GAMMA)*DELTA*g_starr^2+EPSILON/(2*LAMBDA*(1-h))*pie_starr^2);

//planner_objective -1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)-1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
//planner_objective -1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y^2+GAMMA*DELTA*g^2+SIGMA*(1-DELTA)*c^2)-1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_starr^2+GAMMA*DELTA*g_starr^2+SIGMA*(1-DELTA)*c_starr^2);

ramsey_model(instruments=(ii,g,g_starr),planner_discount=BETA);

steady;
//stoch_simul(order=1,irf=30) pie y c g g_nat pie_starr y_starr y_nat_starr c_starr g_starr g_nat_starr s pie_cu y_cu g_cu ;
stoch_simul(order=1,irf=30);
//evaluate_planner_objective;

//figure
//plot(1:1:30,oo_.irfs.y_starr_eps_a_starr,'LineWidth',1.5,'color','black');hold on 
//axis([0 30 0 1]);

//benchmark_c=exp(oo_.irfs.c_eps_a_starr)
//benchmark_n=exp(oo_.irfs.n_eps_a_starr)
//benchmark_g=exp(oo_.irfs.g_eps_a_starr)
//benchmark_xi=exp(oo_.irfs.xi_eps_a_starr)
//benchmark_c_starr=exp(oo_.irfs.c_starr_eps_a_starr)
//benchmark_n_starr=exp(oo_.irfs.n_starr_eps_a_starr)
//benchmark_g_starr=exp(oo_.irfs.g_starr_eps_a_starr)
//benchmark_xi_starr=exp(oo_.irfs.xi_starr_eps_a_starr)

//benchmark_u=h*((benchmark_c/h).^(1-SIGMA)/(1-SIGMA)+CHI*(benchmark_g/h).^(1-GAMMA)/(1-GAMMA)-benchmark_xi.*(benchmark_n/h).^(1+PHI)/(1+PHI))+(1-h)*((benchmark_c_starr/(1-h)).^(1-SIGMA)/(1-SIGMA)+CHI*(benchmark_g_starr/(1-h)).^(1-GAMMA)/(1-GAMMA)-benchmark_xi_starr.*(benchmark_n_starr/(1-h)).^(1+PHI)/(1+PHI))

@#endif

