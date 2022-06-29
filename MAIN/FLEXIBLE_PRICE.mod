% In this file we declare the flexible price equilibrium.
% There are 22 linear equations for 22 variables declared.

%-------------------------------------------------------------------------%
%--------------------------- DECLARE VARIABLES ---------------------------%
%-------------------------------------------------------------------------%

%------------------------  Endogeneous Variables -------------------------%

var
    y_nat           ${\hat {\bar y}}$         (long_name='Home natural output (log dev ss)')   
    g_nat           ${\hat {\bar g}}$         (long_name='Home natural government spending (log dev ss)') 
    c_nat           ${\hat {\bar c}}$         (long_name='Home natural consumption (log dev ss)')
    c_H_nat         ${\hat {\bar c}^H}$     (long_name='Home natural consumption of Home-made goods (log dev ss)')
    c_F_nat         ${\hat {\bar c}^F}$     (long_name='Home natural consumption of Foreign-made goods (log dev ss)')
    n_nat           ${\hat {\bar n}}$         (long_name='Home natural labor (log dev ss)')
    f_nat           ${\hat {\bar f}}$         (long_name='Home natural fiscal stance (log dev ss)')
    s_nat           ${\bar s}$                (long_name='Home natural terms of trade (log dev ss)')
    r_nat           ${\bar r}$                (long_name='Home natural rate (log dev ss)')

    y_nat_starr     ${\hat {\bar y}^*}$       (long_name='Foreign natural output (log dev ss)')
    g_nat_starr     ${\hat {\bar g}^*}$       (long_name='Foreign natural government spending (log dev ss)') 
    c_nat_starr     ${\hat {\bar c}^*}$       (long_name='Foreign natural consumption (log dev ss)')
    c_H_nat_starr   ${\hat {\bar c}^{H*}}$   (long_name='Foreign natural consumption of Home-made goods (log dev ss)')
    c_F_nat_starr   ${\hat {\bar c}^{F*}}$   (long_name='Foreign natural consumption of Foreign-made goods (log dev ss)')
    n_nat_starr     ${\hat {\bar n}^*}$       (long_name='Foreign natural labor (log dev ss)')
    f_nat_starr     ${\hat {\bar f}^*}$       (long_name='Foreign natural fiscal stance (log dev ss)')
    s_nat_starr     ${\bar s^*}$              (long_name='Foreign natural terms of trade (log dev ss)')
    r_nat_starr     ${\bar r^*}$              (long_name='Foreign natural rate (log dev ss)')


    y_nat_cu        ${\hat {\bar y}^{cu}}$      (long_name='Union natural output (log dev ss)')  
    g_nat_cu        ${\hat {\bar g}^{cu}}$      (long_name='Union natural government consumption (log dev ss)')
    c_nat_cu        ${\hat {\bar c}^{cu}}$      (long_name='Union natural consumption (log dev ss)')
    c_H_nat_cu
    c_F_nat_cu      
    r_nat_cu        ${\hat {\bar r}^{cu}}$      (long_name='Union natural rate (log dev ss)')
    f_nat_cu
    n_nat_cu
;       

%-------------------------------------------------------------------------%
%---------------------------  MODEL EQUATIONS ----------------------------%
%-------------------------------------------------------------------------%

model(linear); 

%------------------  Natural Marginal Cost Conditions --------------------%

[name='Home natural marginal cost condition']

0=SIGMA*c_nat+PHI*y_nat+ALPHA*s_nat-(1+PHI)*a;

[name='Foreign natural marginal cost condition']

0=SIGMA*c_nat_starr+PHI*y_nat_starr-ALPHA_starr*s_nat-(1+PHI)*a_starr;

%-------------  Natural Good-market Clearing Conditions  -----------------%

[name='Home natural good-market clearing condition']

SIGMA_tilde*(y_nat-DELTA*g_nat)=SIGMA*c_nat+ALPHA_bar*(1-h)*W_ALPHA_bar*s_nat;

[name='Foreign natural good-market clearing condition']

SIGMA_tilde*(y_nat_starr-DELTA*g_nat_starr)=SIGMA*c_nat_starr-ALPHA_bar*h*W_ALPHA_bar*s_nat;

%---------------  Natural International Risk Sharing  --------------------%

[name='Natural IRS condition']

s_nat=SIGMA_tilde_ALPHA_bar*(y_nat-y_nat_starr-DELTA*(g_nat-g_nat_starr));

%------------------  Natural Government Spending  ------------------------%

[name='Home natural government spending condition']

GAMMA*g_nat=SIGMA*c_nat+ALPHA*s_nat;

[name='Foreign natural government spending condition']

GAMMA*g_nat_starr=SIGMA*c_nat_starr-ALPHA_starr*s_nat;

%---------------------  Natural Law of One Price  ------------------------%

[name='Natural LOP']

s_nat_starr=-s_nat;

%----------------  Optimal Natural Regional Consumption  -----------------%

[name='Home natural consumption of Home-made goods']

c_H_nat=ETA*ALPHA*s_nat+c_nat;

[name='Home natural consumption of Foreign-made goods']

c_F_nat=-ETA*(1-ALPHA)*s_nat+c_nat;

[name='Foreign natural consumption of Home-made goods']

c_H_nat_starr=ETA*(1-ALPHA_starr)*s_nat+c_nat_starr;

[name='Foreign natural consumption of Foreign-made goods']

c_F_nat_starr=-ETA*ALPHA_starr*s_nat+c_nat_starr;

%--------------------  Natural Production Functions  ---------------------%

[name='Home natural production function']

n_nat=y_nat-a;

[name='Foreign natural production function']

n_nat_starr=y_nat_starr-a_starr;

%-----------------  Natural Fiscal Stance Definitions  -------------------%

[name = 'Home natural fiscal stance definition']

f_nat = g_nat - y_nat;

[name = 'Foreign natural fiscal stance definition']

f_nat_starr = g_nat_starr - y_nat_starr;

%---------------------------  Natural rates  -----------------------------%

[name='Home natural rate']

r_nat=(1+PHI)*(a(+1)-a)-PHI*(y_nat(+1)-y_nat);

[name='Foreign natural rate']

r_nat_starr=(1+PHI)*(a_starr(+1)-a_starr)-PHI*(y_nat_starr(+1)-y_nat_starr);

%-----------------------  Union Natural Variables  -----------------------%

[name='Union natural output']

y_nat_cu=h*y_nat+(1-h)*y_nat_starr;

[name='Union natural government spending']

g_nat_cu=h*g_nat+(1-h)*g_nat_starr;

[name='Union natural consumption']

c_nat_cu=h*c_nat+(1-h)*c_nat_starr;

[name='Union natural rate']

r_nat_cu=h*r_nat+(1-h)*r_nat_starr;

c_H_nat_cu=h*c_H_nat+(1-h)*c_H_nat_starr;

c_F_nat_cu=h*c_F_nat+(1-h)*c_F_nat_starr;

f_nat_cu = h*f_nat+(1-h)*f_nat_starr;

n_nat_cu= h*n_nat+(1-h)*n_nat_starr;
end;

%-------------------------------------------------------------------------%
%----------------------------  STEADY STATE  -----------------------------%
%-------------------------------------------------------------------------%

steady_state_model;
y_nat=0;
g_nat=0;
c_nat=0;
c_H_nat=0;
c_F_nat=0;
n_nat=0;
f_nat=0;
s_nat=0;
r_nat=0;
y_nat_starr=0;
g_nat_starr=0;
c_nat_starr=0;
c_H_nat_starr=0;
c_F_nat_starr=0;
n_nat_starr=0;
f_nat_starr=0;
s_nat_starr=0;
r_nat_starr=0;
y_nat_cu=0;
g_nat_cu=0;
c_nat_cu=0;
r_nat_cu=0;
c_H_nat_cu=0;
c_F_nat_cu=0;
f_nat_cu=0;
n_nat_cu=0;
end;





