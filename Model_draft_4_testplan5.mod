var
   C  N Y G A XI 
   C_starr N_starr Y_starr G_starr A_starr XI_starr 
   
   LAMBDA_1
   LAMBDA_2

   c n g a xi y
   c_starr n_starr g_starr a_starr xi_starr y_starr
   
   //s


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
    ;
    
    SIGMA = 3;
    ALPHA_bar = 0.13;
    BETA = 0.99;
    PHI = 1;
    h = 0.8;
    ALPHA=ALPHA_bar*(1-h);
    ALPHA_starr = ALPHA_bar*h;
    GAMMA=1;
    CHI=0.03;

    RHOA=0.85;
    RHOXI=0.85;


model; 
// FOC OF THE PLANNER

h*(C/h)^(-SIGMA)=(1-ALPHA)*LAMBDA_1+ALPHA_starr*LAMBDA_2;
h*XI*(N/h)^PHI=A*LAMBDA_1;
h*CHI*(G/h)^(-GAMMA)=LAMBDA_1;

(1-h)*(C_starr/(1-h))^(-SIGMA)=ALPHA*LAMBDA_1+(1-ALPHA_starr)*LAMBDA_2;
(1-h)*XI_starr*(N_starr/(1-h))^PHI=A_starr*LAMBDA_2;
(1-h)*CHI*(G_starr/(1-h))^(-GAMMA)=LAMBDA_2;

// Constraints
(1-ALPHA)*C+ALPHA_starr*C_starr+G=A*N;
ALPHA*C+(1-ALPHA_starr)*C_starr+G_starr=A_starr*N_starr;


// EXO PROCESS
A=A(-1)^RHOA*exp(eps_a);
XI=XI(-1)^RHOXI*exp(eps_xi);
A_starr=A_starr(-1)^RHOA*exp(eps_a_starr);
XI_starr=XI_starr(-1)^RHOXI*exp(eps_xi_starr);

c=log(C)-log(steady_state(C));
n=log(N)-log(steady_state(N));
g=log(G)-log(steady_state(G));
a=log(A)-log(steady_state(A));
xi=log(XI)-log(steady_state(XI));
y=a+n;
c_starr=log(C_starr)-log(steady_state(C_starr));
n_starr=log(N_starr)-log(steady_state(N_starr));
g_starr=log(G_starr)-log(steady_state(G_starr));
a_starr=log(A_starr)-log(steady_state(A_starr));
xi_starr=log(XI_starr)-log(steady_state(XI_starr));
y_starr=a_starr+n_starr;



//s=(1+PHI)*(a-a_starr)-PHI*(y-y_starr)-(xi-xi_starr);

// Output
Y=A*N;
Y_starr=A_starr*N_starr;


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
N=res(1);
N_starr=res(2);
//N=h*Model_draft_4_testplan5_steadystate_helper(1,PHI,SIGMA,GAMMA,CHI,ALPHA,ALPHA_starr);
//N_starr=(1-h)*N/h;
C=h*((1-ALPHA)*(N/h)^PHI+ALPHA*(N_starr/(1-h))^PHI)^(-1/SIGMA);
C_starr=(1-h)*(ALPHA_starr*(N/h)^PHI+(1-ALPHA_starr)*(N_starr/(1-h))^PHI)^(-1/SIGMA);
G=h*(1/CHI*(N/h)^PHI)^(-1/GAMMA);
G_starr=(1-h)*(1/CHI*(N_starr/(1-h))^PHI)^(-1/GAMMA);
g=0;
end;


resid(1);
steady(solve_algo=2,maxit=1000);

stoch_simul(order=1,irf=30);
//evaluate_planner_objective;

