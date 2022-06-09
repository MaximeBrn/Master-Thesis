var
   C  N Y G A XI 
   C_starr N_starr Y_starr G_starr A_starr XI_starr 
  
   G_cap G_cap_starr C_cap C_cap_starr N_cap N_cap_starr
   S

   g_S h_S
   g_S_starr h_S_starr 

  TAU
;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_a_starr
  eps_xi
  eps_xi_starr

;

parameters 
    
    SIGMA ALPHA_bar BETA PHI h ALPHA ALPHA_starr GAMMA CHI RHOA EPSILON 

    //TAU
    RHOXI 
    ETA
    ;
    
    SIGMA = 3;
    ALPHA_bar = 0.13;
    BETA = 0.99;
    PHI = 1;
    h = 0.5;
    ALPHA=ALPHA_bar*(1-h);
    ALPHA_starr = ALPHA_bar*h;
    GAMMA=3;
    CHI=0.03;
    ETA=4.5;
    EPSILON=6;
    //TAU=1/EPSILON;

    RHOA=0.85;
    RHOXI=0.85;


model; 
// EQUILIBRIUM CONDITION

1-1/EPSILON=(1-TAU)*XI/A*(N/h)^PHI*(C/h)^SIGMA*g_S;
1-1/EPSILON=(1-TAU)*XI_starr/A_starr*(N_starr/(1-h))^PHI*(C_starr/(1-h))^SIGMA*h_S_starr;

C/h=C_starr/(1-h)*(g_S_starr/g_S)^(1/SIGMA);

Y/h=(1-ALPHA)*g_S^ETA*C/h+ALPHA*g_S_starr^ETA*C_starr/(1-h)+G/h;
Y_starr/(1-h)=ALPHA_starr*h_S^ETA*C/h+(1-ALPHA_starr)*h_S_starr^ETA*C_starr/(1-h)+G_starr/(1-h);

g_S=(1-ALPHA+ALPHA*S^(1-ETA))^(1/(1-ETA));
h_S=g_S/S;
g_S_starr=(ALPHA_starr+(1-ALPHA_starr)*S^(1-ETA))^(1/(1-ETA));
h_S_starr=g_S_starr/S;

// EXO PROCESS
A=A(-1)^RHOA*exp(eps_a);
XI=XI(-1)^RHOXI*exp(eps_xi);
A_starr=A_starr(-1)^RHOA*exp(eps_a_starr);
XI_starr=XI_starr(-1)^RHOXI*exp(eps_xi_starr);

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


//CHI*(G/h)^(-GAMMA)=XI/A*(N/h)^PHI;
//CHI*(G_starr/(1-h))^(-GAMMA)=XI_starr/A_starr*(N_starr/(1-h))^PHI;

end;
shocks;
var eps_a = 0; 
var eps_a_starr = 1; 
var eps_xi = 0; 
var eps_xi_starr = 0; 
end;

res=Model_draft_4_testplan5_steadystate_helper([h,1-h],PHI,SIGMA,GAMMA,CHI,ALPHA,ALPHA_starr,h);

//steady_state_model;
initval;
A=1;A_starr=1;XI=1;XI_starr=1;
S=1;
//TAU=1/EPSILON;
g_S=1;h_S=1;g_S_starr=1;h_S_starr=1;
N=res(1);
N_starr=res(2);
Y=N;Y_starr=N_starr;
C=h*((1-ALPHA)*(N/h)^PHI+ALPHA*(N_starr/(1-h))^PHI)^(-1/SIGMA);
C_starr=(1-h)*(ALPHA_starr*(N/h)^PHI+(1-ALPHA_starr)*(N_starr/(1-h))^PHI)^(-1/SIGMA);
G=h*(1/CHI*(N/h)^PHI)^(-1/GAMMA);
G_starr=(1-h)*(1/CHI*(N_starr/(1-h))^PHI)^(-1/GAMMA);
G_cap=G/h;
G_cap_starr=G_starr/(1-h);

end;

planner_objective h*((C/h)^(1-SIGMA)/(1-SIGMA)+CHI*(G/h)^(1-GAMMA)/(1-GAMMA)-(N/h)^(1+PHI)/(1+PHI))+(1-h)*((C_starr/(1-h))^(1-SIGMA)/(1-SIGMA)+CHI*(G_starr/(1-h))^(1-GAMMA)/(1-GAMMA)-XI_starr*(N_starr/(1-h))^(1+PHI)/(1+PHI));
//ramsey_model(instruments=(C_cap,N_cap,G_cap,C_cap_starr,N_cap_starr,G_cap_starr),planner_discount=BETA);
ramsey_model(instruments=(C_cap,N_cap,G_cap,C_cap_starr,N_cap_starr,G_cap_starr,TAU),planner_discount=BETA);


resid(1);
steady;
//steady(solve_algo=2,maxit=1000);

stoch_simul(order=1,irf=30);
//evaluate_planner_objective;

