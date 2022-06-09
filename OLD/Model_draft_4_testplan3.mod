var
   C C_H C_F N G A XI
   C_starr C_H_starr C_F_starr N_starr G_starr A_starr XI_starr
;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_xi      ${\varepsilon_xi}$      (long_name='labor disutility shock')
  eps_a_starr
  eps_xi_starr
;

parameters 
    
    SIGMA ALPHA_bar BETA PHI h ALPHA ALPHA_starr ETA GAMMA CHI EPSILON  RHOA RHOXI 
    ;
    
    SIGMA = 3;
    ALPHA_bar = 0.7;
    BETA = 0.99;
    PHI = 2;
    h = 0.9;
    ALPHA = ALPHA_bar*(1-h);
    ALPHA_starr = ALPHA_bar*h;
    ETA=4.5;
    GAMMA=1;
    CHI=0.03;
    EPSILON=11;

    RHOA=0.8;
    RHOXI=0.8;


model; 

C_H+C_H_starr+G=A*N;
//C=h*((1-ALPHA)^(1/ETA)*(C_H/h)^((ETA-1)/ETA)+ALPHA^(1/ETA)*(C_F/h)^((ETA-1)/ETA))^(ETA/(ETA-1));

C_F+C_F_starr+G_starr=A_starr*N_starr;
//C_starr=(1-h)*(ALPHA_starr^(1/ETA)*(C_H_starr/(1-h))^((ETA-1)/ETA)+(1-ALPHA_starr)^(1/ETA)*(C_F_starr/(1-h))^((ETA-1)/ETA))^(ETA/(ETA-1));

A=A(-1)^RHOA*exp(eps_a);
A_starr=A_starr(-1)^RHOA*exp(eps_a_starr);

XI=XI(-1)^RHOXI*exp(eps_xi);
XI_starr=XI_starr(-1)^RHOXI*exp(eps_xi_starr);

// Optimal alloc
C_H=(1-ALPHA)*C;
C_F=ALPHA*C;
C_F_starr=(1-ALPHA_starr)*C_starr;
C_H_starr=ALPHA_starr*C_starr;

// IRS
//C/h=C_starr/(1-h);

//N^PHI*C^(SIGMA)/(h^(SIGMA+PHI))=N_starr^PHI*C_starr^(SIGMA)/((1-h)^(SIGMA+PHI));


end;

shocks;
var eps_a = 1; 
var eps_xi = 0; 
var eps_a_starr = 0; 
var eps_xi_starr = 0; 
end;

//initval;
//N=h;N_starr=1-h;
//end;

steady_state_model;
A=1;A_starr=1;XI=1;XI_starr=1;
end;


planner_objective h*((C/h)^(1-SIGMA)/(1-SIGMA)+CHI*G^(1-GAMMA)/(1-GAMMA)-(N/h)^(1+PHI)/(1+PHI))+(1-h)*((C_starr/(1-h))^(1-SIGMA)/(1-SIGMA)+CHI*G_starr^(1-GAMMA)/(1-GAMMA)-XI_starr*(N_starr/(1-h))^(1+PHI)/(1+PHI));
ramsey_model(instruments=(C,C_starr,N,G,N_starr,G_starr),planner_discount=BETA);

//check;
steady;

//stoch_simul(order=1,irf=30);
//evaluate_planner_objective;
