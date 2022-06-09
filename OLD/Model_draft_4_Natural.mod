
@#define MONPOL = 1

var
    a           ${a}$        (long_name='Home technology shock process (log dev ss)')
    xi
    y_nat       
    g_nat
    c_nat

    a_starr     ${a^*}$     (long_name='Foreign technology shock process (log dev ss)')
    xi_starr
    y_nat_starr
    g_nat_starr
    c_nat_starr
    s_nat

    y_nat_cu
    g_nat_cu

    @#if MONPOL != 1
    junk
    @#endif
;       

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_xi      ${\varepsilon_xi}$      (long_name='labor disutility shock')
  eps_a_starr
  eps_xi_starr
    
  eps_a_cu
;

parameters 
    
    SIGMA ALPHA_bar DELTA BETA PHI h CHI GAMMA THETA THETA_starr W_ALPHA_bar LAMBDA
    W_ALPHA_bar_starr LAMBDA_starr ETA RHOA RHOXI ALPHA ALPHA_starr

    @#if MONPOL != 1
    COEF_y_natH COEF_y_natF COEF_c_natH COEF_c_natF COEF_aH COEF_aF COEF_xiH COEF_xiF COEF_s_nat
    COEF_y_natH_starr COEF_y_natF_starr COEF_c_natH_starr COEF_c_natF_starr COEF_aH_starr COEF_aF_starr COEF_xiH_starr COEF_xiF_starr COEF_s_nat_starr
    @#endif


end;
    
SIGMA = 1;
ALPHA_bar = 0.5;
CHI=0.03;
DELTA = CHI;
BETA = 0.98;
PHI = 1;
h = 0.8;
ETA=4.5;
GAMMA=1;

@#if MONPOL != 1  
COEF_y_natH=1; COEF_y_natF=1; COEF_c_natH=1; COEF_c_natF=1; COEF_aH=1; COEF_aF=1; COEF_xiH=1; COEF_xiF=1; COEF_s_nat=1;
COEF_y_natH_starr=1; COEF_y_natF_starr=1; COEF_c_natH_starr=1; COEF_c_natF_starr=1; COEF_aH_starr=1; COEF_aF_starr=1; COEF_xiH_starr=1; COEF_xiF_starr=1; COEF_s_nat_starr=1;
@#endif

ALPHA=ALPHA_bar*(1-h);
ALPHA_starr=ALPHA_bar*h;

W_ALPHA_bar = 1-ALPHA_bar*h+(1-h)*ALPHA_bar*(2-ALPHA_bar)*(SIGMA*ETA-1);
LAMBDA = (1-THETA)*(1-THETA*BETA)/THETA;

W_ALPHA_bar_starr = ALPHA_bar*h*(1+(2-ALPHA_bar)*(SIGMA*ETA-1));
LAMBDA_starr = (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;

RHOA=0.85;
RHOXI=0.85;

model(linear); 


//Flexible price (or efficient) conditions

0=xi+SIGMA*c_nat+PHI*y_nat+ALPHA*s_nat-(1+PHI)*a; // EQUAL MC
0=xi_starr+SIGMA*c_nat_starr+PHI*y_nat_starr-ALPHA_starr*s_nat-(1+PHI)*a_starr; // EQUAL MC_starr
SIGMA*c_nat=(1-ALPHA_bar)*s_nat+SIGMA*c_nat_starr; // IRS
c_nat=1/(1-DELTA)*(y_nat-DELTA*g_nat)-(W_ALPHA_bar+ALPHA_bar-1)/SIGMA*s_nat; // GOOD MARKET CLEARING 
c_nat_starr=1/(1-DELTA)*(y_nat_starr-DELTA*g_nat_starr)+W_ALPHA_bar_starr/SIGMA*s_nat; // GOOD MARKET CLEARING


@#if MONPOL != 1  
g_nat=COEF_y_natH*y_nat+ COEF_y_natF*y_nat_starr+ COEF_c_natH*c_nat+ COEF_c_natF*c_nat_starr+ COEF_aH*a+ COEF_aF*a_starr+ COEF_xiH*xi+ COEF_xiF*xi_starr+ COEF_s_nat*s_nat;
g_nat_starr=COEF_y_natH_starr*y_nat+ COEF_y_natF_starr*y_nat_starr+ COEF_c_natH_starr*c_nat+ COEF_c_natF_starr*c_nat_starr+ COEF_aH_starr*a+ COEF_aF_starr*a_starr+ COEF_xiH_starr*xi+ COEF_xiF_starr*xi_starr+ COEF_s_nat_starr*s_nat;
junk=0.9*junk(+1);
@#endif

//h*g_nat+(1-h)*g_nat_starr=0;
//GAMMA*g_nat/h=-xi-PHI*y_nat+(1+PHI)*a;

//0=ETA*xi-(ETA-1)*a+(1+PHI*ETA)*(y_nat-a)+(SIGMA*ETA-1)*c_nat-CHI*g_nat-ALPHA*(ETA-1/SIGMA)*(1-ALPHA_bar)*s_nat;
//0=ETA*xi_starr-(ETA-1)*a_starr+(1+PHI*ETA)*(y_nat_starr-a_starr)+(SIGMA*ETA-1)*c_nat_starr-CHI*g_nat_starr-ALPHA_starr*(1/SIGMA-ETA)*(1-ALPHA_bar)*s_nat;

 y_nat_cu=h*y_nat+(1-h)*y_nat_starr;
 g_nat_cu=h*g_nat+(1-h)*g_nat_starr;

//Exogeneous process
[name='Home TFP process']
a=RHOA*a(-1)+eps_a+eps_a_cu;

[name='Home Labor disutility shifter']
xi =RHOXI*xi(-1) + eps_xi;

[name='Foreign TFP process']
a_starr=RHOA*a_starr(-1)+eps_a_starr+eps_a_cu;

[name='Foreign Labor disutility shifter']
xi_starr = RHOXI*xi_starr(-1) + eps_xi_starr;

end;

shocks;
var eps_a = 1; 
var eps_xi = 1; 
var eps_a_starr = 1; 
var eps_xi_starr = 1; 
var eps_a_cu = 1; 
end;

steady_state_model;
a=0;xi=0;y_nat=0;g_nat=0;c_nat=0;
a_starr=0;xi_starr=0;y_nat_starr=0;g_nat_starr=0;c_nat_starr=0;
s_nat=0;
y_nat_cu=0;g_nat_cu=0;
end;

@#if MONPOL != 1  
optim_weights;
y_nat h*PHI;g_nat h*GAMMA*DELTA;c_nat h*SIGMA*(1-DELTA);y_nat_starr (1-h)*PHI;g_nat_starr (1-h)*GAMMA*DELTA;c_nat_starr (1-h)*SIGMA*(1-DELTA);
end;

osr_params 
COEF_y_natH COEF_y_natF COEF_c_natH COEF_c_natF COEF_aH COEF_aF COEF_xiH COEF_xiF COEF_s_nat
COEF_y_natH_starr COEF_y_natF_starr COEF_c_natH_starr COEF_c_natF_starr COEF_aH_starr COEF_aF_starr COEF_xiH_starr COEF_xiF_starr COEF_s_nat_starr;

osr(opt_algo=9,irf=30,nograph); 
oo_.osr.optim_params

@#else
//planner_objective h*(1/2*(1+PHI)*(y_nat-a)^2+1/2*(1-SIGMA)*(1-DELTA)*c_nat^2+1/2*(1-GAMMA)*DELTA/CHI*g_nat^2)+(1-h)*(1/2*(1+PHI)*(y_nat_starr-a_starr)^2+1/2*(1-SIGMA)*(1-DELTA)*c_nat_starr^2+1/2*(1-GAMMA)*DELTA/CHI*g_nat_starr^2);
//planner_objective -h*(1/2*(1+PHI)*(y_nat-a)^2+1/2*(1-SIGMA)*(1-DELTA)*c_nat^2+1/2*(1-GAMMA)*DELTA/CHI*g_nat^2)-(1-h)*(1/2*(1+PHI)*(y_nat_starr-a_starr)^2+1/2*(1-SIGMA)*(1-DELTA)*c_nat_starr^2+1/2*(1-GAMMA)*DELTA/CHI*g_nat_starr^2);

//planner_objective -1/2*h*(PHI*y_nat^2+GAMMA*DELTA*g_nat^2+SIGMA*(1-DELTA)*c_nat^2)-1/2*(1-h)*(PHI*y_nat_starr^2+GAMMA*DELTA*g_nat_starr^2+SIGMA*(1-DELTA)*c_nat_starr^2);
planner_objective 1/2*h*(PHI*y_nat^2+GAMMA*DELTA*g_nat^2+SIGMA*(1-DELTA)*c_nat^2)+1/2*(1-h)*(PHI*y_nat_starr^2+GAMMA*DELTA*g_nat_starr^2+SIGMA*(1-DELTA)*c_nat_starr^2);

ramsey_model(instruments=(g_nat,g_nat_starr),planner_discount=BETA);

stoch_simul(order=1,irf=30,graph,irf_shocks=(eps_a_starr));

@#endif



//Y=g_nat_eps_a_starr
//Y_starr=g_nat_starr_eps_a_starr
//X = [xi_starr_eps_a xi_eps_a_starr c_nat_eps_a_starr  a_starr_eps_a_starr xi_starr_eps_a_starr y_nat_starr_eps_a_starr c_nat_starr_eps_a_starr s_nat_eps_a_starr ]
//X = [xi_starr_eps_a xi_eps_a_starr c_nat_eps_a_starr  a_starr_eps_a_starr xi_starr_eps_a_starr y_nat_starr_eps_a_starr c_nat_starr_eps_a_starr s_nat_eps_a_starr ];
//b = X\Y

