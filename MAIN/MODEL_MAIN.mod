// RUN MODEL 

@#define MONPOL = 2
@#define RULE = 2

var
    y_gap           ${\tilde y_t}$        (long_name='Home output gap (log dev ss)')   
    g_gap           ${\tilde g_t}$        (long_name='Home government spending gap (log dev ss)')
    c_gap           ${\tilde c_t}$        (long_name='Home consumption gap (log dev ss)')

    y_gap_starr     ${\tilde y_t^*}$      (long_name='Foreign output gap (log dev ss)') 
    g_gap_starr     ${\tilde g_t^*}$      (long_name='Foreign government spending gap (log dev ss)')
    c_gap_starr     ${\tilde c_t^*}$      (long_name='Foreign consumption gap (log dev ss)')

    s_gap           ${\tilde s_t}$        (long_name='Home terms of trade gap (log dev ss)')   
    
    y_gap_cu        ${\tilde y_{cu,t}}$        (long_name='Currency union output gap (log dev ss)')
    g_gap_cu        ${\tilde g_{cu,t}}$        (long_name='Currency government spending gap (log dev ss)')  

    a               ${a_t}$        (long_name='Home productivity (log dev ss)')
    xi              ${\xi_t}$      (long_name='Home labor disutility (log dev ss)')

    a_starr         ${a_t^*}$        (long_name='Foreign productivity (log dev ss)')
    xi_starr        ${\xi_t^*}$      (long_name='Foreign labor disutility (log dev ss)')
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
    W_ALPHA_bar_starr LAMBDA_starr ETA RHOA RHOXI ALPHA ALPHA_starr EPSILON SIGMA_tilde

    @#if MONPOL != 1
    COEF_y_gapH COEF_y_gapF COEF_pieH COEF_pieF 
    COEF_y_gapH_starr COEF_y_gapF_starr COEF_pieH_starr COEF_pieF_starr
    @#endif

    COEF_y_natH COEF_y_natF COEF_c_natH COEF_c_natF COEF_aH COEF_aF COEF_xiH COEF_xiF COEF_s_nat
    COEF_y_natH_starr COEF_y_natF_starr COEF_c_natH_starr COEF_c_natF_starr COEF_aH_starr COEF_aF_starr COEF_xiH_starr COEF_xiF_starr COEF_s_nat_starr


;

SIGMA = 1;
ALPHA_bar = 0.5;
CHI=0.03;
DELTA = CHI;
BETA = 0.99;
PHI = 1;
h = 0.5;
THETA = 0.75;
THETA_starr = 0.75;
ETA=4.5;
GAMMA=1;
EPSILON=1;
ALPHA=ALPHA_bar*(1-h);
ALPHA_starr = ALPHA_bar*h;
W_ALPHA_bar = 1-ALPHA_bar*h+(1-h)*ALPHA_bar*(2-ALPHA_bar)*(SIGMA*ETA-1);
LAMBDA = (1-THETA)*(1-THETA*BETA)/THETA;
W_ALPHA_bar_starr = ALPHA_bar*h*(1+(2-ALPHA_bar)*(SIGMA*ETA-1));
LAMBDA_starr = (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;

SIGMA_tilde=SIGMA/(1-DELTA);
RHOA=0.9;
RHOXI=0.9;

COEF_y_natH=0.2274; 
COEF_y_natF=-0.0287; 
COEF_c_natH=2.6806; 
COEF_c_natF=0.1319; 
COEF_aH=-3.0120;
COEF_aF=-0.0391;
COEF_xiH=1.5061; 
COEF_xiF=0.0195; 
COEF_s_nat=1.8958;
COEF_y_natH_starr=-3.5187; 
COEF_y_natF_starr=0.2097; 
COEF_c_natH_starr=0.7751; 
COEF_c_natF_starr=-0.4006; 
COEF_aH_starr=3.0047; 
COEF_aF_starr=-0.1264; 
COEF_xiH_starr=-1.5024; 
COEF_xiF_starr=0.0631; 
COEF_s_nat_starr=3.0627;

@#include "FLEXIBLE_PRICE.mod"

@#include "STICKY_PRICE.mod"

model(linear);


    @#if MONPOL != 1
    //g=COEF_y_gapH*y_gap+COEF_y_gapF*y_gap_starr+COEF_pieH*pie+COEF_pieF*pie_starr;
    //g_starr=COEF_y_gapH_starr*y_gap+COEF_y_gapF_starr*y_gap_starr+COEF_pieH_starr*pie+COEF_pieF_starr*pie_starr;

    g=COEF_y_gapH*y_gap(-1)+COEF_y_gapF*y_gap_starr(-1)+COEF_pieH*pie(-1)+COEF_pieF*pie_starr(-1);
    g_starr=COEF_y_gapH_starr*y_gap(-1)+COEF_y_gapF_starr*y_gap_starr(-1)+COEF_pieH_starr*pie(-1)+COEF_pieF_starr*pie_starr(-1);
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
    g_gap_cu=h*g_gap+(1-h)*g_gap_starr;
    
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
g_gap_cu=0;
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

    
    
    //planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
    planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
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
    osr(opt_algo=9,irf=30,tex) y_gap y_nat g_gap g_nat c_gap c_nat pie c_F c_H y_gap_starr y_nat_starr g_gap_starr g_nat_starr c_gap_starr c_nat_starr pie_starr c_F_starr c_H_starr y_gap_cu g_gap_cu pie_cu s_gap s_nat ii ; 
    

//oo_.osr.optim_params;

@#else 
    
    


    planner_objective 1/2*h*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
    ramsey_model(instruments=(ii,g_gap,g_gap_starr),planner_discount=BETA); 
    steady;
    stoch_simul(order=1,irf=30,tex,irf_shocks=(eps_a_starr),irf_plot_threshold = 1e-100) y_gap y_nat g_gap g_nat c_gap c_nat pie c_F c_H y_gap_starr y_nat_starr g_gap_starr g_nat_starr c_gap_starr c_nat_starr pie_starr c_F_starr c_H_starr y_gap_cu g_gap_cu pie_cu s_gap s_nat ii ; 

    evaluate_planner_objective;

    //loss=sum(cumprod(ones(1,30)*BETA).*(1/2*h*(EPSILON/LAMBDA*oo_.irfs.pie_eps_a_starr.^2+PHI*oo_.irfs.y_gap_eps_a_starr.^2+GAMMA*DELTA*oo_.irfs.g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*oo_.irfs.c_gap_eps_a_starr.^2)+1/2*(1-h)*(EPSILON/LAMBDA_starr*oo_.irfs.pie_starr_eps_a_starr.^2+PHI*oo_.irfs.y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*oo_.irfs.g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*oo_.irfs.c_gap_starr_eps_a_starr.^2)))
    //c=oo_.irfs.c_eps_a_starr
    //Cequiv=exp(sum((1-BETA)*cumprod(ones(1,30)*BETA).*(c_0-c_1)))-1

@#endif



