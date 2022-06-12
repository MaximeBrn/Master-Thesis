var
   C C_H C_F N Y G A 
   C_starr C_H_starr C_F_starr N_starr Y_starr G_starr A_starr


;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_a_starr
;

parameters 
    
    SIGMA ALPHA_bar BETA PHI h ALPHA ALPHA_starr GAMMA CHI_G CHI_C RHOA  ETA

    DELTA
   
    ;
    
    SIGMA = 1;
    ALPHA_bar = 0.5;
    BETA = 0.98;
    PHI = 1;
    h = 0.55;
    ALPHA=ALPHA_bar*(1-h);
    ALPHA_starr = ALPHA_bar*h;
    GAMMA=1;
    ETA=4.5;
    
    DELTA=0.03;
    CHI_G=DELTA^GAMMA;
    CHI_C=(1-DELTA)^SIGMA;
    
    RHOA=0.85;

model; 
// FOC OF THE PLANNER

CHI_C*(1-ALPHA)^(1/ETA)*(C_H/h)^(-1/ETA)*(C/h)^(1/ETA-SIGMA)=CHI_G*(G/h)^(-GAMMA);
CHI_C*(ALPHA)^(1/ETA)*(C_F/h)^(-1/ETA)*(C/h)^(1/ETA-SIGMA)=CHI_G*(G_starr/(1-h))^(-GAMMA);
CHI_C*(1-ALPHA_starr)^(1/ETA)*(C_F_starr/(1-h))^(-1/ETA)*(C_starr/(1-h))^(1/ETA-SIGMA)=CHI_G*(G_starr/(1-h))^(-GAMMA);
CHI_C*(ALPHA_starr)^(1/ETA)*(C_H_starr/(1-h))^(-1/ETA)*(C_starr/(1-h))^(1/ETA-SIGMA)=CHI_G*(G/h)^(-GAMMA);
(N/h)^PHI=A*CHI_G*(G/h)^(-GAMMA);
(N_starr/(1-h))^PHI=A_starr*CHI_G*(G_starr/(1-h))^(-GAMMA);
C/h=((1-ALPHA)^(1/ETA)*(C_H/h)^((ETA-1)/ETA)+(ALPHA)^(1/ETA)*(C_F/h)^((ETA-1)/ETA))^(ETA/(ETA-1));
C_starr/(1-h)=((ALPHA_starr)^(1/ETA)*(C_H_starr/(1-h))^((ETA-1)/ETA)+(1-ALPHA_starr)^(1/ETA)*(C_F_starr/(1-h))^((ETA-1)/ETA))^(ETA/(ETA-1));

C_H+C_H_starr+G=Y;
C_F+C_F_starr+G_starr=Y_starr;

Y=A*N;
Y_starr=A_starr*N_starr;

A=A(-1)^RHOA*exp(eps_a);
A_starr=A_starr(-1)^RHOA*exp(eps_a_starr);

end;


shocks;
var eps_a = 0; 
var eps_a_starr = 1;  
end;


steady_state_model;
//initval;
A=1;
A_starr=1;
N=h;
N_starr=1-h;
Y=N;
Y_starr=N_starr;
C=(1-DELTA)*Y;
C_starr=(1-DELTA)*Y_starr;
G=DELTA*Y;
G_starr=DELTA*Y_starr;
C_H=(1-ALPHA)*C;
C_F=ALPHA*C;
C_H_starr=ALPHA_starr*C_starr;
C_F_starr=(1-ALPHA_starr)*C_starr;
end;

resid(1);
//steady(solve_algo=2,maxit=1000);
steady;
stoch_simul(order=1,irf=30);
//evaluate_planner_objective;

