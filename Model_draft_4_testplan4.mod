var
   C  N G A XI
   C_starr N_starr G_starr A_starr XI_starr
   
   //Y Y_starr
   //U U_starr U_cu
;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_a_starr
  eps_xi
  eps_xi_starr

;

parameters 
    
    SIGMA ALPHA_bar BETA PHI h ALPHA ALPHA_starr ETA GAMMA CHI RHOA 
    RHOXI 
    ;
    
    SIGMA = 3;
    ALPHA_bar = 0.5;
    BETA = 0.99;
    PHI = 4.5;
    h = 0.9;
    ALPHA = ALPHA_bar*(1-h);
    ALPHA_starr = ALPHA_bar*h;
    ETA=4.5;
    GAMMA=1;
    CHI=0.2;

    RHOA=0.85;
    RHOXI=0.85;


model; 
// FOC OF THE PLANNER

h*(C/h)^(-SIGMA)=(1-ALPHA)*h*CHI*(G/h)^(-GAMMA)+ALPHA*(1-h)*CHI*(G_starr/(1-h))^(-GAMMA);
(1-h)*(C_starr/(1-h))^(-SIGMA)=ALPHA_starr*h*CHI*(G/h)^(-GAMMA)+(1-ALPHA_starr)*(1-h)*CHI*(G_starr/(1-h))^(-GAMMA);

XI/A*(N/h)^PHI=CHI*(G/h)^(-GAMMA);
XI_starr/A_starr*(N_starr/(1-h))^PHI=CHI*(G_starr/(1-h))^(-GAMMA);

(1-ALPHA)*C+ALPHA_starr*C_starr+G=A*N;
ALPHA*C+(1-ALPHA_starr)*C_starr+G_starr=A_starr*N_starr;

// EXO PROCESS
A=A(-1)^RHOA*exp(eps_a);
A_starr=A_starr(-1)^RHOA*exp(eps_a_starr);
XI=XI(-1)^RHOXI*exp(eps_xi);
XI_starr=XI_starr(-1)^RHOXI*exp(eps_xi_starr);


// Output
//Y=A*N;
//Y_starr=A_starr*N_starr;

// Utils
//U_cu=h*((C/h)^(1-SIGMA)/(1-SIGMA)+CHI*G^(1-GAMMA)/(1-GAMMA)-(N/h)^(1+PHI)/(1+PHI))+(1-h)*((C_starr/(1-h))^(1-SIGMA)/(1-SIGMA)+CHI*G_starr^(1-GAMMA)/(1-GAMMA)-XI_starr*(N_starr/(1-h))^(1+PHI)/(1+PHI));
//U=(C/h)^(1-SIGMA)/(1-SIGMA)+CHI*G^(1-GAMMA)/(1-GAMMA)-(N/h)^(1+PHI)/(1+PHI);
//U_starr=(C_starr/(1-h))^(1-SIGMA)/(1-SIGMA)+CHI*G_starr^(1-GAMMA)/(1-GAMMA)-XI_starr*(N_starr/(1-h))^(1+PHI)/(1+PHI);

end;
shocks;
var eps_a = 0; 
var eps_a_starr = 0; 
var eps_xi = 0; 
var eps_xi_starr = 1; 
end;


//steady_state_model;
initval;
A=1;A_starr=1;XI=1;XI_starr=1;N=h;N_starr=(1-h)*N/h;G=h*((N/h)^PHI/CHI)^(-1/GAMMA);G_starr=G/N*N_starr;C=N-G;C_starr=(1-h)/h*C;
//A=1;A_starr=1;XI=1;XI_starr=1;N=1;N_starr=(1-h)/h*N;C=h*((1-ALPHA)*h/h*(N/h)^PHI+ALPHA*(1-h)/h*(N_starr/(1-h))^PHI)^(-1/SIGMA);C_starr=(1-h)/h*C;G=N-C;G_starr=N_starr-C_starr;

end;

//steady_state_model;
//A=1;A_starr=1;XI=1;XI_starr=1;
//end;

resid(1);
steady;

//stoch_simul(order=1,irf=30);
//evaluate_planner_objective;

