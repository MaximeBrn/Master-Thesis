

@#define MONPOL = 1

var
    y_gap
    g_gap
    c_gap

    y_gap_starr
    g_gap_starr
    c_gap_starr

    s_gap
   
    y_gap_cu

    a
    xi

    a_starr
    xi_starr
;


varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_xi      ${\varepsilon_xi}$      (long_name='labor disutility shock')
  eps_a_starr
  eps_xi_starr
;

shocks;
var eps_a = 0; 
var eps_xi = 0; 
var eps_a_starr = 1; 
var eps_xi_starr = 0; 
end;


parameters 
    
    SIGMA ALPHA_bar DELTA BETA PHI h CHI GAMMA THETA THETA_starr W_ALPHA_bar LAMBDA
    W_ALPHA_bar_starr LAMBDA_starr ETA RHOA RHOXI ALPHA ALPHA_starr EPSILON

    @#if MONPOL != 1
    COEF_y_gapH COEF_y_gapF COEF_pieH COEF_pieF 
    COEF_y_gapH_starr COEF_y_gapF_starr COEF_pieH_starr COEF_pieF_starr
    @#endif

;

SIGMA = 1;
ALPHA_bar = 0.5;
CHI=0.03;
DELTA = CHI;
BETA = 0.99;
PHI = 1;
h = 0.8;
THETA = 0.90;
THETA_starr = 0.90;
ETA=4.5;
GAMMA=1;
EPSILON=1;
ALPHA=ALPHA_bar*(1-h);
ALPHA_starr = ALPHA_bar*h;
W_ALPHA_bar = 1-ALPHA_bar*h+(1-h)*ALPHA_bar*(2-ALPHA_bar)*(SIGMA*ETA-1);
LAMBDA = (1-THETA)*(1-THETA*BETA)/THETA;
W_ALPHA_bar_starr = ALPHA_bar*h*(1+(2-ALPHA_bar)*(SIGMA*ETA-1));
LAMBDA_starr = (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;
RHOA=0.001;
RHOXI=0.9;


@#include "FLEXIBLE_PRICE.mod"

@#include "STICKY_PRICE.mod"

model(linear);


    @#if MONPOL != 1
    g=COEF_y_gapH*y_gap+COEF_y_gapF*y_gap_starr+COEF_pieH*pie+COEF_pieF*pie_starr;
    g_starr=COEF_y_gapH_starr*y_gap+COEF_y_gapF_starr*y_gap_starr+COEF_pieH_starr*pie+COEF_pieF_starr*pie_starr;
    @#else
    //g=0;
    //g_starr=0;
    @#endif

    y_gap=y-y_nat;
    g_gap=g-g_nat;
    c_gap=c-c_nat;

    y_gap_starr=y_starr-y_nat_starr;
    g_gap_starr=g_starr-g_nat_starr;
    c_gap_starr=c_starr-c_nat_starr;

    s_gap=s-s_nat;

    y_gap_cu=h*y_gap+(1-h)*y_gap_starr;
    
    a=RHOA*a(-1)+eps_a;
    xi =RHOXI*xi(-1) + eps_xi;
    a_starr=RHOA*a_starr(-1)+eps_a_starr;
    xi_starr = RHOXI*xi_starr(-1) + eps_xi_starr;

end;

steady_state_model;
y_gap=0;
g_gap=0;
c_gap=0;
y_gap_starr=0;
g_gap_starr=0;
c_gap_starr=0;
s_gap=0;
y_gap_cu=0;
a=0;
xi =0;
a_starr=0;
xi_starr =0;
end;





@#if MONPOL != 1

    COEF_y_gapH=1; 
    COEF_y_gapF=1;
    COEF_pieH=1;
    COEF_pieF=1; 
    COEF_y_gapH_starr=1;
    COEF_y_gapF_starr=1;
    COEF_pieH_starr=1;
    COEF_pieF_starr=1; 

    
    //planner_objective -1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)-1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
    planner_objective -1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+SIGMA*(1-DELTA)*c_gap^2)-1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
    ramsey_model(instruments=(ii),planner_discount=BETA);

    //optim_weights;
    //pie h;
    //pie_starr 1-h;
    //y_gap h;
    //y_gap_starr 1-h;
    //g_gap h;
    //g_gap_starr 1-h;
    //end;

    optim_weights;
    pie_cu 1;
    y_gap_cu 1;
    end;

    osr_params 
    COEF_y_gapH 
    COEF_y_gapF 
    COEF_pieH 
    COEF_pieF 
    COEF_y_gapH_starr 
    COEF_y_gapF_starr 
    COEF_pieH_starr 
    COEF_pieF_starr;

    //osr_params_bounds;
    //COEF_y_gapH, -10, 10;
    //COEF_y_gapF, -10, 10;
    //COEF_pieH, -10, 10;
    //COEF_pieF, -10, 10;
    //COEF_y_gapH_starr, -10, 10;
    //COEF_y_gapF_starr, -10, 10;
    //COEF_pieH_starr, -10, 10;
    //COEF_pieF_starr, -10, 10;
    //end;

    steady;
    osr(opt_algo=9,irf=30); 
    oo_.osr.optim_params

@#else 
    
    //planner_objective -1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)-1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
    planner_objective  pie^2+pie_starr^2+y^2+y_starr^2;
    ramsey_model(instruments=(ii,g),planner_discount=BETA); 
    steady;
    stoch_simul(order=1,irf=10,tex);

@#endif


