var
    a           ${a}$        (long_name='Home technology shock process (log dev ss)')
    xi          ${xi}$       (long_name='Home labor disutility shock process (log dev ss)')
    y           ${y}$        (long_name='Home output (log dev ss)')
    y_nat       
    y_gap
    pie
    g           ${g}$        (long_name='Home government consumption (log dev ss)')
    g_nat
    g_gap 
   
    c_nat c_gap c
    n

    a_starr     ${a^*}$     (long_name='Foreign technology shock process (log dev ss)')
    xi_starr    ${xi^*}$    (long_name='Foreign labor disutility shock process (log dev ss)')
    y_starr     ${y^*}$     (long_name='Foreign output (log dev ss)')
    y_nat_starr
    y_gap_starr 
    pie_starr
    g_starr     ${g^*}$     (long_name='Foreign government consumption (log dev ss)')
    g_nat_starr
    g_gap_starr
    c_nat_starr c_gap_starr  c_starr
    n_starr
    
    ii           ${i}$                   (long_name='nominal interest rate (log dev ss)')
    s           ${s}$                   (long_name='terms of trade (log dev ss)')
    s_nat
    pie_cu
    y_cu
    y_cu_gap
    g_cu
;       

varexo  
  eps_a       ${\varepsilon_a}$       (long_name='technology shock')
  eps_xi      ${\varepsilon_xi}$      (long_name='labor disutility shock')
  eps_a_starr
  eps_xi_starr
;

parameters 
    
    SIGMA ALPHA_bar DELTA BETA PHI h CHI GAMMA THETA THETA_starr W_ALPHA_bar LAMBDA
    W_ALPHA_bar_starr LAMBDA_starr ETA RHOA RHOXI ALPHA ALPHA_starr
    EPSILON
    @#if MONPOL != 1
    COEF_y_gapH COEF_y_gapF COEF_pieH COEF_pieF 
    COEF_y_gapH_starr COEF_y_gapF_starr COEF_pieH_starr COEF_pieF_starr
    @#endif
    ;

model(linear); 

//Sticky price conditions
[name='Home Dynamic IS Curve']
y = y(+1) - 1/SIGMA*(ii-pie(+1))+(1-ALPHA_bar*h-W_ALPHA_bar)/SIGMA*(s(+1)-s)-DELTA*(g(+1)-g);

[name='Home New Keynesian Phillips Curve']
pie=BETA*pie(+1)+LAMBDA*(xi+(SIGMA/(1-DELTA)+PHI)*y-SIGMA*DELTA/(1-DELTA)*g+(1-ALPHA_bar*h-W_ALPHA_bar)*s-(1+PHI)*a);

[name='Foreign Dynamic IS Curve']
y_starr = y_starr(+1) - 1/SIGMA*(ii-pie_starr(+1))+(W_ALPHA_bar_starr-ALPHA_bar*h)/SIGMA*(s(+1)-s)-DELTA*(g_starr(+1)-g_starr);

[name='Foreign New Keynesian Phillips Curve']
pie_starr=BETA*pie_starr(+1)+LAMBDA_starr*(xi_starr+(SIGMA/(1-DELTA)+PHI)*y_starr-SIGMA*DELTA/(1-DELTA)*g_starr+(W_ALPHA_bar_starr-ALPHA_bar*h)*s-(1+PHI)*a_starr);

[name='IRS']
s = SIGMA/((1-DELTA)*(W_ALPHA_bar+W_ALPHA_bar_starr))*(y-y_starr-DELTA*(g-g_starr));

//Flexible price (or efficient) conditions (DA SILVEIRA)

0=xi+(SIGMA/(1-DELTA)+PHI)*y_nat-SIGMA*DELTA/(1-DELTA)*g_nat+(1-ALPHA_bar*h-W_ALPHA_bar)*s_nat-(1+PHI)*a;
0=xi_starr+(SIGMA/(1-DELTA)+PHI)*y_nat_starr-SIGMA*DELTA/(1-DELTA)*g_nat_starr+(W_ALPHA_bar_starr-ALPHA_bar*h)*s_nat-(1+PHI)*a_starr;
s_nat=(1+PHI)*(a-a_starr)-PHI*(y_nat-y_nat_starr)-(xi-xi_starr);
GAMMA*g_nat=-xi-PHI*y_nat+(1+PHI)*a;
GAMMA*g_nat_starr=-xi_starr-PHI*y_nat_starr+(1+PHI)*a_starr;
//g_nat=y_nat;
//g_nat_starr=y_nat_starr;

//Flexible price (or efficient) conditions (PLANNER FOC LINEARIZED)

//-SIGMA*c_nat=(1-ALPHA)*PHI*(y_nat-a)+ALPHA*PHI*(y_nat_starr-a_starr);
//-SIGMA*c_nat_starr=ALPHA_starr*PHI*(y_nat-a)+(1-ALPHA_starr)*PHI*(y_nat_starr-a_starr);
//y_nat=(1-ALPHA)*(1-DELTA)*c_nat+ALPHA*(1-DELTA)*c_nat_starr+DELTA*g_nat;
//y_nat_starr=ALPHA_starr*(1-DELTA)*c_nat+(1-ALPHA_starr)*(1-DELTA)*c_nat_starr+DELTA*g_nat_starr;
//-GAMMA*g_nat=PHI*y_nat-(1+PHI)*a+xi;
//-GAMMA*g_nat_starr=PHI*y_nat_starr-(1+PHI)*a_starr+xi_starr;


//Gap definitions
y_gap=y-y_nat;
g_gap=g-g_nat;
c_gap=c-c_nat;

y_gap_starr=y_starr-y_nat_starr;
g_gap_starr=g_starr-g_nat_starr;
c_gap_starr=c_starr-c_nat_starr;

//Currency union variables
[name='Currency union inflation']
pie_cu = h*pie+(1-h)*pie_starr;

[name='Currency union output']
y_cu = h*y+(1-h)*y_starr;

y_cu_gap=y_cu-h*y_nat+(1-h)*y_nat_starr;

g_cu=h*g+(1-h)*g_starr;

// Consumption and labor
n=y-a;
c=1/(1-DELTA)*(y-DELTA*g)-(W_ALPHA_bar+ALPHA_bar-1)/SIGMA*s;
c_nat=1/(1-DELTA)*(y_nat-DELTA*g_nat)-(W_ALPHA_bar+ALPHA_bar-1)/SIGMA*s_nat;

n_starr=y_starr-a_starr;
c_starr=1/(1-DELTA)*(y_starr-DELTA*g_starr)+W_ALPHA_bar_starr/SIGMA*s;
c_nat_starr=1/(1-DELTA)*(y_nat_starr-DELTA*g_nat_starr)+W_ALPHA_bar_starr/SIGMA*s_nat;


//Exogeneous process
[name='Home TFP process']
a=RHOA*a(-1)+eps_a;

[name='Home Labor disutility shifter']
xi =RHOXI*xi(-1) + eps_xi;

[name='Foreign TFP process']
a_starr=RHOA*a_starr(-1)+eps_a_starr;

[name='Foreign Labor disutility shifter']
xi_starr = RHOXI*xi_starr(-1) + eps_xi_starr;



@#if MONPOL != 1
g=COEF_y_gapH*y_gap+COEF_y_gapF*y_gap_starr+COEF_pieH*pie+COEF_pieF*pie_starr;
g_starr=COEF_y_gapH_starr*y_gap+COEF_y_gapF_starr*y_gap_starr+COEF_pieH_starr*pie+COEF_pieF_starr*pie_starr;
@#endif
end;

steady_state_model;
a=0; xi=0; y=0; pie=0; a_starr=0; xi_starr=0; y_starr=0; pie_starr=0; s=0;y_nat=0;y_gap=0;g_nat=0;g_gap=0;y_nat_starr=0;y_gap_starr=0;g_nat_starr=0;g_gap_starr=0;s_nat=0;pie_cu=0;y_cu=0;y_cu_gap=0;n=0;n_starr=0;
c=0;c_starr=0;c_nat=0;c_nat_starr=0;c_gap=0;c_gap_starr=0;
g=0;g_starr=0;ii=0;
g_cu=0;
end;



