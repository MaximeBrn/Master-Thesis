var
    //a           ${a}$        (long_name='Home technology shock process (log dev ss)')
    //xi          ${xi}$       (long_name='Home labor disutility shock process (log dev ss)')
    y           ${y}$        (long_name='Home output (log dev ss)')
    pie
    g           ${g}$        (long_name='Home government consumption (log dev ss)')
    n
    c
    c_F
    c_H

    //a_starr     ${a^*}$     (long_name='Foreign technology shock process (log dev ss)')
    //xi_starr    ${xi^*}$    (long_name='Foreign labor disutility shock process (log dev ss)')
    y_starr     ${y^*}$     (long_name='Foreign output (log dev ss)')
    pie_starr
    g_starr     ${g^*}$     (long_name='Foreign government consumption (log dev ss)')
    n_starr 
    
    c_starr
    c_F_starr
    c_H_starr

    pie_cu
    y_cu
    g_cu

    
    
    ii           ${i}$                   (long_name='nominal interest rate (log dev ss)')
    s           ${s}$                   (long_name='terms of trade (log dev ss)')
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

// Consumption and labor
n=y-a;
c=1/(1-DELTA)*(y-DELTA*g)-(W_ALPHA_bar+ALPHA_bar-1)/SIGMA*s;
c_H=ALPHA*s+c;
c_F=-(1-ALPHA)*s+c;

n_starr=y_starr-a_starr;
c_starr=1/(1-DELTA)*(y_starr-DELTA*g_starr)+W_ALPHA_bar_starr/SIGMA*s;

c_H_starr=(1-ALPHA_starr)*s+c_starr;
c_F_starr=-ALPHA_starr*s+c_starr;

pie_cu=h*pie+(1-h)*pie_starr;
y_cu=h*y+(1-h)*y_starr;
g_cu=h*g+(1-h)*g_starr;
end;

steady_state_model;
y=0; 
pie=0;
g=0;
c=0;
c_H=0;
c_F=0;
n=0;
y_starr=0; 
pie_starr=0;
g_starr=0;
c_starr=0;
c_H_starr=0;
c_F_starr=0;
n_starr=0;
ii=0;
s=0;
pie_cu=0;
y_cu=0;
g_cu=0;
end;



