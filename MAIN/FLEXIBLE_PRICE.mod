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

// FLEXIBLE EQUILIBRIUM (7 eq.)

[name='Home natural marginal cost condition']

0=SIGMA*c_nat+PHI*y_nat+ALPHA*s_nat-(1+PHI)*a;

[name='Foreign natural marginal cost condition']

0=SIGMA*c_nat_starr+PHI*y_nat_starr-ALPHA_starr*s_nat-(1+PHI)*a_starr;

[name='Home natural good-market clearing condition']

SIGMA_tilde*(y_nat-DELTA*g_nat)=SIGMA*c_nat+ALPHA_bar*(1-h)*W_ALPHA_bar*s_nat;

[name='Foreign natural good-market clearing condition']

SIGMA_tilde*(y_nat_starr-DELTA*g_nat_starr)=SIGMA*c_nat_starr-ALPHA_bar*h*W_ALPHA_bar*s_nat;

[name='Natural IRS condition']

s_nat=SIGMA_tilde_ALPHA_bar*(y_nat-y_nat_starr-DELTA*(g_nat-g_nat_starr));

[name='Home natural government spending condition']

GAMMA*g_nat=SIGMA*c_nat+ALPHA*s_nat;

[name='Foreign natural government spending condition']

GAMMA*g_nat_starr=SIGMA*c_nat_starr-ALPHA_starr*s_nat;

// CONSUMPTION (4 eq.)

[name='Home natural consumption of Home-made goods']

c_H_nat=ETA*ALPHA*s_nat+c_nat;

[name='Home natural consumption of Foreign-made goods']

c_F_nat=-ETA*(1-ALPHA)*s_nat+c_nat;

[name='Foreign natural consumption of Home-made goods']

c_H_nat_starr=ETA*(1-ALPHA_starr)*s_nat+c_nat_starr;

[name='Foreign natural consumption of Foreign-made goods']

c_F_nat_starr=-ETA*ALPHA_starr*s_nat+c_nat_starr;

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





