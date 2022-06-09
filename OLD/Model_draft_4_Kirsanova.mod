var
   Y G C
   Y_starr G_starr C_starr

   S Q
    
   g_S g_S_starr
   h_S h_S_starr
  
  

   x y z t u 

   A XI A_starr XI_starr

;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_a_starr
  eps_xi
  eps_xi_starr

;

parameters 
    
    SIGMA ALPHA_bar BETA PHI h ALPHA ALPHA_starr GAMMA CHI RHOA 
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
    GAMMA=1;
    CHI=0.03;
    ETA=4.5;

    RHOA=0.85;
    RHOXI=0.85;


model; 


Y = (1-ALPHA)*g_S^ETA*C+ALPHA_starr*g_S_starr^ETA*C_starr+G;
Y_starr = ALPHA*h_S^ETA*C+(1-ALPHA_starr)*h_S^ETA*C_starr+G_starr;
C=h/(1-h)*(g_S_starr/g_S)^(1/SIGMA)*C_starr;
1=XI/(A^(1+PHI))*(Y/h)^PHI+(C/h)^SIGMA*g_S;
1=XI/(A_starr^(1+PHI))*(Y_starr/(1-h))^PHI+(C_starr/(1-h))^SIGMA*h_S_starr;

z=(1-ALPHA)*g_S^ETA*x+ALPHA_starr*g_S_starr*y+ETA*S^(-ETA)*((1-ALPHA)*ALPHA*g_S^(2*ETA-1)*C+ALPHA_starr*(1-ALPHA_starr)*g_S_starr^(2*ETA-1)*C_starr)*u+1;
t=ALPHA*h_S^ETA*x+(1-ALPHA_starr)*h_S_starr^ETA*y-ETA*S^(ETA-2)*(ALPHA*(1-ALPHA)*h_S^(2*ETA-1)*C+(1-ALPHA_starr)*ALPHA_starr*h_S_starr^(2*ETA-1)*C_starr)*u;
x=h/(1-h)*1/SIGMA*S^(-ETA-2)*((1-ALPHA_starr)*g_S_starr^ETA*g_S-ALPHA*g_S^ETA*g_S_starr)*Q^((1-SIGMA)/SIGMA)*C_starr*u+h/(1-h)*Q^(1/SIGMA)*y;
PHI*g_S*1/Y*z+SIGMA*g_S*1/C*x+ALPHA*S^(-ETA)*g_S^(ETA)*u=0;
PHI*h_S_starr*1/Y_starr*t+SIGMA*h_S_starr*1/C_starr*y-ALPHA_starr*S^(ETA-2)*h_S_starr^ETA*u=0;

h*(C^(-SIGMA)*x+Y^PHI*XI/(A^(1+PHI))*z+CHI*G^(-GAMMA))+(1-h)*(C_starr^(-SIGMA)*y+Y^PHI*XI_starr/(A_starr^(1+PHI))*t)=0;

g_S=(1-ALPHA+ALPHA*S^(1-ETA))^(1/(1-ETA));
g_S_starr=(ALPHA_starr+(1-ALPHA_starr)*S^(1-ETA))^(1/(1-ETA));
h_S=g_S/S;
g_S_starr=g_S/S;

Q=g_S_starr/g_S;

S=g_S/h_S;


// EXO PROCESS
A=A(-1)^RHOA*exp(eps_a);
XI=XI(-1)^RHOXI*exp(eps_xi);
A_starr=A_starr(-1)^RHOA*exp(eps_a_starr);
XI_starr=XI_starr(-1)^RHOXI*exp(eps_xi_starr);

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
Q=1;S=1;g_S=1;h_S_starr=1;h_S=1;h_S_starr=1;
Y=res(1);
Y_starr=res(2);

C=h*((1-ALPHA)*(Y/h)^PHI+ALPHA*(Y_starr/(1-h))^PHI)^(-1/SIGMA);
C_starr=(1-h)*(ALPHA_starr*(Y/h)^PHI+(1-ALPHA_starr)*(Y_starr/(1-h))^PHI)^(-1/SIGMA);
G=h*(1/CHI*(Y/h)^PHI)^(-1/GAMMA);
G_starr=(1-h)*(1/CHI*(Y_starr/(1-h))^PHI)^(-1/GAMMA);
u=0;x=0;y=0;z=1;t=0;
end;

//planner_objective h*((C/h)^(1-SIGMA)/(1-SIGMA)+CHI*G^(1-GAMMA)/(1-GAMMA)-(N/h)^(1+PHI)/(1+PHI))+(1-h)*((C_starr/(1-h))^(1-SIGMA)/(1-SIGMA)+CHI*G_starr^(1-GAMMA)/(1-GAMMA)-XI_starr*(N_starr/(1-h))^(1+PHI)/(1+PHI));
//ramsey_model(instruments=(G,G_starr),planner_discount=BETA);


resid(1);
//steady(solve_algo=2,maxit=1000);

stoch_simul(order=1,irf=30);
//evaluate_planner_objective;

