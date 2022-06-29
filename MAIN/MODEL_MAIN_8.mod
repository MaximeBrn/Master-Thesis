% In this file we include 3 external .mod files
% GAP_EQUATIONS.mod, STICKY_PRICE.mod and FLEXIBLE_PRICE.mod.
% We specicy the fiscal / monetary regimes.
% That adds the equations that are lacking in STICKY_PRICE.mod.


%-------------------------------------------------------------------------%
%----------------------------  POLICY REGIME  ----------------------------%
%-------------------------------------------------------------------------%

@#define POLICY = "OSR" // Are FP and MP "RAMSEY" or "OSR"
@#define OBJECTIVE = "POP_WEIGHT" // "EQUAL_WEIGHT" or "POP_WEIGHT" 
@#define OSR_MP_RULE = "TAYLOR" // "BLANCHARD" or "TAYLOR"
@#define OSR_FP_RULE = "MB" // "OUTPUT_GAP_ONLY" or "BEETSMA" or "BEETSMA_NATIONAL" or "KIRSANOVA" or "KIRSANOVA_NATIONAL" or "MB" or "MB_NATIONAL"
@#define OSR_FP_FOREIGN = "BOTH_ACTIVE" // "BOTH_ACTIVE" or "FOREIGN_PASSIVE"
@#define OSR_FP_HOME = "HOME_COORDINATED" // "HOME_COORDINATED" or "HOME_UNCOORDINATED"

%-------------------------------------------------------------------------%
%--------------------------- DECLARE VARIABLES ---------------------------%
%-------------------------------------------------------------------------%

%------------------------  Endogeneous Variables -------------------------%

var

    a               ${a}$         (long_name='Home productivity (log dev ss)')
    a_starr         ${a^*}$        (long_name='Foreign productivity (log dev ss)')
    a_cu

;

%-------------------------  Exogeneous Variables -------------------------%

varexo  
  eps_a         ${\epsilon_a}$          (long_name='Home technology shock')
  eps_a_starr   ${\epsilon_a^*}$    (long_name='Foreign technology shock')
;

shocks;
var eps_a = 1; 
var eps_a_starr = 1; 
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

RHOG

@#if POLICY == "OSR"
        
    @#if OSR_FP_RULE == "BEETSMA"
        
        FP_c_gapCU
        FP_s_gapH

    @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
            FP_c_gapCU_starr
            FP_s_gapF_starr
    @#endif

    @#elseif OSR_FP_RULE == "BEETSMA_NATIONAL"

        FP_c_gapH
        FP_s_gapH

        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        FP_c_gapF_starr
        FP_s_gapF_starr
        @#endif
        
    @#elseif OSR_FP_RULE == "KIRSANOVA"

        FP_y_gapH
        FP_y_gapF
        FP_pieH
        FP_pieF
        
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        FP_y_gapH_starr
        FP_y_gapF_starr
        FP_pieH_starr
        FP_pieF_starr
        @#endif

    @#elseif OSR_FP_RULE == "KIRSANOVA_NATIONAL"

        FP_y_gapH
        FP_pieH
        
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        FP_y_gapF_starr
        FP_pieF_starr
        @#endif

    @#elseif OSR_FP_RULE == "MB"

        FP_c_gapH
        FP_c_gapF
        FP_s_gapH
        
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        FP_c_gapH_starr
        FP_c_gapF_starr
        FP_s_gapF_starr
        @#endif

    @#elseif OSR_FP_RULE == "MB_NATIONAL"

        FP_c_gapH
        FP_s_gapH
        
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        FP_c_gapF_starr
        FP_s_gapF_starr
        @#endif
            
    @#elseif OSR_FP_RULE == "OUTPUT_GAP_ONLY"

        FP_y_gapH
        
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        FP_y_gapF_starr
        @#endif

    @#endif

@#endif

%--------------------  Exogeneous Process Parameters  --------------------%

    RHOA
;

%-------------------------------------------------------------------------%
%--------------------------- PARAMETERS VALUE ----------------------------%
%-------------------------------------------------------------------------%

%---------------------------  Union Features  ----------------------------%

h               =   0.75; % 0.5 or 0.75
ALPHA_bar       =   0.6; % 0.4 or 0.6
THETA           =   0.75; % 0.5 or 0.75

%---------------------------  Fixed Parameters  --------------------------%

BETA            =   0.99;
SIGMA           =   3;
PHI             =   1;
GAMMA           =   1;
ETA             =   4.5;
EPSILON         =   6;

THETA_starr     =   0.75;

DELTA           =   0.25;

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

CHI_C           =   (1-DELTA)^SIGMA;
CHI_G           =   DELTA^GAMMA;

N0          =   h;
N0_starr    =   1-h;
C0          =   (1-DELTA)*N0;
C0_starr   =    (1-DELTA)*N0_starr;
G0          =   DELTA*N0;
G0_starr    =   DELTA*N0_starr;

RHOA        =   0.95;
RHOG        =   0.92;


% @#if POLICY == "OSR"    

%     @#if OSR_FP_RULE == "BEETSMA"
%         
%         FP_c_gapCU
%         FP_s_gapH
% 
%         FP_c_gapCU_starr
%         FP_s_gapF_starr
% 
% 
%     @#elseif OSR_FP_RULE == "BEETSMA_NATIONAL"
% 
%         FP_c_gapH
%         FP_s_gapH
% 
%         FP_c_gapF_starr
%         FP_s_gapF_starr
% 
%     @#elseif OSR_FP_RULE == "KIRSANOVA"
% 
%         FP_y_gapH
%         FP_y_gapF
%         FP_pieH
%         FP_pieF
% 
%         FP_y_gapH_starr
%         FP_y_gapF_starr
%         FP_pieH_starr
%         FP_pieF_starr
% 
%     @#elseif OSR_FP_RULE == "KIRSANOVA_NATIONAL"
% 
%         FP_y_gapH
%         FP_pieH
% 
%         FP_y_gapF_starr
%         FP_pieF_starr

%     @#elseif OSR_FP_RULE == "MB"
% 
%         FP_c_gapH=7;
%         FP_c_gapF=-7;
%         FP_s_gapH=9;
% 
%         FP_c_gapH_starr=7;
%         FP_c_gapF_starr=-7;
%         FP_s_gapF_starr=9;

%     @#elseif OSR_FP_RULE == "MB_NATIONAL"
% 
%         FP_c_gapH
%         FP_s_gapH
% 
%         FP_c_gapF_starr
%         FP_s_gapF_starr
%             
%     @#endif

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

    @#if OSR_MP_RULE == "TAYLOR"

        ii_cu   =   r_nat_cu    +1.5 * pie_cu   +0.5 * y_gap_cu ; % Taylor rule
   
   @#elseif OSR_MP_RULE == "BLANCHARD"
    
        ii_cu   =   r_nat_cu    +2.5 * pie_cu   +0.125 * y_gap_cu   +0.7 * ii_cu(-1); % Blanchard rule

   @#endif 
    
@#endif

%----------------------------  Fiscal Policy  ----------------------------%

@#if POLICY == "OSR"

    @#if OSR_FP_RULE == "BEETSMA"
        
        g_gap       =   RHOG * g_gap(-1)          +   FP_c_gapCU * c_gap_cu         +  FP_s_gapH * s_gap;
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"            
        g_gap_starr =   RHOG * g_gap_starr(-1)    +   FP_c_gapCU_starr * c_gap_cu   +  FP_s_gapF_starr * s_gap_starr;
        @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
        g_gap_starr=0; 
        @#endif

    @#elseif OSR_FP_RULE == "BEETSMA_NATIONAL"

        g_gap       =   RHOG * g_gap(-1)        +FP_c_gapH * c_gap              +FP_s_gapH * s_gap;
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        g_gap_starr =   RHOG * g_gap_starr(-1)  +FP_c_gapF_starr * c_gap_starr  +FP_s_gapF_starr * s_gap_starr;
        @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
        g_gap_starr=0; 
        @#endif

    @#elseif OSR_FP_RULE == "KIRSANOVA"

        g_gap       =   RHOG * g_gap(-1)        +FP_y_gapH * y_gap          +FP_y_gapF * y_gap_starr        +FP_pieH * pie          +FP_pieF * pie_starr;
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        g_gap_starr =   RHOG * g_gap_starr(-1)  +FP_y_gapH_starr * y_gap    +FP_y_gapF_starr * y_gap_starr  +FP_pieH_starr * pie    +FP_pieF_starr * pie_starr;
        @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
%         g_gap_starr=0;
        f_gap_starr=0; 
        @#endif

    @#elseif OSR_FP_RULE == "KIRSANOVA_NATIONAL"

        g_gap       =   RHOG * g_gap(-1)        +FP_y_gapH * y_gap              +FP_pieH * pie;
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        g_gap_starr =   RHOG * g_gap_starr(-1)  +FP_y_gapF_starr * y_gap_starr  +FP_pieF_starr * pie_starr;
        @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
        g_gap_starr=0; 
        @#endif

    @#elseif OSR_FP_RULE == "MB"

        f_gap       =   RHOG * f_gap(-1)        +FP_c_gapH * (c_gap-y_gap)          +FP_c_gapF * (c_gap_starr-y_gap_starr)          +FP_s_gapH * s_gap;
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        f_gap_starr =   RHOG * f_gap_starr(-1)  +FP_c_gapH_starr * (c_gap-y_gap)    +FP_c_gapF_starr * (c_gap_starr-y_gap_starr)    +FP_s_gapF_starr * s_gap_starr;
        @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
        f_gap_starr=0; 
        @#endif

    @#elseif OSR_FP_RULE == "MB_NATIONAL"

        f_gap       =   RHOG * f_gap(-1)        +FP_c_gapH * (c_gap-y_gap)                      +FP_s_gapH * s_gap;
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        f_gap_starr =   RHOG * f_gap_starr(-1)  +FP_c_gapF_starr * (c_gap_starr-y_gap_starr)    +FP_s_gapF_starr * s_gap_starr;
        @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
        f_gap_starr=0; 
        @#endif
    
        @#elseif OSR_FP_RULE == "OUTPUT_GAP_ONLY"

        g_gap       =   RHOG * g_gap(-1)        +FP_y_gapH * y_gap;
        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        g_gap_starr =   RHOG * g_gap_starr(-1)  +FP_y_gapF_starr * y_gap_starr;
        @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
        g_gap_starr=0; 
        @#endif

    @#endif

@#endif

%-------------------------  Exogeneous process  --------------------------%

a = RHOA*a(-1) - eps_a; 
a_starr = RHOA*a_starr(-1) - eps_a_starr;
a_cu = h*a + (1-h)*a_starr;

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
        
        planner_objective (1-DELTA)*(SIGMA+(1-DELTA)*PHI)*c_gap_cu^2 + h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA))*s_gap^2 + h*DELTA*(GAMMA+PHI*DELTA)*g_gap^2 + (1-h)*DELTA*(GAMMA+PHI*DELTA)*g_gap_starr^2 + h*EPSILON/LAMBDA*pie^2 + (1-h)*EPSILON/LAMBDA_starr*pie_starr^2 + 2*(1-DELTA)*PHI*c_gap_cu*g_gap_cu + 2*h*(1-h)*(1-DELTA)*DELTA*PHI*s_gap*(g_gap-g_gap_starr);

    @#elseif OBJECTIVE == "EQUAL_WEIGHT"
    
        planner_objective (1-DELTA)*(SIGMA+(1-DELTA)*PHI)*c_gap_cu^2 + h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA))*s_gap^2 + 1*DELTA*(GAMMA+PHI*DELTA)*g_gap^2 + 1*DELTA*(GAMMA+PHI*DELTA)*g_gap_starr^2 + 1*EPSILON/LAMBDA*pie^2 + 1*EPSILON/LAMBDA_starr*pie_starr^2 + 2*(1-DELTA)*PHI*c_gap_cu*g_gap_cu + 2*h*(1-h)*(1-DELTA)*DELTA*PHI*s_gap*(g_gap-g_gap_starr);

    @#endif

%--------------------  IRFs under Optimal Commitment  --------------------%

    ramsey_model(instruments=(ii_cu,g_gap,g_gap_starr),planner_discount=BETA);
    
    steady;
    check;
    stoch_simul(irf_shocks=(eps_a_starr),nograph,nocorr,nodecomposition,nomoments,irf=200);

%---------------------------------  OSR  ---------------------------------%

@#elseif POLICY == "OSR"

%--------------------------  Check Determinacy  --------------------------%

    estimated_params;

    @#if OSR_FP_RULE == "BEETSMA"
        
        FP_c_gapCU, 0, -10, 10;
        FP_s_gapH, 0, -10, 10;

        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"       
            FP_c_gapCU_starr, 0, -10, 10;
            FP_s_gapF_starr, 0, -10, 10;
        @#endif

    @#elseif OSR_FP_RULE == "BEETSMA_NATIONAL"

        FP_c_gapH, 0, -10, 10;
        FP_s_gapH, 0, -10, 10;

        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
        FP_c_gapF_starr, 0, -10, 10;
        FP_s_gapF_starr, 0, -10, 10;
        @#endif

    @#elseif OSR_FP_RULE == "KIRSANOVA"

        FP_y_gapH, 0, -10, 10;
        FP_y_gapF, 0, -10, 10;
        FP_pieH, 0, -10, 10;
        FP_pieF, 0, -10, 10;

        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
        FP_y_gapH_starr, 0, -10, 10;
        FP_y_gapF_starr, 0, -10, 10;
        FP_pieH_starr, 0, -10, 10;
        FP_pieF_starr, 0, -10, 10;
        @#endif

    @#elseif OSR_FP_RULE == "KIRSANOVA_NATIONAL"

        FP_y_gapH, 0, -10, 10;
        FP_pieH, 0, -10, 10;

        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
        FP_y_gapF_starr, 0, -10, 10;
        FP_pieF_starr, 0, -10, 10;
        @#endif

    @#elseif OSR_FP_RULE == "MB"

        FP_c_gapH, 0, -10, 10;
        FP_c_gapF, 0, -10, 10;
        FP_s_gapH, 0, -10, 10;

        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
        FP_c_gapH_starr, 0, -10, 10;
        FP_c_gapF_starr, 0, -10, 10;
        FP_s_gapF_starr, 0, -10, 10;
        @#endif

    @#elseif OSR_FP_RULE == "MB_NATIONAL"

        FP_c_gapH, 0, -10, 10;
        FP_s_gapH, 0, -10, 10;

        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
        FP_c_gapF_starr, 0, -10, 10;
        FP_s_gapF_starr, 0, -10, 10;
        @#endif
            
    @#elseif OSR_FP_RULE == "OUTPUT_GAP_ONLY"

        FP_y_gapH, 0, -10, 10;

        @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
        FP_y_gapF_starr, 0, -10, 10;
        @#endif

    @#endif
    end;

    options_.varobs = M_.endo_names; 
    dynare_sensitivity;

%----------------------------  OSR Objective  ----------------------------%
    optim_weights;
        @#if OSR_FP_HOME == "HOME_COORDINATED"
    
            @#if OBJECTIVE == "POP_WEIGHT"
        
                c_gap_cu            (1-DELTA)*(SIGMA+(1-DELTA)*PHI);
                s_gap               h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA));
                g_gap               h*DELTA*(GAMMA+PHI*DELTA);
                g_gap_starr         (1-h)*DELTA*(GAMMA+PHI*DELTA);
                pie                 h*EPSILON/LAMBDA;
                pie_starr           (1-h)*EPSILON/LAMBDA_starr;
                c_gap_cu,g_gap_cu   2*(1-DELTA)*PHI;
                s_gap,g_gap_r       2*h*(1-h)*(1-DELTA)*DELTA*PHI;
        
        
        
            @#elseif OBJECTIVE == "EQUAL_WEIGHT"
        
                c_gap_cu            (1-DELTA)*(SIGMA+(1-DELTA)*PHI);
                s_gap               h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA));
                g_gap               DELTA*(GAMMA+PHI*DELTA);
                g_gap_starr         DELTA*(GAMMA+PHI*DELTA);
                pie                 EPSILON/LAMBDA;
                pie_starr           EPSILON/LAMBDA_starr;
                c_gap_cu,g_gap_cu   2*(1-DELTA)*PHI;
                s_gap,g_gap_r       2*h*(1-h)*(1-DELTA)*DELTA*PHI;
        
            @#endif
    
       @#elseif OSR_FP_HOME == "HOME_UNCOORDINATED" && OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
       
            y_gap   1;
            c_gap   1;
            g_gap   1;
            pie     1;
       
       @#endif
   end;

%---------------------  OSR Parameters to Optimize  ----------------------%

        
    @#if OSR_FP_RULE == "BEETSMA"
        
        osr_params 
            FP_c_gapCU
            FP_s_gapH
    
             @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"      
                 FP_c_gapCU_starr
                 FP_s_gapF_starr
            @#endif
        ;

        osr_params_bounds;
            FP_c_gapCU, -10, 10;
            FP_s_gapH, -10, 10;
             
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"       
                FP_c_gapCU_starr, -10, 10;
                FP_s_gapF_starr, -10, 10;
            @#endif
        end;

    @#elseif OSR_FP_RULE == "BEETSMA_NATIONAL"
        
        osr_params 
            FP_c_gapH
            FP_s_gapH
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_c_gapF_starr
            FP_s_gapF_starr
            @#endif
        ;
    
        osr_params_bounds;
            FP_c_gapH, -10, 10;
            FP_s_gapH, -10, 10;
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_c_gapF_starr, -10, 10;
            FP_s_gapF_starr, -10, 10;
            @#endif
        end;

    @#elseif OSR_FP_RULE == "KIRSANOVA"
    
        osr_params
            FP_y_gapH
            FP_y_gapF
            FP_pieH
            FP_pieF
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_y_gapH_starr
            FP_y_gapF_starr
            FP_pieH_starr
            FP_pieF_starr
            @#endif
        ;
    
        osr_params_bounds;
            FP_y_gapH, -10, 10;
            FP_y_gapF, -10, 10;
            FP_pieH, -10, 10;
            FP_pieF, -10, 10;
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_y_gapH_starr, -10, 10;
            FP_y_gapF_starr, -10, 10;
            FP_pieH_starr, -10, 10;
            FP_pieF_starr, -10, 10;
            @#endif
        end;

    @#elseif OSR_FP_RULE == "KIRSANOVA_NATIONAL"

        osr_params
            FP_y_gapH
            FP_pieH
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_y_gapF_starr
            FP_pieF_starr
            @#endif
        ;
    
        osr_params_bounds;
            FP_y_gapH, -10, 10;
            FP_pieH, -10, 10;
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_y_gapF_starr, -10, 10;
            FP_pieF_starr, -10, 10;
            @#endif
        end;

    @#elseif OSR_FP_RULE == "MB"

        osr_params
            FP_c_gapH
            FP_c_gapF
            FP_s_gapH
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_c_gapH_starr
            FP_c_gapF_starr
            FP_s_gapF_starr
            @#endif
        ;
    
        osr_params_bounds;
            FP_c_gapH, -10, 10;
            FP_c_gapF, -10, 10;
            FP_s_gapH, -10, 10;
            
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_c_gapH_starr, -10, 10;
            FP_c_gapF_starr, -10, 10;
            FP_s_gapF_starr, -10, 10;
            @#endif
        end;

    @#elseif OSR_FP_RULE == "MB_NATIONAL"

        osr_params
            FP_c_gapH
            FP_s_gapH
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_c_gapF_starr
            FP_s_gapF_starr
            @#endif
        ;
    
        osr_params_bounds;
            FP_c_gapH, -10, 10;
            FP_s_gapH, -10, 10;
   
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_c_gapF_starr, -10, 10;
            FP_s_gapF_starr, -10, 10;
            @#endif
        end;
    
    @#elseif OSR_FP_RULE == "OUTPUT_GAP_ONLY"

        osr_params
            FP_y_gapH
    
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_y_gapF_starr
            @#endif
        ;
    
        osr_params_bounds;
            FP_y_gapH, -10, 10;
   
            @#if OSR_FP_FOREIGN == "BOTH_ACTIVE" 
            FP_y_gapF_starr, -10, 10;
            @#endif
        end;        
    @#endif    
  
%---------------------------  IRFs under OSR  ----------------------------%
    
    steady;
    check;
    osr(opt_algo=9,tex,nograph,nocorr,nomoments,irf_shocks=(eps_a_starr),irf=200);
    oo_.osr.optim_params;

@#endif



%-------------------------------------------------------------------------%
%--------------------------  WELFARE ANALYSIS  ---------------------------%
%-------------------------------------------------------------------------%

%----------------------------  Output Folder  ----------------------------%

@#if POLICY == "RAMSEY"
    
    pol_name="@{POLICY} - @{OBJECTIVE}"

@#elseif POLICY == "OSR"

    @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
        
        pol_name="@{POLICY} - @{OBJECTIVE} - @{OSR_MP_RULE} - @{OSR_FP_RULE} - @{OSR_FP_FOREIGN}"

    @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"

         pol_name="@{POLICY} - @{OBJECTIVE} - @{OSR_MP_RULE} - @{OSR_FP_RULE} - @{OSR_FP_FOREIGN} - @{OSR_FP_HOME}"   

    @#endif

@#endif

calibration_name="h_"+h+" - ALPHA_bar_"+ALPHA_bar+" - THETA_"+THETA
@#if POLICY == "RAMSEY"
    
    folder_name = "OUTPUT/"+calibration_name+"/"+"@{OBJECTIVE}/"+"@{POLICY}"

@#elseif POLICY == "OSR"

    benchmark_folder_name = "OUTPUT/"+calibration_name+"/"+"@{OBJECTIVE}/"+"RAMSEY"
    
    @#if OSR_FP_FOREIGN == "BOTH_ACTIVE"
    
        folder_name = "OUTPUT/"+calibration_name+"/"+"@{OBJECTIVE}/"+"@{POLICY} - @{OSR_MP_RULE} -  @{OSR_FP_RULE} -  @{OSR_FP_FOREIGN}"

    @#elseif OSR_FP_FOREIGN == "FOREIGN_PASSIVE"
    
        folder_name = "OUTPUT/"+calibration_name+"/"+"@{OBJECTIVE}/"+"@{POLICY} - @{OSR_MP_RULE} -  @{OSR_FP_RULE} -  @{OSR_FP_FOREIGN} -  @{OSR_FP_HOME}"
    
    @#endif

@#endif

% Create folder to store output
mkdir(folder_name)

%--------------------------  Quadratic Loss  -----------------------------%

T_irf=options_.irf

% Compute the quadratic loss under for the chosen policy objective
@#if OBJECTIVE == "POP_WEIGHT"
        
%     Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2*s_gap_eps_a_starr.^2+h/2*(EPSILON/LAMBDA*pie_eps_a_starr.^2+PHI*y_gap_eps_a_starr.^2+GAMMA*DELTA*g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_eps_a_starr.^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2+PHI*y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*g_gap_starr_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_starr_eps_a_starr.^2)));
      Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1-DELTA)*(SIGMA+(1-DELTA)*PHI)*c_gap_cu_eps_a_starr.^2 + h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA))*s_gap_eps_a_starr.^2 + h*DELTA*(GAMMA+PHI*DELTA)*g_gap_eps_a_starr.^2 + (1-h)*DELTA*(GAMMA+PHI*DELTA)*g_gap_starr_eps_a_starr.^2 + h*EPSILON/LAMBDA*pie_eps_a_starr.^2 + (1-h)*EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2 + 2*(1-DELTA)*PHI*c_gap_cu_eps_a_starr.*g_gap_cu_eps_a_starr + 2*h*(1-h)*(1-DELTA)*DELTA*PHI*s_gap_eps_a_starr.*g_gap_r_eps_a_starr));

@#elseif OBJECTIVE == "EQUAL_WEIGHT"
    
%     Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2*s_gap_eps_a_starr.^2+1/2*(EPSILON/LAMBDA*pie_eps_a_starr.^2+PHI*y_gap_eps_a_starr.^2+GAMMA*DELTA*g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_eps_a_starr.^2)+1/2*(EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2+PHI*y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*g_gap_starr_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_starr_eps_a_starr.^2)));
      Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1-DELTA)*(SIGMA+(1-DELTA)*PHI)*c_gap_cu_eps_a_starr.^2 + h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA))*s_gap_eps_a_starr.^2 + 1*DELTA*(GAMMA+PHI*DELTA)*g_gap_eps_a_starr.^2 + 1*DELTA*(GAMMA+PHI*DELTA)*g_gap_starr_eps_a_starr.^2 + 1*EPSILON/LAMBDA*pie_eps_a_starr.^2 + 1*EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2 + 2*(1-DELTA)*PHI*c_gap_cu_eps_a_starr.*g_gap_cu_eps_a_starr + 2*h*(1-h)*(1-DELTA)*DELTA*PHI*s_gap_eps_a_starr.*g_gap_r_eps_a_starr));

@#endif


@#if POLICY == "RAMSEY"
    
    writematrix(Loss, folder_name+"/Loss_benchmark.txt");

@#elseif POLICY == "OSR"
    
    Loss_benchmark_txt = readlines(benchmark_folder_name+"/Loss_benchmark.txt");
    Loss_benchmark = str2num(Loss_benchmark_txt(1));
    CEV = sqrt((1-BETA)/((1-DELTA)*(SIGMA+(1-DELTA)*PHI))*(Loss-Loss_benchmark))*100;
    writematrix(CEV, folder_name+"/CEV.txt");
    writematrix(Loss, folder_name+"/Loss.txt");

@#endif



%-------------------------  Optimal Parameters  --------------------------%

% Optimal parameters of OSR
@#if POLICY == "OSR"
 
    writetable(rows2vars(struct2table(oo_.osr.optim_params)), folder_name+"/OSR_param.txt")
        
@#endif


%-------------------------------------------------------------------------%
%-------------------------------  PLOTS  ---------------------------------%
%-------------------------------------------------------------------------%

%---------------------------- Plot options  ------------------------------%

T_plot=100
t = 1:1:T_plot;
zeroline = ones(T_plot,1)*0;

%---------------------------  IRFs Summary  ------------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % Productivity
Home=plot(t,a_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,a_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
Union=plot(t,a_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Union','Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Productivity : $$a_t$$, $$a_t^*$$ and $$a_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,2); % Consumption gap
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$, $$\tilde c_t^*$$ and $$\tilde c_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,3); % Labor gap
plot(t,n_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor Gap : $$\tilde n_t$$, $$\tilde n_t^*$$ and $$\tilde n_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,4); % Government consumption gap
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$, $$\tilde g_t^*$$ and $$\tilde g_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,5); % Output gap
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$, $$\tilde y_t^*$$ and $$\tilde y_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,6); % Fiscal stance gap
plot(t,f_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Fiscal Stance Gap : $$\tilde f_t$$, $$\tilde f_t^*$$ and $$\tilde f_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,7); % Inflation
plot(t,pie_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,pie_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,pie_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Producer Price Inflation : $$\pi_{H,t}$$, $$\pi_{F,t}^*$$ and $$\pi_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,8); % Interest rate
plot(t,ii_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Interest Rate Gap : $$\tilde i_t$$, $$\tilde i_t^*$$ and $$\tilde i_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,9); % Terms of trade gap
plot(t,s_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,s_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Terms of Trade Gap : $$\tilde s_t$$ and $$\tilde s_t^*$$','interpreter','latex','FontSize',10);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)],'FontSize',10)

% Save figure
figure_name = "IRFs_Summmary"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

%----------------------  IRFs Detail c,c_H,c_F  ------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % Consumption
Home=plot(t,c_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,c_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
Union=plot(t,c_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$, $$\hat c_t^*$$ and $$\hat c_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,4); % Natural consumption
plot(t,c_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$, $$\hat{\bar c}_t^*$$ and $$\hat{bar c}_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,7); % Consumption gap
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$, $$\tilde c_t^*$$ and $$\tilde c_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,2); % Consumption Home-made goods
plot(t,c_H_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
plot(t,c_H_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,c_H_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption $$\textit{Home}$$-made : $$\hat c_{H,t}$$, $$\hat c_{H,t}^*$$ and $$\hat c_{H,t}^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,5); % Natural consumption Home-made goods
plot(t,c_H_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_H_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_H_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption $$\textit{Home}$$-made : $$\hat{\bar c}_{H,t}$$, $$\hat{\bar c}_{H,t}^*$$ and $$\hat{bar c}_{H,t}^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,8); % Consumption Home-made goods gap
plot(t,c_H_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_H_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_H_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap $$\textit{Home}$$-made : $$\tilde c_{H,t}$$, $$\tilde c_{H,t}^*$$ and $$\tilde c_{H,t}^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,3); % Consumption Foreign-made goods 
plot(t,c_F_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
plot(t,c_F_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,c_F_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption $$\textit{Foreign}$$-made : $$\hat c_{F,t}$$, $$\hat c_{F,t}^*$$ and $$\hat c_{F,t}^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,6); % Natural consumption Foreign-made goods
plot(t,c_F_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_F_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_F_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption $$\textit{Foreign}$$-made : $$\hat{\bar c}_{F,t}$$, $$\hat{\bar c}_{F,t}^*$$ and $$\hat{bar c}_{F,t}^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,9); % Consumption Foreign-made goods gap
plot(t,c_F_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_F_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_F_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap $$\textit{Foreign}$$-made : $$\tilde c_{F,t}$$, $$\tilde c_{F,t}^*$$ and $$\tilde c_{F,t}^{cu}$$','interpreter','latex','FontSize',10);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)],'FontSize',10)

% Save figure
figure_name = "IRFs_Detail_c_cH_cF"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

%----------------------  IRFs Detailed g,y,f  ------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % Government consumption
Home=plot(t,g_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Foreign=plot(t,g_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Union=plot(t,g_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$, $$\hat g_t^*$$ and $$\hat g_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,4); % Natural government consumption
plot(t,g_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$, $$\hat{\bar g}_t^*$$ and $$\hat{\bar g}_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,7); % Government consumption gap
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$, $$\tilde g_t^*$$ and $$\tilde g_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,2); % Output
plot(t,y_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$, $$\hat y_t^*$$ and $$\hat y_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,5); % Natural Output
plot(t,y_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$, $$\hat{\bar y}_t^*$$ and $$\hat{\bar y}_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,8); % Output gap
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Output Gap : $$\tilde y_t$$, $$\tilde y_t^*$$ and $$\tilde y_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,3); % Fiscal stance
plot(t,f_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Fiscal stance : $$\hat f_t$$, $$\hat f_t^*$$ and $$\hat f_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,6); % Natural Fiscal stance
plot(t,f_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Fiscal stance : $$\hat{\bar f}_t$$, $$\hat{\bar f}_t^*$$ and $$\hat{\bar f}_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,9); % Fiscal stance gap
plot(t,f_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Fiscal stance Gap : $$\tilde f_t$$, $$\tilde f_t^*$$ and $$\tilde f_t^{cu}$$','interpreter','latex','FontSize',10);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)],'FontSize',10)

% Save figure
figure_name = "IRFs_Detail_g_y_f"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

%----------------------  IRFs Detailed n,s,i  ------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % Labor
Home=plot(t,n_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Foreign=plot(t,n_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Union=plot(t,n_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor : $$\hat n_t$$, $$\hat n_t^*$$ and $$\hat n_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,4); % Natural labor
plot(t,n_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Labor : $$\hat{\bar n}_t$$, $$\hat{\bar n}_t^*$$ and $$\hat{\bar n}_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,7); % Labor gap
plot(t,n_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Labor Gap : $$\tilde n_t$$, $$\tilde n_t^*$$ and $$\tilde n_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,2); % Interest rate
plot(t,ii_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Interest rate : $$\hat i_t$$, $$\hat i_t^*$$ and $$\hat i_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,5); % Natural rate
plot(t,r_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,r_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,r_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Rate : $$\hat{\bar r}_t$$, $$\hat{\bar r}_t^*$$ and $$\hat{\bar r}_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,8); % Interest rate gap
plot(t,ii_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Interest rate Gap : $$\tilde i_t$$, $$\tilde i_t^*$$ and $$\tilde i_t^{cu}$$','interpreter','latex','FontSize',10);

subplot(3,3,3); % Terms of trade
plot(t,s_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,s_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Terms of trade : $$\hat s_t$$ and $$\hat s_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,6); % Natural terms of trade
plot(t,s_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,s_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Terms of trade : $$\hat{\bar s}_t$$ and $$\hat{\bar s}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,9); % Terms of trade gap
plot(t,s_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,s_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Terms of trade Gap : $$\tilde s_t$$ and $$\tilde s_t^*$$','interpreter','latex','FontSize',10);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)],'FontSize',10)

% Save figure
figure_name = "IRFs_Detail_n_s_i"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

close all
