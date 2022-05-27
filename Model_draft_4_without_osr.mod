var
    a           ${a}$        (long_name='Home technology shock process (log dev ss)')
    xi          ${xi}$       (long_name='Home labor disutility shock process (log dev ss)')
    y           ${y}$        (long_name='Home output (log dev ss)')
    pie
    g           ${g}$        (long_name='Home government consumption (log dev ss)')
    
    a_starr     ${a^*}$     (long_name='Foreign technology shock process (log dev ss)')
    xi_starr    ${xi^*}$    (long_name='Foreign labor disutility shock process (log dev ss)')
    y_starr     ${y^*}$     (long_name='Foreign output (log dev ss)')
    pie_starr
    g_starr     ${g^*}$     (long_name='Foreign government consumption (log dev ss)')
    

    ii           ${i}$                   (long_name='nominal interest rate (log dev ss)')
    s           ${s}$                   (long_name='terms of trade (log dev ss)')
    pie_cu
    y_cu
;     

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_xi      ${\varepsilon_xi}$      (long_name='labor disutility shock')
  eps_a_starr
  eps_xi_starr
;

parameters 
    
    SIGMA ALPHA_bar DELTA BETA PHI h THETA THETA_starr W_ALPHA_bar LAMBDA
    W_ALPHA_bar_starr LAMBDA_starr ETA RHOA RHOXI 
    CHI
    ;
    
    SIGMA = 2;
    ALPHA_bar = 0.5;
    DELTA = 0.2;
    BETA = 0.99;
    PHI = 3;
    h = 0.99;
    THETA = 0.99;
    THETA_starr = 0.99;
    ETA=1;
    CHI=0.03;

    W_ALPHA_bar = 1-ALPHA_bar*h+(1-h)*ALPHA_bar*(2-ALPHA_bar)*(SIGMA*ETA-1);
    LAMBDA = (1-THETA)*(1-THETA*BETA)/THETA;
 
    W_ALPHA_bar_starr = ALPHA_bar*h*(1+(2-ALPHA_bar)*(SIGMA*ETA-1));
    LAMBDA_starr = (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;

    RHOA=0.8;
    RHOXI=0.8;

model(linear); 

[name='Home Dynamic IS Curve']
y = y(+1) - 1/SIGMA*(ii-pie(+1))+(1-ALPHA_bar*h-W_ALPHA_bar)/SIGMA*(s(+1)-s)-DELTA*(g(+1)-g);

[name='Home New Keynesian Phillips Curve']
pie=BETA*pie(+1)+LAMBDA*(xi+(SIGMA/(1-DELTA)+PHI)*y-SIGMA*DELTA/(1-DELTA)*g+(1-ALPHA_bar*h-W_ALPHA_bar)*s-(1+PHI)*a);

[name='Foreign Dynamic IS Curve']
y_starr = y_starr(+1) - 1/SIGMA*(ii-pie_starr(+1))+(W_ALPHA_bar_starr-ALPHA_bar*h)/SIGMA*(s(+1)-s)-DELTA*(g_starr(+1)-g_starr);

[name='Foreign New Keynesian Phillips Curve']
pie_starr=BETA*pie_starr(+1)+LAMBDA_starr*(xi_starr+(SIGMA/(1-DELTA)+PHI)*y_starr-SIGMA*DELTA/(1-DELTA)*g_starr+(W_ALPHA_bar_starr-ALPHA_bar*h)*s-(1+PHI)*a_starr);

[name='IRS']
s = SIGMA/((1-DELTA)*(W_ALPHA_bar-W_ALPHA_bar_starr))*(y-y_starr-DELTA*(g-g_starr));

[name='TFP process']
a=RHOA*a(-1)+eps_a;

[name='Labor disutility shifter']
xi =RHOXI*xi(-1) + eps_xi;

[name='TFP process']
a_starr=RHOA*a_starr(-1)+eps_a_starr;

[name='Labor disutility shifter']
xi_starr = RHOXI*xi_starr(-1) + eps_xi_starr;

[name='Currency union inflation']
pie_cu = h*pie+(1-h)*pie_starr;

[name='Currency union output']
y_cu = h*y+(1-h)*y_starr;

end;

shocks;
var eps_a = 1; 
var eps_xi = 0; 
var eps_a_starr = 0; 
var eps_xi_starr = 0; 
end;

steady_state_model;
a=0; xi=0; y=0; g=0; pie=0; a_starr=0; xi_starr=0; y_starr=0; g_starr=0; pie_starr=0; ii=0; s=0;pie_cu=0;
end;

planner_objective h*(1/LAMBDA*pie^2+(1+PHI)*(y-a)^2+CHI*g^2)+(1-h)*(1/LAMBDA_starr*pie_starr^2+(1+PHI)*(y_starr-a_starr)^2+CHI*g_starr^2);
ramsey_model(instruments=(ii,g,g_starr),planner_discount=BETA);

stoch_simul(order=1,irf=30);
//evaluate_planner_objective;
