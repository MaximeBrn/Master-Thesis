var
   C  N G A
   C_starr N_starr G_starr A_starr
;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_a_starr

;

parameters 
    
    SIGMA ALPHA_bar BETA PHI h ALPHA ALPHA_starr ETA GAMMA CHI RHOA RHOXI 
    ;
    
    SIGMA = 3;
    ALPHA_bar = 0.5;
    BETA = 0.99;
    PHI = 2;
    h = 0.5;
    ALPHA = ALPHA_bar*(1-h);
    ALPHA_starr = ALPHA_bar*h;
    ETA=4.5;
    GAMMA=1;
    CHI=0.03;

    RHOA=0.85;
    RHOXI=0.85;


model; 
// FOC OF THE PLANNER

(C/h)^(-SIGMA)=(1-ALPHA)*h*CHI*G^(-GAMMA)+ALPHA*(1-h)*CHI*G_starr^(-GAMMA);
(C_starr/(1-h))^(-SIGMA)=ALPHA_starr*h*CHI*G^(-GAMMA)+(-ALPHA_starr)*(1-h)*CHI*G_starr^(-GAMMA);

1/A*(N/h)^PHI=h*CHI*G^(-GAMMA);
1/A_starr*(N_starr/(1-h))^PHI=(1-h)*CHI*G_starr^(-GAMMA);

(1-ALPHA)*C+ALPHA_starr*C_starr+G=A*N;
ALPHA*C+(1-ALPHA_starr)*C_starr+G_starr=A_starr*N_starr;

// EXO PROCESS
A=A(-1)^RHOA*exp(eps_a);
A_starr=A_starr(-1)^RHOA*exp(eps_a_starr);


end;

shocks;
var eps_a = 1; 
var eps_a_starr = 0; 
end;

//initval;
//N=h;N_starr=1-h;
//end;

steady_state_model;
A=1;A_starr=1;XI=1;XI_starr=1;
end;

steady;

//stoch_simul(order=1,irf=30);
//evaluate_planner_objective;
