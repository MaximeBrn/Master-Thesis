
%-------------------------------------------------------------------------%
%--------------------------- DECLARE VARIABLES ---------------------------%
%-------------------------------------------------------------------------%

%------------------------  Endogeneous Variables -------------------------%

var
    y           ${\hat y_t}$        (long_name='Home output (log dev ss)')
    pie         ${\pi_{H,t}}$       (long_name='Home inflation (log dev ss)')
    g           ${\hat g_t}$        (long_name='Home government consumption (log dev ss)')
    n           ${\hat n_t}$        (long_name='Home labor supply (log dev ss)')
    c           ${\hat c_t}$        (long_name='Home consumption (log dev ss)')
    c_H         ${\hat c_{H,t}}$    (long_name='Home consumption of Home-made goods (log dev ss)')
    c_F         ${\hat c_{F,t}}$    (long_name='Home consumption of Foreign-made goods (log dev ss)')
    

    y_starr     ${\hat y_t^*}$        (long_name='Foreign output (log dev ss)')
    pie_starr   ${\pi_{F,t}^*}$       (long_name='Foreign inflation (log dev ss)')
    g_starr     ${\hat g_t^*}$        (long_name='Foreign government consumption (log dev ss)')
    n_starr     ${\hat n_t^*}$        (long_name='Foreign labor supply (log dev ss)')
    c_starr     ${\hat c_t^*}$        (long_name='Foreign consumption (log dev ss)')
    c_H_starr   ${\hat c_{H,t}^*}$    (long_name='Foreign consumption of Home-made goods (log dev ss)')
    c_F_starr   ${\hat c_{F,t}^*}$    (long_name='Foreign consumption of Foreign-made goods (log dev ss)')

    
    ii           ${i_t}$        (long_name='Home nominal interest rate (log dev ss)')
    ii_starr     ${i_t^*}$      (long_name='Foreign nominal interest rate (log dev ss)')
    ii_cu        ${i_t}$        (long_name='Union nominal interest rate (log dev ss)')
    s            ${s_t}$        (long_name='Home terms of trade (log dev ss)')

    pie_cu      ${\pi_{cu,t}}$          (long_name='Union inflation (log dev ss)')
    y_cu        ${\hat y_t^{cu}}$       (long_name='Union output (log dev ss)')
    g_cu        ${\hat g_t^{cu}}$        (long_name='Union government spending (log dev ss)')
    c_cu        ${\hat c_t^{cu}}$        (long_name='Union consumption (log dev ss)')

    ;       

%-------------------------------------------------------------------------%
%-----------------------  STICKY PRICE EQUATIONS -------------------------%
%-------------------------------------------------------------------------%

model(linear); 

%--------------------------------  NKPCs  --------------------------------%

[name='Home New Keynesian Phillips Curve']

pie = BETA*pie(+1) + LAMBDA*((SIGMA_tilde_ALPHA_bar*OMEGA+PHI)*y-SIGMA_tilde_ALPHA_bar*OMEGA*DELTA*g+(SIGMA_tilde-SIGMA_tilde_ALPHA_bar*OMEGA)*(y_starr-DELTA*g_starr)-(1+PHI)*a);

[name='Foreign New Keynesian Phillips Curve']

pie_starr = BETA*pie_starr(+1) + LAMBDA_starr*((SIGMA_tilde_ALPHA_bar*OMEGA_starr+PHI)*y_starr-SIGMA_tilde_ALPHA_bar*OMEGA_starr*DELTA*g_starr+(SIGMA_tilde-SIGMA_tilde_ALPHA_bar*OMEGA_starr)*(y-DELTA*g)-(1+PHI)*a_starr);

%----------------------------  IS equations  -----------------------------%

[name='Home Dynamic IS Curve']

y = y(+1) - DELTA*(g(+1)-g) - 1/(SIGMA_tilde_ALPHA_bar*OMEGA)*(ii - pie(+1)) + ((1+ALPHA_bar*THETA_ALPHA_bar)/OMEGA-1)*(y_starr(+1)-y_starr-DELTA*(g_starr(+1)-g_starr));

[name='Foreign Dynamic IS Curve']

y_starr = y_starr(+1) - DELTA*(g_starr(+1)-g_starr) - 1/(SIGMA_tilde_ALPHA_bar*OMEGA_starr)*(ii_starr - pie_starr(+1)) + ((1+ALPHA_bar*THETA_ALPHA_bar)/OMEGA_starr-1)*(y(+1)-y-DELTA*(g(+1)-g));

%--------------------------------  IRS  ----------------------------------%

[name='IRS']

s=SIGMA_tilde_ALPHA_bar*(y-y_starr-DELTA*(g-g_starr));

%------------------------  Production Functions  -------------------------%

[name='Home production function']

n = y - a;

[name='Foreign production function']

n_starr=y_starr-a_starr;

%------------------  Good-market Clearing Conditions  --------------------%

[name='Home good-market clearing condition']

SIGMA_tilde*(y-DELTA*g)=SIGMA*c+ALPHA_bar*(1-h)*W_ALPHA_bar*s;

[name='Foreign good-market clearing condition']

SIGMA_tilde*(y_starr-DELTA*g_starr)=SIGMA*c_starr-ALPHA_bar*h*W_ALPHA_bar*s;

%--------------------  Optimal Regional Consumption  ---------------------%

[name='Home consumption of Home-made goods']

c_H=ETA*ALPHA*s+c;

[name='Home consumption of Foreign-made goods']

c_F=-ETA*(1-ALPHA)*s+c;

[name='Foreign consumption of Home-made goods']

c_H_starr=ETA*(1-ALPHA_starr)*s+c_starr;

[name='Foreign consumption of Foreign-made goods']

c_F_starr=-ETA*ALPHA_starr*s+c_starr;

%---------------------------  Interest Rates  ----------------------------%

[name='Home interest rate']

ii=ii_cu;
    
[name='Foreign interest rate']

ii_starr=ii_cu;

%---------------------------  Union Variables  ---------------------------%

[name='Union inflation']

pie_cu=h*pie+(1-h)*pie_starr;

[name='Union output']

y_cu=h*y+(1-h)*y_starr;

[name='Union government spending']

g_cu=h*g+(1-h)*g_starr;

[name='Union consumption']

c_cu=h*c+(1-h)*c_starr;

end;

%-------------------------------------------------------------------------%
%----------------------------  STEADY STATE  -----------------------------%
%-------------------------------------------------------------------------%

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
ii_starr=0;
ii_cu=0;
s=0;
pie_cu=0;
y_cu=0;
g_cu=0;
c_cu=0;
end;



