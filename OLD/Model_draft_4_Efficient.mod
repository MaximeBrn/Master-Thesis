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


;       

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_xi      ${\varepsilon_xi}$      (long_name='labor disutility shock')
  eps_a_starr
  eps_xi_starr
;

parameters 
    
    SIGMA ALPHA_bar DELTA BETA PHI h CHI GAMMA THETA THETA_starr W_ALPHA_bar LAMBDA
    W_ALPHA_bar_starr LAMBDA_starr ETA RHOA RHOXI 

    ALPHA   ALPHA_starr

end;
    
SIGMA = 3;
ALPHA_bar = 0.13;
CHI=0.03;
DELTA = 0.0287;
BETA = 0.99;
PHI = 1;
h = 0.5;
THETA = 0.0001;
THETA_starr = 0.00001;
ETA=4.5;
GAMMA=1;

ALPHA=ALPHA_bar*(1-h);
ALPHA_starr = ALPHA_bar*h;

W_ALPHA_bar = 1-ALPHA_bar*h+(1-h)*ALPHA_bar*(2-ALPHA_bar)*(SIGMA*ETA-1);
LAMBDA = (1-THETA)*(1-THETA*BETA)/THETA;

W_ALPHA_bar_starr = ALPHA_bar*h*(1+(2-ALPHA_bar)*(SIGMA*ETA-1));
LAMBDA_starr = (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;

RHOA=0.85;
RHOXI=0.85;

model(linear); 


//Flexible price (or efficient) conditions

-SIGMA*c_nat=(1-ALPHA)*PHI*(y_nat-a)+ALPHA*PHI*(y_nat_starr-a_starr);
-SIGMA*c_nat_starr=ALPHA_starr*PHI*(y_nat-a)+(1-ALPHA_starr)*PHI*(y_nat_starr-a_starr);

y_nat=(1-ALPHA)*(1-DELTA)*c_nat+ALPHA*(1-DELTA)*c_nat_starr+DELTA*g_nat;
y_nat_starr=ALPHA_starr*(1-DELTA)*c_nat+(1-ALPHA_starr)*(1-DELTA)*c_nat_starr+DELTA*g_nat_starr;

-GAMMA*g_nat=PHI*y_nat-(1+PHI)*a+xi;
-GAMMA*g_nat_starr=PHI*y_nat_starr-(1+PHI)*a_starr+xi_starr;


//Exogeneous process
[name='Home TFP process']
a=RHOA*a(-1)+eps_a;

[name='Home Labor disutility shifter']
xi =RHOXI*xi(-1) + eps_xi;

[name='Foreign TFP process']
a_starr=RHOA*a_starr(-1)+eps_a_starr;

[name='Foreign Labor disutility shifter']
xi_starr = RHOXI*xi_starr(-1) + eps_xi_starr;

end;

shocks;
var eps_a = 0; 
var eps_xi = 0; 
var eps_a_starr = 1; 
var eps_xi_starr = 0; 
end;

steady_state_model;
a=0;xi=0;y_nat=0;g_nat=0;c_nat=0;a_starr=0;xi_starr=0;y_nat_starr=0;g_nat_starr=0;c_nat_starr=0;
end;

resid(1);


stoch_simul(order=1,irf=30);



