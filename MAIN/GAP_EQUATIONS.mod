% In this file we declare the model in terms of gaps.
% There are 22 linear equations for 22 variables declared.

%-------------------------------------------------------------------------%
%--------------------------- DECLARE VARIABLES ---------------------------%
%-------------------------------------------------------------------------%

%------------------------  Endogeneous Variables -------------------------%

var
    y_gap           ${\tilde y}$      (long_name='Home output gap (log dev ss)')   
    g_gap           ${\tilde g}$      (long_name='Home government spending gap (log dev ss)')
    c_gap           ${\tilde c}$      (long_name='Home consumption gap (log dev ss)')
    c_H_gap         ${\tilde c^H}$  (long_name='Home consumption of Home-made goods gap (log dev ss)')
    c_F_gap         ${\tilde c^F}$  (long_name='Home consumption of Foreign-made goods gap (log dev ss)')
    f_gap           ${\tilde f}$      (long_name='Home fiscal stance gap (log dev ss)')
    n_gap           ${\tilde n}$      (long_name='Home labor gap (log dev ss)')
    s_gap           ${\tilde s}$      (long_name='Home terms of trade gap (log dev ss)')   
    ii_gap          ${\tilde i}$


    y_gap_starr     ${\tilde y^*}$    (long_name='Foreign output gap (log dev ss)') 
    g_gap_starr     ${\tilde g^*}$    (long_name='Foreign government spending gap (log dev ss)')
    c_gap_starr     ${\tilde c^*}$    (long_name='Foreign consumption gap (log dev ss)')
    c_H_gap_starr   ${\tilde c^{H*}}$    (long_name='Foreign consumption of Home-made goods gap (log dev ss)')
    c_F_gap_starr   ${\tilde c^{F*}}$    (long_name='Foreign consumption of Foreign-made goods gap (log dev ss)')
    f_gap_starr     ${\tilde f^*}$    (long_name='Foreign fiscal stance gap (log dev ss)')
    n_gap_starr     ${\tilde n^*}$    (long_name='Foreign labor gap (log dev ss)')
    s_gap_starr     ${\tilde s^*}$    (long_name='Foreign terms of trade gap (log dev ss)')   
    ii_gap_starr    ${\tilde i^*}$


    y_gap_cu        ${\tilde y^{cu}}$     (long_name='Union output gap (log dev ss)')
    g_gap_cu        ${\tilde g^{cu}}$     (long_name='Union government spending gap (log dev ss)')  
    c_gap_cu        ${\tilde c^{cu}}$     (long_name='Union government spending gap (log dev ss)')
    ii_gap_cu       ${\tilde i^{cu}}$

    g_gap_r         ${\tilde g^{r}}$     (long_name='Relative output gap (log dev ss)')
;

%-------------------------------------------------------------------------%
%---------------------------  MODEL EQUATIONS ----------------------------%
%-------------------------------------------------------------------------%

model(linear);

%---------------------------  Gap Definitions  ---------------------------%

[name='Home output gap definition']

y_gap = y-y_nat;

[name='Home governmpent spending gap definition']

g_gap = g-g_nat;

[name='Home consumption gap definition']

c_gap = c-c_nat;

[name='Home consumption of Home_made goods gap definition']

c_H_gap = c_H-c_H_nat;

[name='Home consumption of Foreign_made goods gap definition']

c_F_gap = c_F-c_F_nat;

[name='Foreign labor gap definition']

n_gap=n-n_nat;

[name='Home fiscal stance gap definition']

f_gap=f-f_nat;

[name='Home terms of trade gap definition']

s_gap = s-s_nat;

[name='Home interest rate gap definition']

ii_gap=ii-r_nat;

[name='Foreign output gap definition']

y_gap_starr = y_starr-y_nat_starr;

[name='Foreign governmpent spending gap definition']

g_gap_starr = g_starr-g_nat_starr;

[name='Foreign consumption gap definition']

c_gap_starr = c_starr-c_nat_starr;

[name='Foreign consumption of Home_made goods gap definition']

c_H_gap_starr = c_H_starr-c_H_nat_starr;

[name='Foreign consumption of Foreign_made goods gap definition']

c_F_gap_starr = c_F_starr-c_F_nat_starr;

[name='Foreign labor gap definition']

n_gap_starr=n_starr-n_nat_starr;

[name='Foreign fiscal stance gap definition']

f_gap_starr=f_starr-f_nat_starr;

[name='Foreign terms of trade gap definition']

s_gap_starr = s_starr-s_nat_starr;

[name='Foreign interest rate gap definition']

ii_gap_starr=ii_starr-r_nat_starr;

[name='Union output gap definition']

y_gap_cu = h*y_gap + (1-h)*y_gap_starr;

[name='Union governmpent spending gap definition']

g_gap_cu = h*g_gap + (1-h)*g_gap_starr;
    
[name='Union consumption gap definition']

c_gap_cu=h*c_gap+(1-h)*c_gap_starr;

[name='Union interest rate gap definition']

ii_gap_cu=ii-r_nat_cu;

g_gap_r = g_gap - g_gap_starr;

end;

%-------------------------------------------------------------------------%
%----------------------------  STEADY STATE  -----------------------------%
%-------------------------------------------------------------------------%

steady_state_model;
y_gap=0;
g_gap=0;
c_gap=0;
c_H_gap=0;
c_F_gap=0;
n_gap=0;
f_gap=0;
ii_gap=0;
s_gap=0;
y_gap_starr=0;
g_gap_starr=0;
c_gap_starr=0;
c_H_gap_starr=0;
c_F_gap_starr=0;
f_gap_starr=0;
n_gap_starr=0;
ii_gap_starr=0;
s_gap_starr=0;
y_gap_cu=0;
g_gap_cu=0;
c_gap_cu=0;
ii_gap_cu=0;

g_gap_r=0;
end;

