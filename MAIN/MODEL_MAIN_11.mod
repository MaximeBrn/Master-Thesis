% In this file we include 3 external .mod files
% GAP_EQUATIONS.mod, STICKY_PRICE.mod and FLEXIBLE_PRICE.mod.
% We specicy the fiscal / monetary regimes.
% That adds the equations that are lacking in STICKY_PRICE.mod.


%-------------------------------------------------------------------------%
%----------------------------  POLICY REGIME  ----------------------------%
%-------------------------------------------------------------------------%

@#define OBJECTIVE = "POP_WEIGHT" // "EQUAL_WEIGHT" or "POP_WEIGHT" 

@#define FP_FOREIGN = "FOREIGN_UNCONSTRAINED" // "FOREIGN_UNCONSTRAINED" or "FOREIGN_CONSTRAINED"
 
@#define POLICY = "OSR" // Are FP and MP "RAMSEY" or "OSR"

@#define OSR_MP_RULE = "BLANCHARD" // "BLANCHARD" or "TAYLOR"
@#define OSR_FP_RULE = "G_GAP_RULE" // "G_GAP_RULE" or "NX_GAP_RULE"

@#define OSR_FP_HOME = "HOME_UNION_ORIENTED" // "HOME_UNION_ORIENTED" or "HOME_DOM_ORIENTED"

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

    @#if OSR_FP_RULE == "G_GAP_RULE"

        FP_y_gapH
        FP_pieH
        
        @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED"
        FP_y_gapF_starr
        FP_pieF_starr
        @#endif
     
    @#elseif OSR_FP_RULE == "NX_GAP_RULE"

        FP_nx_gapH
        
        @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED"
        FP_nx_gapF_starr
        @#endif

    @#endif

@#endif

%--------------------  Exogeneous Process Parameters  --------------------%

    RHOA
;

%-------------------------------------------------------------------------%
%--------------------------- PARAMETERS VALUE ----------------------------%
%-------------------------------------------------------------------------%

%---------------------------  Fixed Parameters  --------------------------%

BETA            =   0.99;
SIGMA           =   3;
PHI             =   1;
GAMMA           =   1;
ETA             =   4.5;
EPSILON         =   6;

THETA_starr     =   0.75;
% THETA_starr     =   0.0001;

DELTA           =   0.25;

RHOA        =   0.95;
RHOG        =   0.92;

%---------------------  Fixed Composite Parameters  ----------------------%

LAMBDA_starr            =   (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;
SIGMA_tilde             =   SIGMA/(1-DELTA);

CHI_C           =   (1-DELTA)^SIGMA;
CHI_G           =   DELTA^GAMMA;

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

% model(linear);
model;

%---------------------------  Monetary Policy  ---------------------------%

@#if POLICY == "OSR"

    @#if OSR_MP_RULE == "TAYLOR"

        ii_cu - r_nat_cu  =       +1.5 * pie_cu   +0.5 * y_gap_cu ; % Taylor rule
   
   @#elseif OSR_MP_RULE == "BLANCHARD"
    
        ii_cu - r_nat_cu  =  +0.7 * (ii_cu(-1)-r_nat_cu(-1)) +2.5 * pie_cu   +0.125 * y_gap_cu ; % Blanchard rule

   @#endif 
    
@#endif

%----------------------------  Fiscal Policy  ----------------------------%

@#if FP_FOREIGN == "FOREIGN_CONSTRAINED"  
          g_gap_starr=0;
@#endif


@#if POLICY == "OSR"

    @#if OSR_FP_RULE == "G_GAP_RULE"

        g_gap       =   RHOG * g_gap(-1)        +FP_y_gapH * (y_gap(-1)-y_gap_cu(-1))               +FP_pieH * (pie(-1)-pie_cu(-1));
        @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED"
        g_gap_starr =   RHOG * g_gap_starr(-1)  +FP_y_gapF_starr * (y_gap_starr(-1)-y_gap_cu(-1))   +FP_pieF_starr * (pie_starr(-1)-pie_cu(-1));
        @#endif

    @#elseif OSR_FP_RULE == "NX_GAP_RULE"

        g_gap       =   RHOG * g_gap(-1)        +FP_nx_gapH * (nx_gap(-1)-nx_gap_cu(-1));
        @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED"
        g_gap_starr =   RHOG * g_gap_starr(-1)  +FP_nx_gapF_starr * (nx_gap_starr(-1)-nx_gap_cu(-1));
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
a_cu=0;
end;


%-------------------------------------------------------------------------%
%-----------------------------  SIMULATIONS  -----------------------------%
%-------------------------------------------------------------------------%

%-------------------------------  RAMSEY  --------------------------------%

@#if POLICY == "RAMSEY"

%--------------------------  Planner Objective  --------------------------%

    @#if OBJECTIVE == "POP_WEIGHT"
        
        planner_objective 
                (1-DELTA)*(SIGMA+(1-DELTA)*PHI)*c_gap_cu^2
                +h*(1-h)*ALPHA_bar*(1-DELTA)*(1+PHI*(1-DELTA))*s_gap^2
                +h*DELTA*(GAMMA+PHI*DELTA)*g_gap^2
                +h*EPSILON/LAMBDA*pie^2
                +(1-h)*DELTA*(GAMMA+PHI*DELTA)*g_gap_starr^2
                +(1-h)*EPSILON/LAMBDA_starr*pie_starr^2
                +2*(1-DELTA)*PHI*c_gap_cu*g_gap_cu
                +2*ALPHA_bar*h*(1-h)*(1-DELTA)*DELTA*PHI*s_gap*g_gap_r;
        

    @#elseif OBJECTIVE == "EQUAL_WEIGHT"
    
            planner_objective 
                (1-DELTA)*(SIGMA+(1-DELTA)*PHI)*c_gap_cu^2
                +0.5*(1-0.5)*ALPHA_bar*(1-DELTA)*(1+PHI*(1-DELTA))*s_gap^2
                +0.5*DELTA*(GAMMA+PHI*DELTA)*g_gap^2
                +0.5*EPSILON/LAMBDA*pie^2
                +(1-0.5)*DELTA*(GAMMA+PHI*DELTA)*g_gap_starr^2
                +(1-0.5)*EPSILON/LAMBDA_starr*pie_starr^2
                +2*(1-DELTA)*PHI*c_gap_cu*g_gap_cu
                +2*ALPHA_bar*0.5*(1-0.5)*(1-DELTA)*DELTA*PHI*s_gap*g_gap_r;    
    @#endif

%--------------------  IRFs under Optimal Commitment  --------------------%

    ramsey_model(instruments=(ii_cu,g_gap,g_gap_starr),planner_discount=BETA);
    
   
    @#for h_val in [ "0.5", "0.75"]
    @#for ALPHA_bar_val in ["0.4", "0.6"]
    @#for THETA_val in ["0.5", "0.75"]

%     @#for h_val in [ "0.5"]
%     @#for ALPHA_bar_val in ["0.4"]
%     @#for THETA_val in ["0.0001"]
%         
    
        
        % Economic features
        h = @{h_val};
        ALPHA_bar = @{ALPHA_bar_val};
        THETA = @{THETA_val};
     
        % Composite parameters which depend on economic features
        ALPHA                   =   ALPHA_bar*(1-h);
        ALPHA_starr             =   ALPHA_bar*h;
        LAMBDA                  =   (1-THETA)*(1-THETA*BETA)/THETA;
        W_ALPHA_bar             =   1+(2-ALPHA_bar)*(SIGMA*ETA-1);
        THETA_ALPHA_bar         =   W_ALPHA_bar-1;
        SIGMA_tilde_ALPHA_bar   =   SIGMA_tilde/(1+ALPHA_bar*THETA_ALPHA_bar);
        OMEGA                   =   1+ALPHA_bar*h*THETA_ALPHA_bar ;
        OMEGA_starr             =   1+ALPHA_bar*(1-h)*THETA_ALPHA_bar; 

        % Run simulations
        stoch_simul(irf_shocks=(eps_a_starr),nograph,nocorr,nodecomposition,nomoments,irf=200);

        % Get folder name to store outputs
        [pol_name,folder_name,benchmark_folder_name]=get_folder_name("@{POLICY}","@{OBJECTIVE}","@{OSR_MP_RULE}","@{OSR_FP_RULE}","@{FP_FOREIGN}","@{OSR_FP_HOME}",h,ALPHA_bar,THETA);

        % Create folder to store output
        mkdir(folder_name)

        % Analyze welfare
        analyze_welfare(oo_.irfs,options_.irf,"@{OBJECTIVE}","@{POLICY}",folder_name,benchmark_folder_name,BETA,SIGMA,DELTA,PHI,GAMMA,EPSILON,LAMBDA,LAMBDA_starr,h,ALPHA_bar);

        % Generate plot
        T_plot=100
        my_annotation=[char(strrep(strrep("@{OBJECTIVE}, "+pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)]
        generate_plot_2(oo_.irfs,T_plot,my_annotation,folder_name)

        close all

    @#endfor
    @#endfor
    @#endfor

%---------------------------------  OSR  ---------------------------------%

@#elseif POLICY == "OSR"

%---------------------  OSR Parameters to Optimize  ----------------------%


    @#if OSR_FP_RULE == "G_GAP_RULE"
    
        osr_params
            FP_y_gapH
            FP_pieH
    
            @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED" 
            FP_y_gapF_starr
            FP_pieF_starr
            @#endif
        ;
    
        osr_params_bounds;
            FP_y_gapH, -10, 10;
            FP_pieH, -10, 10;
    
            @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED" 
            FP_y_gapF_starr, -10, 10;
            FP_pieF_starr, -10, 10;
            @#endif
        end;
    
    @#elseif OSR_FP_RULE == "NX_GAP_RULE"

        osr_params
            FP_nx_gapH
    
            @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED" 
            FP_nx_gapF_starr
            @#endif
        ;
    
        osr_params_bounds;
            FP_nx_gapH, -10, 10;
   
            @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED" 
            FP_nx_gapF_starr, -10, 10;
            @#endif
        end;

    @#endif    



%--------------------------  Check Determinacy  --------------------------%
    
    @#for h_val in [ "0.5", "0.75"]
%     @#for h_val in [ "0.75"]
    @#for ALPHA_bar_val in ["0.4", "0.6"]
    @#for THETA_val in ["0.5", "0.75"]
    
    h=@{h_val};
    ALPHA_bar=@{ALPHA_bar_val};
    THETA=@{THETA_val};

        % Composite parameters which depend on economic features
        ALPHA                   =   ALPHA_bar*(1-h);
        ALPHA_starr             =   ALPHA_bar*h;
        LAMBDA                  =   (1-THETA)*(1-THETA*BETA)/THETA;
        W_ALPHA_bar             =   1+(2-ALPHA_bar)*(SIGMA*ETA-1);
        THETA_ALPHA_bar         =   W_ALPHA_bar-1;
        SIGMA_tilde_ALPHA_bar   =   SIGMA_tilde/(1+ALPHA_bar*THETA_ALPHA_bar);
        OMEGA                   =   1+ALPHA_bar*h*THETA_ALPHA_bar ;
        OMEGA_starr             =   1+ALPHA_bar*(1-h)*THETA_ALPHA_bar ;


    estimated_params;

     @#if OSR_FP_RULE == "G_GAP_RULE"

        FP_y_gapH, 0, -10, 10;
        FP_pieH, 0, -10, 10;

        @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED" 
        FP_y_gapF_starr, 0, -10, 10;
        FP_pieF_starr, 0, -10, 10;
        @#endif

     @#elseif OSR_FP_RULE == "NX_GAP_RULE"

        FP_nx_gapH, 0, -10, 10;

        @#if FP_FOREIGN == "FOREIGN_UNCONSTRAINED" 
        FP_nx_gapF_starr, 0, -10, 10;
        @#endif

    @#endif
    end;

    options_.varobs = M_.endo_names; 
    dynare_sensitivity;

%----------------------------  OSR Objective  ----------------------------%
    optim_weights;
        @#if OSR_FP_HOME == "HOME_UNION_ORIENTED"
    
            @#if OBJECTIVE == "POP_WEIGHT"
        
                c_gap_cu            (1-DELTA)*(SIGMA+(1-DELTA)*PHI);
                s_gap               h*(1-h)*ALPHA_bar*(1-DELTA)*(1+PHI*(1-DELTA));
                g_gap               h*DELTA*(GAMMA+PHI*DELTA);
                pie                 h*EPSILON/LAMBDA;
                g_gap_starr         (1-h)*DELTA*(GAMMA+PHI*DELTA);
                pie_starr           (1-h)*EPSILON/LAMBDA_starr;
                c_gap_cu,g_gap_cu   2*(1-DELTA)*PHI;
                s_gap,g_gap_r       2*ALPHA_bar*h*(1-h)*(1-DELTA)*DELTA*PHI;
        
        
        
            @#elseif OBJECTIVE == "EQUAL_WEIGHT"
        
                c_gap_cu            (1-DELTA)*(SIGMA+(1-DELTA)*PHI);
                s_gap               0.5*(1-0.5)*ALPHA_bar*(1-DELTA)*(1+PHI*(1-DELTA));
                g_gap               0.5*DELTA*(GAMMA+PHI*DELTA);
                pie                 0.5*EPSILON/LAMBDA;
                g_gap_starr         (1-0.5)*DELTA*(GAMMA+PHI*DELTA);
                pie_starr           (1-0.5)*EPSILON/LAMBDA_starr;
                c_gap_cu,g_gap_cu   2*(1-DELTA)*PHI;
                s_gap,g_gap_r       2*ALPHA_bar*0.5*(1-0.5)*(1-DELTA)*DELTA*PHI;
        
            @#endif
    
       @#elseif OSR_FP_HOME == "HOME_DOM_ORIENTED" && FP_FOREIGN == "FOREIGN_CONSTRAINED"
       
                c_gap           (1-DELTA)*(SIGMA+(1-DELTA)*PHI);
                s_gap           ALPHA*(1-DELTA)*(1+PHI*(1-DELTA));
                g_gap           DELTA*(GAMMA+PHI*DELTA);
                pie             EPSILON/LAMBDA; 
                c_gap,g_gap     2*(1-DELTA)*PHI;

       @#endif
   end;
  
%---------------------------  IRFs under OSR  ----------------------------%
     
    % Run simulations
    osr(opt_algo=9,tex,nograph,nocorr,nomoments,irf_shocks=(eps_a_starr),irf=200);

    % Get folder name to store outputs
    [pol_name,folder_name,benchmark_folder_name]=get_folder_name("@{POLICY}","@{OBJECTIVE}","@{OSR_MP_RULE}","@{OSR_FP_RULE}","@{FP_FOREIGN}","@{OSR_FP_HOME}",h,ALPHA_bar,THETA);

    % Create folder to store output
    mkdir(folder_name)

    % Analyze welfare
    analyze_welfare(oo_.irfs,options_.irf,"@{OBJECTIVE}","@{POLICY}",folder_name,benchmark_folder_name,BETA,SIGMA,DELTA,PHI,GAMMA,EPSILON,LAMBDA,LAMBDA_starr,h,ALPHA_bar);

    % Generate plot
    T_plot=100
    my_annotation=[char(strrep(strrep("@{OBJECTIVE}, "+pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)]
    generate_plot_2(oo_.irfs,T_plot,my_annotation,folder_name)
    
    % Save optimal coefficient
    OSR_coef_table=rows2vars(struct2table(oo_.osr.optim_params));
    OSR_coef_table.Properties.VariableNames = ["Coefficient","Value"];
    writetable(OSR_coef_table, folder_name+"/OSR_coef.csv","WriteRowNames",true)        
    
    close all

    @#endfor
    @#endfor
    @#endfor
        
@#endif  

write_latex_original_model;
