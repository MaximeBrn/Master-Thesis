var
   //a           ${a}$        (long_name='Home technology shock process (log dev ss)')
   //xi
    y_nat       
    g_nat
    c_nat

    //a_starr     ${a^*}$     (long_name='Foreign technology shock process (log dev ss)')
    //xi_starr
    y_nat_starr
    g_nat_starr
    c_nat_starr
    
    s_nat

;       

model(linear); 


//Flexible price (or efficient) conditions

0=xi+SIGMA*c_nat+PHI*y_nat+ALPHA*s_nat-(1+PHI)*a; // EQUAL MC
0=xi_starr+SIGMA*c_nat_starr+PHI*y_nat_starr-ALPHA_starr*s_nat-(1+PHI)*a_starr; // EQUAL MC_starr
SIGMA*c_nat=(1-ALPHA_bar)*s_nat+SIGMA*c_nat_starr; // IRS
c_nat=1/(1-DELTA)*(y_nat-DELTA*g_nat)-(W_ALPHA_bar+ALPHA_bar-1)/SIGMA*s_nat; // GOOD MARKET CLEARING 
c_nat_starr=1/(1-DELTA)*(y_nat_starr-DELTA*g_nat_starr)+W_ALPHA_bar_starr/SIGMA*s_nat; // GOOD MARKET CLEARING

//g_nat=0;
//g_nat_starr=0;

GAMMA*g_nat=-xi-PHI*y_nat+(1+PHI)*a;
GAMMA*g_nat_starr=-xi_starr-PHI*y_nat_starr+(1+PHI)*a_starr;

//h*g_nat+(1-h)*g_nat_starr=0;
//GAMMA*g_nat/h=-xi-PHI*y_nat+(1+PHI)*a;

end;

steady_state_model;
//a=0;
//xi=0;
y_nat=0;
g_nat=0;
c_nat=0;
//a_starr=0;
//xi_starr=0;
y_nat_starr=0;
g_nat_starr=0;
c_nat_starr=0;
s_nat=0;
end;


//planner_objective 1/2*h*(PHI*y_nat^2+GAMMA*DELTA*g_nat^2+SIGMA*(1-DELTA)*c_nat^2)+1/2*(1-h)*(PHI*y_nat_starr^2+GAMMA*DELTA*g_nat_starr^2+SIGMA*(1-DELTA)*c_nat_starr^2);
//ramsey_model(instruments=(g_nat,g_nat_starr),planner_discount=BETA);




