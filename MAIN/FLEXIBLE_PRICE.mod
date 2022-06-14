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
0 = GAMMA_tilde*DELTA*g_nat + PHI*y_nat - (1+PHI)*a;
0 = GAMMA_tilde*DELTA*g_nat_starr + PHI*y_nat_starr - (1+PHI)*a_starr;
SIGMA_tilde*y_nat = (SIGMA_tilde+GAMMA_tilde)*DELTA*g_nat + W_ALPHA_bar*s_nat;
SIGMA_tilde*y_nat_starr = (SIGMA_tilde+GAMMA_tilde)*DELTA*g_nat_starr - W_ALPHA_bar*s_nat;
s_nat = GAMMA*(g_nat-g_nat_starr);
SIGMA_tilde*(y_nat-DELTA*g_nat)=SIGMA_tilde*c_nat+ALPHA_bar*(1-h)*(1+W_ALPHA_bar)*s_nat;
SIGMA_tilde*(y_nat_starr-DELTA*g_nat_starr)=SIGMA_tilde*c_nat_starr-ALPHA_bar*h*(1+W_ALPHA_bar)*s_nat;


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





