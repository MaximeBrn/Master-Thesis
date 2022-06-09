var
    C  N Y G A XI 
    C_starr N_starr Y_starr G_starr A_starr XI_starr 
    G_cap G_cap_starr C_cap C_cap_starr N_cap N_cap_starr
    S
   
    TAU TAU_starr
;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_a_starr
  eps_xi
  eps_xi_starr

;

parameters 
    
    ALPHA_bar BETA PHI h ALPHA ALPHA_starr  CHI RHOA 
    RHOXI

    EPSILON
    //TAU TAU_starr
    ;
    
    ALPHA_bar = 0.13;
    BETA = 0.98;
    PHI = 1;
    h = 0.5;
    ALPHA=ALPHA_bar*(1-h);
    ALPHA_starr = ALPHA_bar*h;
    CHI=0.25;

    EPSILON=6;
    //TAU=1/EPSILON; TAU_starr=1/EPSILON;

    RHOA=0.85;
    RHOXI=0.85;


model; 
// EQUILIBRIUM CONDITION

1-1/EPSILON=(1-TAU)*XI/A*(N/h)^PHI*(C/h)/(1-CHI)*S^ALPHA;
1-1/EPSILON=(1-TAU_starr)*XI_starr/A_starr*(N_starr/(1-h))^PHI*(C_starr/(1-h))/(1-CHI)*S^(-ALPHA_starr);

C/h=C_starr/(1-h)*S^(1-ALPHA_bar);

Y=S^ALPHA*C+G;
Y_starr=S^(-ALPHA_starr)*C_starr+G_starr;
//Y=(1-ALPHA)*S^ALPHA*C+ALPHA_starr*S^(1-ALPHA_starr)*C_starr+G; REDONDANT
//Y_starr=ALPHA*S^(ALPHA-1)*C+(1-ALPHA_starr)*S^(-ALPHA_starr)*C_starr+G_starr;REDONDANT


// EXO PROCESS
A=A(-1)^RHOA*exp(eps_a);
XI=XI(-1)^RHOXI*exp(eps_xi);
A_starr=A_starr(-1)^RHOA*exp(eps_a_starr);
XI_starr=XI_starr(-1)^RHOXI*exp(eps_xi_starr);

//G=CHI*Y;
//G_starr=CHI*Y_starr;

// Output
Y=A*N;
Y_starr=A_starr*N_starr;

//G cap
G_cap=G/h;
G_cap_starr=G_starr/(1-h);
C_cap=C/h;
C_cap_starr=C_starr/(1-h);
N_cap=N/h;
N_cap_starr=N_starr/(1-h);


end;
shocks;
var eps_a = 0; 
var eps_a_starr = 1; 
var eps_xi = 0; 
var eps_xi_starr = 0; 
end;

//steady_state_model;
initval;
S=1;
TAU=1/EPSILON; TAU_starr=1/EPSILON;
A=1;
A_starr=1;
XI=1;
XI_starr=1;
N=h;
N_starr=(1-h)*N/h;
Y=N;
Y_starr=N_starr;
C=(1-CHI)*Y;
G=CHI*Y;
C_starr=(1-CHI)*Y_starr;
G_starr=CHI*Y_starr;
G_cap=G/h;
G_cap_starr=G_starr/(1-h);
C_cap=C/h;
C_cap_starr=C_starr/(1-h);
N_cap=N/h;
N_cap_starr=N_starr/(1-h);
end;


planner_objective h*((1-CHI)*log(C_cap)+CHI*log(G_cap)-XI*N_cap^(1+PHI)/(1+PHI))+(1-h)*((1-CHI)*log(C_cap_starr)+CHI*log(G_cap_starr)-XI_starr*N_cap_starr^(1+PHI)/(1+PHI));


ramsey_model(instruments=(C_cap,N_cap,G_cap,C_cap_starr,N_cap_starr,G_cap_starr,TAU,TAU_starr),planner_discount=BETA);
//ramsey_model(instruments=(G_cap,G_cap_starr,TAU,TAU_starr),planner_discount=BETA);



resid(1);
steady;
stoch_simul(order=1,irf=30);



