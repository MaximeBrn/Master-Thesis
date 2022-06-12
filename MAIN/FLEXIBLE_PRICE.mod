var
    y_nat           ${\hat {\bar y}_t}$        (long_name='Home natural output (log dev ss)')   
    g_nat           ${\hat {\bar g}_t}$        (long_name='Home natural government spending (log dev ss)') 
    c_nat           ${\hat {\bar c}_t}$        (long_name='Home natural consumption (log dev ss)')
    c_H_nat         ${\hat {\bar c}_{H,t}}$     (long_name='Home natural consumption of Home-made goods (log dev ss)')
    c_F_nat         ${\hat {\bar c}_{F,t}}$     (long_name='Home natural consumption of Foreign-made goods (log dev ss)')

    y_nat_starr     ${\hat {\bar y}_t^*}$        (long_name='Foreign natural output (log dev ss)')
    g_nat_starr     ${\hat {\bar g}_t^*}$        (long_name='Foreign natural government spending (log dev ss)') 
    c_nat_starr     ${\hat {\bar c}_t^*}$        (long_name='Foreign natural consumption (log dev ss)')
    c_H_nat_starr   ${\hat {\bar c}_{H,t}^*}$   (long_name='Foreign natural consumption of Home-made goods (log dev ss)')
    c_F_nat_starr   ${\hat {\bar c}_{F,t}^*}$   (long_name='Foreign natural consumption of Foreign-made goods (log dev ss)')
   
    s_nat           ${\bar s_t}$        (long_name='Home natural terms of trade (log dev ss)')


;       

model(linear); 

// PLANNER LINEARIZED

c_H_nat = ETA*GAMMA*g_nat - (1-SIGMA*ETA)*c_nat;
c_F_nat = ETA*GAMMA*g_nat_starr - (1-SIGMA*ETA)*c_nat;
c_F_nat_starr = ETA*GAMMA*g_nat_starr - (1-SIGMA*ETA)*c_nat_starr;
c_H_nat_starr = ETA*GAMMA*g_nat - (1-SIGMA*ETA)*c_nat_starr;
//PHI*y_nat = (1+PHI)*a - GAMMA*g_nat;
//PHI*y_nat_starr = (1+PHI)*a_starr - GAMMA*g_nat_starr;
//y_nat = (1-ALPHA)*(1-DELTA)*c_H_nat + ALPHA*(1-DELTA)*c_H_nat_starr + DELTA*g_nat;
//y_nat_starr = ALPHA_starr*(1-DELTA)*c_F_nat + (1-ALPHA_starr)*(1-DELTA)*c_F_nat_starr + DELTA*g_nat_starr;
//c_nat = (1-ALPHA)*c_H_nat + ALPHA*c_F_nat;
//c_nat_starr = ALPHA_starr*c_H_nat_starr + (1-ALPHA_starr)*c_F_nat_starr;

//(1-ALPHA_bar)*s_nat = SIGMA*(c_nat-c_nat_starr);

0 = GAMMA_tilde*DELTA*g_nat + PHI*y_nat - (1+PHI)*a;
0 = GAMMA_tilde*DELTA*g_nat_starr + PHI*y_nat_starr - (1+PHI)*a_starr;
SIGMA_tilde*y_nat = (SIGMA_tilde+GAMMA_tilde)*DELTA*g_nat + W_ALPHA_bar*s_nat;
SIGMA_tilde*y_nat_starr = (SIGMA_tilde+GAMMA_tilde)*DELTA*g_nat_starr - W_ALPHA_bar*s_nat;
s_nat = GAMMA*(g_nat-g_nat_starr);
SIGMA_tilde*(y_nat-DELTA*g_nat)=SIGMA_tilde*c_nat+ALPHA_bar*(1-h)*(1+W_ALPHA_bar)*s_nat;
SIGMA_tilde*(y_nat_starr-DELTA*g_nat_starr)=SIGMA_tilde*c_nat_starr-ALPHA_bar*h*(1+W_ALPHA_bar)*s_nat;


//0=xi+SIGMA*c_nat+PHI*y_nat+ALPHA*s_nat-(1+PHI)*a; // EQUAL MC
//0=xi_starr+SIGMA*c_nat_starr+PHI*y_nat_starr-ALPHA_starr*s_nat-(1+PHI)*a_starr; // EQUAL MC_starr
//SIGMA*c_nat=(1-ALPHA_bar)*s_nat+SIGMA*c_nat_starr; // IRS
//c_nat=1/(1-DELTA)*(y_nat-DELTA*g_nat)-(W_ALPHA_bar+ALPHA_bar-1)/SIGMA*s_nat; // GOOD MARKET CLEARING 
//c_nat_starr=1/(1-DELTA)*(y_nat_starr-DELTA*g_nat_starr)+W_ALPHA_bar_starr/SIGMA*s_nat; // GOOD MARKET CLEARING

//GAMMA*g_nat=SIGMA*c_nat+ALPHA*s_nat;
//GAMMA*g_nat_starr=SIGMA*c_nat_starr-ALPHA_starr*s_nat;

//g_nat=COEF_y_natH*y_nat+ COEF_y_natF*y_nat_starr+ COEF_c_natH*c_nat+ COEF_c_natF*c_nat_starr+ COEF_aH*a+ COEF_aF*a_starr+ COEF_xiH*xi+ COEF_xiF*xi_starr+ COEF_s_nat*s_nat;
//g_nat_starr=COEF_y_natH_starr*y_nat+ COEF_y_natF_starr*y_nat_starr+ COEF_c_natH_starr*c_nat+ COEF_c_natF_starr*c_nat_starr+ COEF_aH_starr*a+ COEF_aF_starr*a_starr+ COEF_xiH_starr*xi+ COEF_xiF_starr*xi_starr+ COEF_s_nat_starr*s_nat;

//g_nat=SIGMA_tilde/(GAMMA+SIGMA_tilde*DELTA)*(y_nat-(W_ALPHA_bar+ALPHA_bar-1)*s_nat);
//g_nat_starr=SIGMA_tilde/(GAMMA+SIGMA_tilde*DELTA)*(y_nat_starr+W_ALPHA_bar_starr*s_nat);

//SIGMA*c_nat=GAMMA*ALPHA*CHI*(g_nat-g_nat_starr);
//SIGMA*c_nat_starr=GAMMA*ALPHA_starr*CHI*(g_nat_starr-g_nat);


//g_nat=0;
//g_nat_starr=0;

//GAMMA*g_nat=-xi-PHI*y_nat+(1+PHI)*a;
//GAMMA*g_nat_starr=-xi_starr-PHI*y_nat_starr+(1+PHI)*a_starr;

//h*g_nat+(1-h)*g_nat_starr=0;
//GAMMA*g_nat/h=-xi-PHI*y_nat+(1+PHI)*a;


//PLANNER LINEARIZED
//SIGMA*c_nat=(1-ALPHA)*GAMMA*g_nat+ALPHA*GAMMA*g_nat_starr; //MRS CONS = MRS GOV
//SIGMA*c_nat_starr=ALPHA_starr*GAMMA*g_nat+(1-ALPHA_starr)*GAMMA*g_nat_starr; //MRS CONS = MRS GOV
//-GAMMA*g_nat=xi+PHI*y_nat-(1+PHI)*a; // MRS GOV = MRS LABOR
//-GAMMA*g_nat_starr=xi_starr+PHI*y_nat_starr-(1+PHI)*a_starr; // MRS GOV = MRS LABOR


//c_nat=1/(1-DELTA)*(y_nat-DELTA*g_nat)-(W_ALPHA_bar+ALPHA_bar-1)/SIGMA*s_nat; // GOOD MARKET CLEARING FLEX
//c_nat_starr=1/(1-DELTA)*(y_nat_starr-DELTA*g_nat_starr)+W_ALPHA_bar_starr/SIGMA*s_nat; // GOOD MARKET CLEARING FLEX
//SIGMA*c_nat=(1-ALPHA_bar)*s_nat+SIGMA*c_nat_starr; // IRS

//y_nat=(1-ALPHA)*(1-DELTA)*c_nat+ALPHA*(1-DELTA)*c_nat_starr+DELTA*g_nat; // GOOD MARKET CLEARING PLAN
//y_nat_starr=ALPHA_starr*(1-DELTA)*c_nat+(1-ALPHA_starr)*(1-DELTA)*c_nat_starr+DELTA*g_nat; // GOOD MARKET CLEARING PLAN
//SIGMA*c_nat=SIGMA*c_nat_starr; // IRS PLAN


end;

steady_state_model;

y_nat=0;
g_nat=0;
c_nat=0;
c_H_nat=0;
c_F_nat=0;
y_nat_starr=0;
g_nat_starr=0;
c_nat_starr=0;
c_H_nat_starr=0;
c_F_nat_starr=0;
s_nat=0;
end;





