var
   a 
   a_starr

   c c_H c_F y g 
   c_starr c_H_starr c_F_starr y_starr g_starr 

   c_nat c_H_nat c_F_nat y_nat g_nat 
   c_nat_starr c_H_nat_starr c_F_nat_starr y_nat_starr g_nat_starr 
    
    s_nat
;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_a_starr
;

parameters 
    
    SIGMA ALPHA_bar BETA PHI h ALPHA ALPHA_starr GAMMA CHI_G CHI_C RHOA  ETA

    DELTA
   
    W_ALPHA_bar
    SIGMA_tilde 
    GAMMA_tilde
    THETA_ALPHA_bar
    SIGMA_tilde_ALPHA_bar
    ;
    
    SIGMA = 3;
    ALPHA_bar = 0.2;
    BETA = 0.98;
    PHI = 1;
    h = 0.7;
    ALPHA=ALPHA_bar*(1-h);
    ALPHA_starr = ALPHA_bar*h;
    GAMMA=1;
    ETA=4.5;
    
    DELTA=0.15;
    CHI_G=DELTA^GAMMA;
    CHI_C=(1-DELTA)^SIGMA;



W_ALPHA_bar     =   1+(2-ALPHA_bar)*(SIGMA*ETA-1);
SIGMA_tilde     =   SIGMA/(1-DELTA);
GAMMA_tilde     =   GAMMA/DELTA;
THETA_ALPHA_bar   = W_ALPHA_bar-1;
SIGMA_tilde_ALPHA_bar   = SIGMA_tilde/(1+ALPHA_bar*THETA_ALPHA_bar);
    
    RHOA=0.85;

model; 
// FOC OF THE PLANNER

c_H = ETA*GAMMA*g + (1-SIGMA*ETA)*c;
c_F = ETA*GAMMA*g_starr + (1-SIGMA*ETA)*c;
c_F_starr = ETA*GAMMA*g_starr + (1-SIGMA*ETA)*c_starr;
c_H_starr = ETA*GAMMA*g + (1-SIGMA*ETA)*c_starr;

PHI*y=(1+PHI)*a-GAMMA*g;
PHI*y_starr=(1+PHI)*a_starr-GAMMA*g_starr;

y=(1-ALPHA)*(1-DELTA)*c_H+ALPHA*(1-DELTA)*c_H_starr+DELTA*g;
y_starr=ALPHA_starr*(1-DELTA)*c_F+(1-ALPHA_starr)*(1-DELTA)*c_F_starr+DELTA*g_starr;

c=(1-ALPHA)*c_H+ALPHA*c_F;
c_starr=ALPHA_starr*c_H_starr+(1-ALPHA_starr)*c_F_starr;


c_H_nat = ETA*GAMMA*g_nat + (1-SIGMA*ETA)*c_nat;
c_F_nat = ETA*GAMMA*g_nat_starr + (1-SIGMA*ETA)*c_nat;
c_F_nat_starr = ETA*GAMMA*g_nat_starr + (1-SIGMA*ETA)*c_nat_starr;
c_H_nat_starr = ETA*GAMMA*g_nat + (1-SIGMA*ETA)*c_nat_starr;


//0=GAMMA_tilde*DELTA*g_nat+PHI*y_nat-(1+PHI)*a;
//0=GAMMA_tilde*DELTA*g_nat_starr+PHI*y_nat_starr-(1+PHI)*a_starr;

GAMMA*g_nat=SIGMA*c_nat+ALPHA*s_nat;
GAMMA*g_nat_starr=SIGMA*c_nat_starr-ALPHA_starr*s_nat;

//SIGMA_tilde*(y_nat-DELTA*g_nat)=GAMMA_tilde*DELTA*g_nat+ALPHA_bar*(1-h)*THETA_ALPHA_bar*s_nat;
//SIGMA_tilde*(y_nat_starr-DELTA*g_nat_starr)=GAMMA_tilde*DELTA*g_nat_starr+ALPHA_bar*h*THETA_ALPHA_bar*s_nat;

0=SIGMA*c_nat+PHI*y_nat+ALPHA*s_nat-(1+PHI)*a;
0=SIGMA*c_nat_starr+PHI*y_nat_starr-ALPHA_starr*s_nat-(1+PHI)*a_starr;


s_nat=SIGMA_tilde_ALPHA_bar*(y_nat-y_nat_starr-DELTA*(g_nat-g_nat_starr));
SIGMA_tilde*(y_nat-DELTA*g_nat)=SIGMA*c_nat+ALPHA_bar*(1-h)*W_ALPHA_bar*s_nat;
SIGMA_tilde*(y_nat_starr-DELTA*g_nat_starr)=SIGMA*c_nat_starr-ALPHA_bar*h*W_ALPHA_bar*s_nat;




a = RHOA*a(-1) + eps_a;
a_starr = RHOA*a_starr(-1) + eps_a_starr;
    




end;


shocks;
var eps_a = 0; 
var eps_a_starr = 1;  
end;


steady_state_model;
//initval;
a=0;
a_starr=0;
y=0;
g=0;
c=0;
c_H=0;
c_F=0;
y_starr=0;
g_starr=0;
c_starr=0;
c_H_starr=0;
c_F_starr=0;
end;

resid(1);
//steady(solve_algo=2,maxit=1000);
steady;
stoch_simul(order=1,irf=30);
//evaluate_planner_objective;

