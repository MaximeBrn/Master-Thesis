// RUN MODEL 

@#define MONPOL = 1
@#define RULE = 1

var
    y_gap           ${\tilde y_t}$        (long_name='Home output gap (log dev ss)')   
    g_gap           ${\tilde g_t}$        (long_name='Home government spending gap (log dev ss)')
    c_gap           ${\tilde c_t}$        (long_name='Home consumption gap (log dev ss)')
    f_gap           ${\tilde f_t}$  

    y_gap_starr     ${\tilde y_t^*}$      (long_name='Foreign output gap (log dev ss)') 
    g_gap_starr     ${\tilde g_t^*}$      (long_name='Foreign government spending gap (log dev ss)')
    c_gap_starr     ${\tilde c_t^*}$      (long_name='Foreign consumption gap (log dev ss)')
    f_gap_starr           ${\tilde f_t^*}$  

    s_gap           ${\tilde s_t}$        (long_name='Home terms of trade gap (log dev ss)')   
    
    y_gap_cu        ${\tilde y_t^{cu}}$     (long_name='Union output gap (log dev ss)')
    g_gap_cu        ${\tilde g_t^{cu}}$     (long_name='Union government spending gap (log dev ss)')  
    c_gap_cu        ${\tilde c_t^{cu}}$     (long_name='Union government spending gap (log dev ss)')

    
    a               ${a_t}$         (long_name='Home productivity (log dev ss)')
    a_starr         ${a_t^*}$        (long_name='Foreign productivity (log dev ss)')
   
;


varexo  
  eps_a         ${\epsilon_a}$          (long_name='Home technology shock')
  eps_a_starr   ${\epsilon_a^*}$    (long_name='Foreign technology shock')
;

shocks;
var eps_a = 0; 
var eps_a_starr = 1; 
end;


parameters 
    
    // Structural parameters
    BETA SIGMA PHI GAMMA ETA EPSILON 

    // Economies characteristics
    h ALPHA_bar THETA THETA_starr 

    // Steady state parameters
    DELTA CHI_C CHI_G

    // Composite parameters
    ALPHA ALPHA_starr
    LAMBDA LAMBDA_starr
    W_ALPHA_bar
    SIGMA_tilde
    THETA_ALPHA_bar
    SIGMA_tilde_ALPHA_bar
    OMEGA
    OMEGA_starr

    // Fiscal rule parameters
    @#if MONPOL != 1
    COEF_y_gapH COEF_y_gapF COEF_pieH COEF_pieF 
    COEF_y_gapH_starr COEF_y_gapF_starr COEF_pieH_starr COEF_pieF_starr
    @#endif
    
    // Exogeneous process parameters
    RHOA
;

BETA            =   0.98;
SIGMA           =   3;
PHI             =   1;
GAMMA           =   1;
ETA             =   4.5;
EPSILON         =   6;

h               =   0.5;
ALPHA_bar       =   0.2;
THETA           =   0.75;
THETA_starr     =   0.75;

DELTA           =   0.15;
CHI_C           =   (1-DELTA)^SIGMA;
CHI_G           =   DELTA^GAMMA;

ALPHA                   =   ALPHA_bar*(1-h);
ALPHA_starr             =   ALPHA_bar*h;
LAMBDA                  =   (1-THETA)*(1-THETA*BETA)/THETA;
LAMBDA_starr            =   (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;
W_ALPHA_bar             =   1+(2-ALPHA_bar)*(SIGMA*ETA-1);
SIGMA_tilde             =   SIGMA/(1-DELTA);
THETA_ALPHA_bar         =   W_ALPHA_bar-1;
SIGMA_tilde_ALPHA_bar   =   SIGMA_tilde/(1+ALPHA_bar*THETA_ALPHA_bar);
OMEGA                   =   1+ALPHA_bar*h*THETA_ALPHA_bar ;
OMEGA_starr             =   1+ALPHA_bar*(1-h)*THETA_ALPHA_bar ;

RHOA        =   0.85;

@#include "FLEXIBLE_PRICE.mod"

@#include "STICKY_PRICE.mod"

model(linear);

// OSR GOVERNMENT SPENDING (2 eq. if OSR) 
@#if MONPOL != 1
    
    [name='Home government spending rule']
    
    //g=COEF_y_gapH*y_gap+COEF_y_gapF*y_gap_starr+COEF_pieH*pie+COEF_pieF*pie_starr;
    g_gap=COEF_y_gapH*y_gap+COEF_y_gapF*y_gap_starr+COEF_pieH*pie+COEF_pieF*pie_starr;
    //g=COEF_y_gapH*y_gap(-1)+COEF_y_gapF*y_gap_starr(-1)+COEF_pieH*pie(-1)+COEF_pieF*pie_starr(-1);


    [name='Foreign government spending rule']
    
    g_gap_starr=COEF_y_gapH_starr*y_gap+COEF_y_gapF_starr*y_gap_starr+COEF_pieH_starr*pie+COEF_pieF_starr*pie_starr;
    //g_starr=COEF_y_gapH_starr*y_gap+COEF_y_gapF_starr*y_gap_starr+COEF_pieH_starr*pie+COEF_pieF_starr*pie_starr;
    //g_starr=COEF_y_gapH_starr*y_gap(-1)+COEF_y_gapF_starr*y_gap_starr(-1)+COEF_pieH_starr*pie(-1)+COEF_pieF_starr*pie_starr(-1);
    
    @#endif

// GAP DEFINITIONS (10 eq.)

[name='Home output gap definition']

y_gap = y-y_nat;

[name='Home governmpent spending gap definition']

g_gap = g-g_nat;

[name='Home consumption gap definition']

c_gap = c-c_nat;

f_gap=g_gap-y_gap;

[name='Foreign output gap definition']

y_gap_starr = y_starr-y_nat_starr;

[name='Foreign governmpent spending gap definition']

g_gap_starr = g_starr-g_nat_starr;

[name='Foreign consumption gap definition']

c_gap_starr = c_starr-c_nat_starr;

f_gap_starr=g_gap_starr-y_gap_starr;

[name='Home terms of trade gap definition']

s_gap = s-s_nat;

[name='Union output gap definition']

y_gap_cu = h*y_gap + (1-h)*y_gap_starr;

[name='Union governmpent spending gap definition']

g_gap_cu = h*g_gap + (1-h)*g_gap_starr;
    
[name='Union consumption gap definition']

c_gap_cu=h*c_gap+(1-h)*c_gap_starr;


// EXOGENEOUS PROCESSES (2 eq.)

a = RHOA*a(-1) - eps_a;

a_starr = RHOA*a_starr(-1) - eps_a_starr;


end;

steady_state_model;
y_gap=0;
g_gap=0;
c_gap=0;
f_gap=0;
y_gap_starr=0;
g_gap_starr=0;
c_gap_starr=0;
f_gap_starr=0;
s_gap=0;
y_gap_cu=0;
g_gap_cu=0;
c_gap_cu=0;
a=0;
xi =0;
a_starr=0;
xi_starr =0;
end;

// OSR
@#if MONPOL != 1

    COEF_y_gapH=1; 
    COEF_y_gapF=1;
    COEF_pieH=1;
    COEF_pieF=1; 
    COEF_y_gapH_starr=1;
    COEF_y_gapF_starr=1;
    COEF_pieH_starr=1;
    COEF_pieF_starr=1; 

    
    
    //planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
    // FORLATI COMPLEX WITH GOV GAP
    //planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2+(1-DELTA)*(ALPHA*ETA*SIGMA*(SIGMA-ALPHA*THETA_ALPHA_bar))/((1-ALPHA)^2)*(c_gap-c_gap_cu)^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr-c_gap_cu)^2);
    
    // FORLATI COMPLEX WITHOUT GOV GAP
    planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+SIGMA*(1-DELTA)*c_gap^2+(1-DELTA)*(ALPHA*ETA*SIGMA*(SIGMA-ALPHA*THETA_ALPHA_bar))/((1-ALPHA)^2)*(c_gap-c_gap_cu)^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr-c_gap_cu)^2);
    
    //planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
    ramsey_model(instruments=(ii),planner_discount=BETA);
    
    

    
    @#if RULE != 1
    optim_weights;
    //pie_cu 1;
    pie h;
    pie_starr (1-h);
    //y_gap h;
    //y_gap_starr (1-h);
    //c_gap h;
    //c_gap_starr (1-h);
    //g_gap h;
    //g_gap_starr (1-h);
    end;
    
    @#else
    optim_weights;
    pie h*EPSILON/LAMBDA;
    pie_starr (1-h)*EPSILON/LAMBDA;
    y_gap h*PHI;
    y_gap_starr (1-h)*PHI;
    c_gap h*(1-DELTA)*SIGMA;
    c_gap_starr (1-h)*(1-DELTA)*SIGMA;
    g_gap h*DELTA*GAMMA;
    g_gap_starr (1-h)*DELTA*GAMMA;
    end;
    
    @#endif

    osr_params 
    COEF_y_gapH 
    COEF_y_gapF 
    COEF_pieH 
    COEF_pieF 
    COEF_y_gapH_starr 
    COEF_y_gapF_starr 
    COEF_pieH_starr 
    COEF_pieF_starr;

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

    steady;
    osr(opt_algo=9,irf=30,tex) y_gap y_nat g_gap g_nat c_gap c_nat pie c_F c_H y_gap_starr y_nat_starr g_gap_starr g_nat_starr c_gap_starr c_nat_starr pie_starr c_F_starr c_H_starr y_gap_cu g_gap_cu pie_cu s_gap s_nat ii ; 
    

//oo_.osr.optim_params;

// RAMSEY
@#else 
    
    

   // FORLATI SIMPLE 
   //planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
   
    // FORLATI COMPLEX
    planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2+(1-DELTA)*(ALPHA*ETA*SIGMA*(SIGMA-ALPHA*THETA_ALPHA_bar))/((1-ALPHA)^2)*(c_gap-c_gap_cu)^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr-c_gap_cu)^2);
    
    // FORLATI COMPLEX SAME WEIGHTS
    //planner_objective 1/2*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2+(1-DELTA)*(ALPHA*ETA*SIGMA*(SIGMA-ALPHA*THETA_ALPHA_bar))/((1-ALPHA)^2)*(c_gap-c_gap_cu)^2)+1/2*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr-c_gap_cu)^2);
    
    
    // FORLATI COMPLEX WITHOUT GOV GAP
    //planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+SIGMA*(1-DELTA)*c_gap^2+(1-DELTA)*(ALPHA*ETA*SIGMA*(SIGMA-ALPHA*THETA_ALPHA_bar))/((1-ALPHA)^2)*(c_gap-c_gap_cu)^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr-c_gap_cu)^2);
    

    // MINE
   //planner_objective h/2*( (1-DELTA)*SIGMA*THETA_ALPHA_bar/W_ALPHA_bar*c_gap^2 + DELTA*(GAMMA-SIGMA_tilde/W_ALPHA_bar)*g_gap^2 + (PHI-SIGMA_tilde/W_ALPHA_bar)*y_gap^2 ) + (1-h)/2*( (1-DELTA)*SIGMA*THETA_ALPHA_bar/W_ALPHA_bar*c_gap_starr^2 + DELTA*(GAMMA-SIGMA_tilde/W_ALPHA_bar)*g_gap_starr^2 + (PHI-SIGMA_tilde/W_ALPHA_bar)*y_gap_starr^2 );
   
    ramsey_model(instruments=(ii,g,g_starr),planner_discount=BETA); 

    
   steady;
   //stoch_simul(order=1,irf=40,tex,irf_shocks=(eps_a_starr),irf_plot_threshold = 1e-100)   ;
   
    //ramsey_policy;

   stoch_simul(order=1,irf=30,tex,irf_shocks=(eps_a_starr),irf_plot_threshold = 1e-100) y_gap y_nat g_gap g_nat c_gap c_nat pie c_F c_H y_gap_starr y_nat_starr g_gap_starr g_nat_starr c_gap_starr c_nat_starr pie_starr c_F_starr c_H_starr y_gap_cu g_gap_cu pie_cu s_gap s_nat ii f_gap f_gap_starr ; 
 evaluate_planner_objective;
    

    //loss=sum(cumprod(ones(1,30)*BETA).*(1/2*h*(EPSILON/LAMBDA*oo_.irfs.pie_eps_a_starr.^2+PHI*oo_.irfs.y_gap_eps_a_starr.^2+GAMMA*DELTA*oo_.irfs.g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*oo_.irfs.c_gap_eps_a_starr.^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*oo_.irfs.pie_starr_eps_a_starr.^2+PHI*oo_.irfs.y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*oo_.irfs.g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*oo_.irfs.c_gap_starr_eps_a_starr.^2)))
    //c=oo_.irfs.c_eps_a_starr
    //Cequiv=exp(sum((1-BETA)*cumprod(ones(1,30)*BETA).*(c_0-c_1)))-1

@#endif


