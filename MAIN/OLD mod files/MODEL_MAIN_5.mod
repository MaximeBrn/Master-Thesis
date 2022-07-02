% In this file we include 3 external .mod files
% GAP_EQUATIONS.mod, STICKY_PRICE.mod and FLEXIBLE_PRICE.mod.
% We specicy the fiscal / monetary regimes.
% That adds the equations that are lacking in STICKY_PRICE.mod.


%-------------------------------------------------------------------------%
%----------------------------  POLICY REGIME  ----------------------------%
%-------------------------------------------------------------------------%

@#define POLICY = "RAMSEY" // Are FP and MP "RAMSEY" or "OSR"
% @#define RAMSEY_OBJECTIVE = "EQUAL_WEIGHT" // "EQUAL_WEIGHT" or "POP_WEIGHT"
% @#define OSR_OBJECTIVE = "COUNTERPART_POP_WEIGHT" // "COUNTERPART_POP_WEIGHT" or "COUNTERPART_EQUAL_WEIGHT" or "SIMPLE"
@#define OBJECTIVE = "POP_WEIGHT" // "EQUAL_WEIGHT" or "POP_WEIGHT" or "UNION"
@#define OSR_RULE_SCOPE = "NATIONAL" // "GLOBAL" or "NATIONAL"
@#define OSR_RULE_CONSTRAINT = "INFLATION_ONLY"
% @#define OSR_RULE_OBS = "FULL" // "LIMITED"
% @#define OSR_RULE_LAG = "YES " // "YES" or "No"

%-------------------------------------------------------------------------%
%--------------------------- DECLARE VARIABLES ---------------------------%
%-------------------------------------------------------------------------%

%------------------------  Endogeneous Variables -------------------------%

var

    a               ${a}$         (long_name='Home productivity (log dev ss)')
    a_starr         ${a^*}$        (long_name='Foreign productivity (log dev ss)')

;

%-------------------------  Exogeneous Variables -------------------------%

varexo  
  eps_a         ${\epsilon_a}$          (long_name='Home technology shock')
  eps_a_starr   ${\epsilon_a^*}$    (long_name='Foreign technology shock')
;

shocks;
var eps_a = 1; 
% var eps_a_starr = 0.7; 
var eps_a_starr = 1; % Beetsma

end;

%-------------------------------------------------------------------------%
%-------------------------- DECLARE PARAMETERS ---------------------------%
%-------------------------------------------------------------------------%

parameters 
    
%------------------------  Structural Parameters  ------------------------%

    BETA    ${\beta}$
    SIGMA   ${\sigma}$
    PHI     ${\varphi}$
    GAMMA   ${\gamma}$
    ETA     ${\eta}$
    EPSILON ${\varepsilon}$

%-------------------------  Economies Features  --------------------------%

    h               ${h}$
    ALPHA_bar       ${\bar{\alpha}}$
    THETA           $\theta$
    THETA_starr     $\theta^*$

%----------------------  Steady State Calibration  -----------------------%

    DELTA           ${\delta}$
    CHI_C           ${\chi_C}$
    CHI_G           ${\chi_G}$

    N0    
    N0_starr
    C0 
    C0_starr
    G0 
    G0_starr

%------------------------  Composite Parameters  -------------------------%

    ALPHA                       ${\alpha}$
    ALPHA_starr                 ${\alpha^*}$
    LAMBDA                      ${\lambda}$
    LAMBDA_starr                ${\lambda^*}$
    W_ALPHA_bar                 ${w_{\bar{\alpha}}}$
    SIGMA_tilde                 ${\tilde{\sigma}}$
    THETA_ALPHA_bar             ${\Theta{\bar{\alpha}}}$
    SIGMA_tilde_ALPHA_bar       ${\tilde\sigma_{\bar{\alpha}}}$
    OMEGA                       ${\Omega_{\bar \alpha,h}}$
    OMEGA_starr                 ${\Omega_{\bar \alpha,1-h}}$

%----------------------  Fiscal Policy Parameters  -----------------------%

@#if POLICY == "OSR"
        
    @#if OSR_RULE_SCOPE == "NATIONAL"
            
            FP_pieH
            FP_y_gapH

            FP_pieF_starr
            FP_y_gapF_starr

    @#elseif OSR_RULE_SCOPE == "GLOBAL"

            FP_pieH
            FP_y_gapH
            FP_s_gap
            FP_y_gapF
            FP_pieF

            FP_pieF_starr
            FP_y_gapF_starr
            FP_s_gap_starr
            FP_y_gapH_starr
            FP_pieH_starr
            
    @#endif

@#endif

%--------------------  Exogeneous Process Parameters  --------------------%

    RHOA
;

%-------------------------------------------------------------------------%
%--------------------------- PARAMETERS VALUE ----------------------------%
%-------------------------------------------------------------------------%

%---------------------------  Union Features  ----------------------------%

h               =   0.5; % 0.5 or 0.8
ALPHA_bar       =   0.1; % 0.1 or 0.2
THETA           =   0.75; % 0.75 or 0.5

%------------------------  Calibrated Parameters  ------------------------%

BETA            =   0.98;
SIGMA           =   3;
PHI             =   3;
GAMMA           =   1;
ETA             =   4.5;
EPSILON         =   6;

THETA_starr     =   0.75;

DELTA           =   0.25;
CHI_C           =   (1-DELTA)^SIGMA;
CHI_G           =   DELTA^GAMMA;

%---------------------------- Other Parameters ---------------------------%

ALPHA                   =   ALPHA_bar*(1-h);
ALPHA_starr             =   ALPHA_bar*h;
LAMBDA                  =   (1-THETA)*(1-THETA*BETA)/THETA;
LAMBDA_starr            =   (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;
W_ALPHA_bar             =   1+(2-ALPHA_bar)*(SIGMA*ETA-1);
SIGMA_tilde             =   SIGMA/(1-DELTA);
THETA_ALPHA_bar         =   W_ALPHA_bar-1;
SIGMA_tilde_ALPHA_bar   =   SIGMA_tilde/(1+ALPHA_bar*THETA_ALPHA_bar);
OMEGA                   =   1+ALPHA_bar*h*THETA_ALPHA_bar ;
OMEGA_starr             =   1+ALPHA_bar*(1-h)*THETA_ALPHA_bar ;

N0          =   h;
N0_starr    =   1-h;
C0          =   (1-DELTA)*N0;
C0_starr   =    (1-DELTA)*N0_starr;
G0          =   DELTA*N0;
G0_starr    =   DELTA*N0_starr;

RHOA        =   0.97;

% @#if POLICY == "OSR"    
% 
%     @#if OSR_RULE_SCOPE == "NATIONAL"
%             
% %             FP_pieH         =   0;
%             FP_y_gapH       =   -7;
% 
% %             FP_pieF_starr   =   0;
%             FP_y_gapF_starr =   0;
% 
%     @#elseif OSR_RULE_SCOPE == "GLOBAL"
% 
%             FP_pieH         =   0;
%             FP_y_gapH       =   -2;
%             FP_s_gap        =   1;
%             FP_y_gapF       =   2;
%             FP_pieF         =   0;
% 
%             FP_pieF_starr   =   0;
%             FP_y_gapF_starr =   -2;
%             FP_s_gap_starr  =   -1;
%             FP_y_gapH_starr =   2;
%             FP_pieH_starr   =   0;
%             
%     @#endif
% 
% @#endif


%-------------------------------------------------------------------------%
%---------------------------  MODEL EQUATIONS ----------------------------%
%-------------------------------------------------------------------------%

%----------------------  FLEXIBLE PRICE EQUATIONS  -----------------------%

@#include "FLEXIBLE_PRICE.mod"

%-----------------------  STICKY PRICE EQUATIONS  ------------------------%

@#include "STICKY_PRICE.mod"

%----------------------------  GAP EQUATIONS  ----------------------------%

@#include "GAP_EQUATIONS.mod"

%--------------------------  OTHER EQUATIONS  ----------------------------%

model(linear);

%---------------------------  Monetary Policy  ---------------------------%

@#if POLICY == "OSR"
%     ii_cu=r_nat_cu + 2.5*pie_cu + 0.125*y_gap_cu + 0.7*ii_cu(-1); % Blanchard
    ii_cu=r_nat_cu + 1.5*pie_cu + 0.5*y_gap_cu ; % Beetsma
@#endif

%----------------------------  Fiscal Policy  ----------------------------%

@#if POLICY == "OSR"

    @#if OSR_RULE_SCOPE == "NATIONAL"

%         g_gap=  0.85*g_gap(-1) + FP_y_gapH*y_gap + FP_pieH*pie ; % React to home only
%         g_gap_starr=    0.85*g_gap_starr(-1) + FP_y_gapF_starr*y_gap_starr + FP_pieF_starr*pie_starr; % React to Foreign only
%        
%         g_gap=  0.85*g_gap(-1) + FP_y_gapH*y_gap ; % NO INFLATION
%         g_gap_starr=    0.85*g_gap_starr(-1) + FP_y_gapF_starr*y_gap_starr; % NO INFLATION
% %        
%         g_gap= FP_y_gapH*y_gap(-1) ; % NO INFLATION
%         g_gap_starr=  FP_y_gapF_starr*y_gap_starr(-1); % NO INFLATION
       
          g = FP_pieH*pie;
          g_starr = FP_pieF_starr*pie_starr;
    
%         g_gap= FP_y_gapH*y_gap ; % NO INFLATION
%         g_gap_starr=  FP_y_gapF_starr*y_gap_starr; % NO INFLATION
       
 
    @#elseif OSR_RULE_SCOPE == "GLOBAL"

        g_gap=  0.85*g_gap(-1) + FP_y_gapH*y_gap + FP_y_gapF*y_gap_starr + FP_pieH*pie + FP_pieF*pie_starr + FP_s_gap*s_gap;
%         g_gap_starr= 0.85*g_gap_starr(-1) + FP_y_gapH_starr*y_gap + FP_y_gapF_starr*y_gap_starr + FP_pieH_starr*pie + FP_pieF_starr*pie_starr + FP_s_gap_starr*s_gap;    
        g_gap_starr=0.85*g_gap_starr(-1);

    @#endif

@#endif

%-------------------------  Exogeneous process  --------------------------%

% a = RHOA*a(-1) - eps_a; 
a = RHOA*a(-1) - eps_a; % Beetsma
a_starr = RHOA*a_starr(-1) - eps_a_starr;

end;

%-------------------------------------------------------------------------%
%----------------------------  STEADY STATE  -----------------------------%
%-------------------------------------------------------------------------%

steady_state_model;
a=0;
a_starr=0;
end;

%-------------------------------------------------------------------------%
%-----------------------------  SIMULATIONS  -----------------------------%
%-------------------------------------------------------------------------%

%-------------------------------  RAMSEY  --------------------------------%

@#if POLICY == "RAMSEY"

%--------------------------  Planner Objective  --------------------------%

    @#if OBJECTIVE == "POP_WEIGHT"
        
%         planner_objective (1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2*s_gap^2+h/2*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
        
        % Try Beetsma
        planner_objective c_gap_cu^2+s_gap^2+g_gap^2+g_gap_starr^2+pie^2+pie_starr^2+c_gap_cu*g_gap_cu+s_gap*(g_gap-g_gap_starr);
        

    @#elseif OBJECTIVE == "EQUAL_WEIGHT"
    
        planner_objective (1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2*s_gap^2+1/2*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);

    @#elseif OBJECTIVE == "UNION"
    
%         planner_objective EPSILON*(h*LAMBDA+(1-h)*LAMBDA_starr)*pie_cu^2+PHI*y_gap_cu^2+GAMMA*DELTA*g_gap_cu^2+SIGMA*(1-DELTA)*c_gap_cu^2;
        planner_objective pie_cu^2+PHI*y_gap_cu^2+GAMMA*DELTA*g_gap_cu^2+SIGMA*(1-DELTA)*c_gap_cu^2;



    @#endif

%--------------------  IRFs under Optimal Commitment  --------------------%

    ramsey_model(instruments=(ii_cu,g_gap,g_gap_starr),planner_discount=BETA);

    steady;
    check;
    stoch_simul(irf_shocks=(eps_a_starr),nograph,irf=200);

%---------------------------------  OSR  ---------------------------------%

@#elseif POLICY == "OSR"
%     stoch_simul(irf_shocks=(eps_a_starr),nograph,irf=200);

%--------------------------  Check Determinacy  --------------------------%

    estimated_params;
    @#if OSR_RULE_SCOPE =="NATIONAL"

%             FP_y_gapH, 0, -10, 10;
            FP_pieH, 0, -10, 10;

%             FP_y_gapF_starr, 0, -10, 10;
            FP_pieF_starr, 0, -10, 10;
    
    @#elseif OSR_RULE_SCOPE == "GLOBAL"

            FP_y_gapH, 0, -10, 10;
            FP_y_gapF, 0, -10, 10;
            FP_pieH, 0, -10, 10;
            FP_pieF, 0, -10, 10;
            FP_s_gap, 0, -10, 10;

            FP_y_gapH_starr, 0, -10, 10;
            FP_y_gapF_starr, 0, -10, 10;
            FP_pieH_starr, 0, -10, 10;
            FP_pieF_starr, 0, -10, 10;
            FP_s_gap_starr, 0, -10, 10;
   @#endif
   end;

    options_.varobs = M_.endo_names; 
    dynare_sensitivity;

%----------------------------  OSR Objective  ----------------------------%
    
    optim_weights;
    @#if OBJECTIVE == "POP_WEIGHT"

%         pie h*EPSILON/LAMBDA;
%         pie_starr (1-h)*EPSILON/LAMBDA;
%         y_gap h*PHI;
%         y_gap_starr (1-h)*PHI;
%         c_gap h*(1-DELTA)*SIGMA;
%         c_gap_starr (1-h)*(1-DELTA)*SIGMA;
%         g_gap h*DELTA*GAMMA;
%         g_gap_starr (1-h)*DELTA*GAMMA;
%         s_gap (1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2;

% Try Beetsma
        y_gap_cu (1-DELTA)*(SIGMA*(1-DELTA)*PHI);
        s_gap h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA));
        g_gap h*DELTA*(GAMMA+PHI*DELTA);
        g_gap_starr (1-h)*DELTA*(GAMMA+PHI*DELTA);
        pie h*EPSILON/LAMBDA;
        pie_starr (1-h)*EPSILON/LAMBDA_starr;
        c_gap_cu,g_gap_cu 2*(1-DELTA)*PHI;
        s_gap,g_gap_r 2*h*(1-h)*(1-DELTA)*DELTA*PHI;

    @#elseif OBJECTIVE == "EQUAL_WEIGHT"

        pie 1*EPSILON/LAMBDA;
        pie_starr 1*EPSILON/LAMBDA;
        y_gap 1*PHI;
        y_gap_starr 1*PHI;
        c_gap 1*(1-DELTA)*SIGMA;
        c_gap_starr 1*(1-DELTA)*SIGMA;
        g_gap h*DELTA*GAMMA;
        g_gap_starr 1*DELTA*GAMMA;
        s_gap (1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2;

    @#elseif OBJECTIVE == "UNION"

        y_gap_cu 1;
        g_gap_cu 1;
        c_gap_cu 1;
        pie_cu 1;

   @#endif
   end;

%---------------------  OSR Parameters to Optimize  ----------------------%
   
   @#if OSR_RULE_SCOPE =="NATIONAL"

        osr_params 
%             FP_y_gapH
            FP_pieH

%             FP_y_gapF_starr
            FP_pieF_starr
        ;

        osr_params_bounds;
%             FP_y_gapH, -10, 10;
            FP_pieH, -10,10;

%             FP_y_gapF_starr, -10,10;
            FP_pieF_starr, -10, 10;
        end;

   @#elseif OSR_RULE_SCOPE =="GLOBAL"

        osr_params 
            FP_y_gapH
            FP_y_gapF
            FP_pieH
            FP_pieF
            FP_s_gap

            FP_y_gapH_starr
            FP_y_gapF_starr
            FP_pieH_starr
            FP_pieF_starr
            FP_s_gap_starr
        ;

        osr_params_bounds;
            FP_y_gapH, -10, 10;
            FP_y_gapF, -10, 10;
            FP_pieH, -10,10;
            FP_pieF, -10, 10;
            FP_s_gap, -10, 10;

            FP_y_gapH_starr, -10, 10;
            FP_y_gapF_starr, -10,10;
            FP_pieH_starr, -10, 10;
            FP_pieF_starr, -10, 10;
            FP_s_gap_starr, -10, 10;
        end;

   @#endif    
  
%---------------------------  IRFs under OSR  ----------------------------%
    
    steady;
    check;
    osr(opt_algo=9,tex,nograph,irf_shocks=(eps_a_starr),irf=200);
    oo_.osr.optim_params;

@#endif



%-------------------------------------------------------------------------%
%--------------------------  WELFARE ANALYSIS  ---------------------------%
%-------------------------------------------------------------------------%

%----------------------------  Output Folder  ----------------------------%

@#if POLICY == "RAMSEY"
    
    pol_name="@{POLICY} - @{OBJECTIVE}"

@#elseif POLICY == "OSR"

    pol_name="@{POLICY} - @{OBJECTIVE} - @{OSR_RULE_SCOPE}"

@#endif

calibration_name="h_"+h*100+" - ALPHA_bar_"+ALPHA_bar*100+" - THETA_"+THETA*100+" - THETA_starr_"+THETA_starr*100+" - DELTA_"+DELTA*100

@#if POLICY == "RAMSEY"
    
    folder_name = "OUTPUT/"+calibration_name+"/"+"@{OBJECTIVE}/"+"@{POLICY}"

@#elseif POLICY == "OSR"

    folder_name = "OUTPUT/"+calibration_name+"/"+"@{OBJECTIVE}/"+"@{POLICY} - @{OSR_RULE_SCOPE}"

@#endif


% Create folder to store output
mkdir(folder_name)

%-------------------------------  Utility  -------------------------------%

T_irf=options_.irf

% Call an external function to compute utility based on IRFs
@#if POLICY == "OSR"

    Utility = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)))
    writematrix(Utility, folder_name+"/Utility.txt")

@#endif


%---------------------------------  CEV  ---------------------------------%

% Call an external function to compute CEV.
% From benchmark (i.e Ramsey) compute utility for -10% to -0% CEV.

@#if POLICY == "RAMSEY"
    W_000 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(1.00,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_005 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.995,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_010 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.990,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_015 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.985,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_020 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.980,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_025 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.975,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_030 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.970,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_035 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.965,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_040 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.960,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_045 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.955,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_050 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.950,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_055 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.945,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_060 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.940,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_065 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.935,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_070 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.930,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_075 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.925,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_080 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.920,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_085 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.915,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_090 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.910,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_095 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.905,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_100 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.900,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    
    W_000_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(1.00,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_005_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.995,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_010_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.990,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_015_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.985,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_020_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.980,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_025_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.975,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_030_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.970,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_035_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.965,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_040_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.960,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_045_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.955,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_050_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.950,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_055_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.945,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_060_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.940,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_065_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.935,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_070_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.930,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_075_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.925,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_080_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.920,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_085_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.915,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_090_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.910,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_095_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.905,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    W_100_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.900,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
    CEV_table=table([W_000;W_005;W_010;W_015;W_020;W_025;W_030;W_035;W_040;W_045;W_050;W_055;W_060;W_065;W_070;W_075;W_080;W_085;W_090;W_095;W_100],[W_000_2;W_005_2;W_010_2;W_015_2;W_020_2;W_025_2;W_030_2;W_035_2;W_040_2;W_045_2;W_050_2;W_055_2;W_060_2;W_065_2;W_070_2;W_075_2;W_080_2;W_085_2;W_090_2;W_095_2;W_100_2],'VariableNames',{'CEV_Cons','CEV_ConsGov'},'RowNames',{'0.0%','0.5%','1.0%','1.5%','2.0%','2.5%','3.0%','3.5%','4.0%','4.5%','5.0%','5.5%','6.0%','6.5%','7.0%','7.5%','8.0%','8.5%','9.0%','9.5%','10.0%'})

    writetable(CEV_table, folder_name+"/CEV_benchmark.txt") 
    W_000_nat = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(1.00,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_nat_eps_a_starr+log(C0))/h,exp(n_nat_eps_a_starr+log(N0))/h,exp(g_nat_eps_a_starr+log(G0))/h,exp(c_nat_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_nat_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_nat_starr_eps_a_starr+log(G0_starr))/(1-h)))
@#endif


%--------------------------  Quadratic Loss  -----------------------------%

% Quadratic loss under the chosen policy regime
@#if OBJECTIVE == "POP_WEIGHT"
        
    Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2*s_gap_eps_a_starr.^2+h/2*(EPSILON/LAMBDA*pie_eps_a_starr.^2+PHI*y_gap_eps_a_starr.^2+GAMMA*DELTA*g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_eps_a_starr.^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2+PHI*y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*g_gap_starr_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_starr_eps_a_starr.^2)));
        

@#elseif OBJECTIVE == "EQUAL_WEIGHT"
    
    Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2*s_gap_eps_a_starr.^2+1/2*(EPSILON/LAMBDA*pie_eps_a_starr.^2+PHI*y_gap_eps_a_starr.^2+GAMMA*DELTA*g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_eps_a_starr.^2)+1/2*(EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2+PHI*y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*g_gap_starr_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_starr_eps_a_starr.^2)));

@#endif

writematrix(Loss, folder_name+"/Loss.txt")

%-------------------------  Optimal Parameters  --------------------------%

% Optimal parameters of OSR
@#if POLICY == "OSR"
 
    writetable(rows2vars(struct2table(oo_.osr.optim_params)), folder_name+"/OSR_param.txt")
        
@#endif


%-------------------------------------------------------------------------%
%-------------------------------  PLOTS  ---------------------------------%
%-------------------------------------------------------------------------%

%---------------------------- Plot options  ------------------------------%

T_plot=40
t = 1:1:T_plot;
zeroline = ones(T_plot,1)*0;

%------------------------  Plot National Gaps  ---------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % 
Home=plot(t,a_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,a_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Productivity : $$a_t$$ and $$a_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');

subplot(3,3,2); %
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$ and $$\tilde c_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,3); %
plot(t,n_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor Gap : $$\tilde n_t$$ and $$\tilde n_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,4); %
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$ and $$\tilde g_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,5); %
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$ and $$\tilde y_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,6); %
plot(t,f_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Fiscal Stance Gap : $$\tilde f_t$$ and $$\tilde f_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,7); %
plot(t,pie_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,pie_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Consumer price inflation : $$\pi_{H,t}$$ and $$\pi_{F,t}^*$$','interpreter','latex','FontSize',10);

subplot(3,3,8); %
plot(t,s_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,s_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Terms of Trade Gap : $$\tilde s_t$$ and $$\tilde s_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,9); %
plot(t,ii_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Interest Rate Gap : $$\tilde r_t$$ and $$\tilde r_t^*$$','interpreter','latex','FontSize',10);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA) ', $$\theta^*$$ = ' num2str(THETA_starr) ', $$\delta$$ = ' num2str(DELTA)],'FontSize',10)

% Save figure
figure_name = "National_gaps"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

%---------------------  Plot Currency Union Gaps  ------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,2,1); % 
Union=plot(t,c_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Union','Color','magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Union Consumption Gap : $$\tilde c_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Union],{'Union'},'location','southeast');

% Save figure
figure_name = "Union_gaps"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")


%-----------------------------  Plot c,y,g  ------------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % 
Home=plot(t,c_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,c_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$ and $$\hat c_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');

subplot(3,3,4); %
plot(t,c_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$ and $$\hat{\bar c}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,7); %
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$ and $$\tilde c_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,2); %
plot(t,y_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$ and $$\hat y_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,5); %
plot(t,y_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$ and $$\hat{\bar y}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,8); %
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$ and $$\tilde y_t^*$$','interpreter','latex','FontSize',10);
% 
% subplot(3,3,2); %
% plot(t,n_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
% plot(t,n_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
% plot(t,zeroline,'LineWidth',0.5,'Color','Black')
% title('Labor : $$\hat n_t$$ and $$\hat n_t^*$$','interpreter','latex','FontSize',10);
% 
% subplot(3,3,5); %
% plot(t,n_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
% plot(t,n_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
% plot(t,zeroline,'LineWidth',0.5,'Color','Black')
% title('Natural Labor : $$\hat{\bar n}_t$$ and $$\hat{\bar n}_t^*$$','interpreter','latex','FontSize',10);
% 
% subplot(3,3,8); %
% plot(t,n_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
% plot(t,n_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
% plot(t,zeroline,'LineWidth',0.5,'Color','Black')
% title('Labor Gap : $$\tilde n_t$$ and $$\tilde n_t^*$$','interpreter','latex','FontSize',10);


subplot(3,3,3); %
plot(t,g_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$ and $$\hat g_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,6); %
plot(t,g_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$ and $$\hat{\bar g}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,9); %
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$ and $$\tilde g_t^*$$','interpreter','latex','FontSize',10);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA) ', $$\theta^*$$ = ' num2str(THETA_starr) ', $$\delta$$ = ' num2str(DELTA)],'FontSize',10)


% Save figure
figure_name = "y_c_g"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

%----------------------------  Plot n,f,pie  -----------------------------%

%-------------------------  Plot s,pie_cu,y_cu  --------------------------%



figure('NumberTitle', 'off','visible','off') % Output

subplot(3,4,1); %
Home=plot(t,n_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Foreign=plot(t,n_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor : $$\hat n_t$$ and $$\hat n_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');

subplot(3,4,5); %
plot(t,n_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Labor : $$\hat{\bar n}_t$$ and $$\hat{\bar n}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,9); %
plot(t,n_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor Gap : $$\tilde n_t$$ and $$\tilde n_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,2); %
plot(t,y_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$ and $$\hat y_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,6); %
plot(t,y_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$ and $$\hat{\bar y}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,10); %
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$ and $$\tilde y_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,3); %
plot(t,c_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
plot(t,c_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$ and $$\hat c_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,7); %
plot(t,c_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$ and $$\hat{\bar c}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,11); %
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$ and $$\tilde c_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,4); %
plot(t,g_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$ and $$\hat g_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,8); %
plot(t,g_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$ and $$\hat{\bar g}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,4,12); %
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$ and $$\tilde g_t^*$$','interpreter','latex','FontSize',10);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA) ', $$\theta^*$$ = ' num2str(THETA_starr) ', $$\delta$$ = ' num2str(DELTA)],'FontSize',10)

figure_name = "n_y_c_g"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

write_latex_dynamic_model;
write_latex_original_model;