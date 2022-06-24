
%-------------------------------------------------------------------------%
%--------------------------------  CASE  ---------------------------------%
%-------------------------------------------------------------------------%

@#define POLICY = "SUBOPTIMAL" // Are FP and MP "OPTIMAL" or "SUBOPTIMAL"
@#define OSR_OBJECTIVE = "COUNTERPART" // IS the OSR objective the "COUNTERPART" of the planner objective or a "SIMPLE" objective?
@#define OSR_RULE = "CLASSIC" // "CLASSIC" or "MRS"


%-------------------------------------------------------------------------%
%--------------------------- DECLARE VARIABLES ---------------------------%
%-------------------------------------------------------------------------%

%------------------------  Endogeneous Variables -------------------------%

var
    y_gap           ${\tilde y_t}$        (long_name='Home output gap (log dev ss)')   
    g_gap           ${\tilde g_t}$        (long_name='Home government spending gap (log dev ss)')
    c_gap           ${\tilde c_t}$        (long_name='Home consumption gap (log dev ss)')
    f_gap           ${\tilde f_t}$  
    ii_gap

    y_gap_starr     ${\tilde y_t^*}$      (long_name='Foreign output gap (log dev ss)') 
    g_gap_starr     ${\tilde g_t^*}$      (long_name='Foreign government spending gap (log dev ss)')
    c_gap_starr     ${\tilde c_t^*}$      (long_name='Foreign consumption gap (log dev ss)')
    f_gap_starr     ${\tilde f_t^*}$  
    ii_gap_starr

    s_gap           ${\tilde s_t}$        (long_name='Home terms of trade gap (log dev ss)')   
    
    y_gap_cu        ${\tilde y_t^{cu}}$     (long_name='Union output gap (log dev ss)')
    g_gap_cu        ${\tilde g_t^{cu}}$     (long_name='Union government spending gap (log dev ss)')  
    c_gap_cu        ${\tilde c_t^{cu}}$     (long_name='Union government spending gap (log dev ss)')
    ii_gap_cu

    a               ${a_t}$         (long_name='Home productivity (log dev ss)')
    a_starr         ${a_t^*}$        (long_name='Foreign productivity (log dev ss)')

;

%-------------------------  Exogeneous Variables -------------------------%

varexo  
  eps_a         ${\epsilon_a}$          (long_name='Home technology shock')
  eps_a_starr   ${\epsilon_a^*}$    (long_name='Foreign technology shock')
;

shocks;
var eps_a = 10; 
var eps_a_starr = 10;
end;

%-------------------------------------------------------------------------%
%-------------------------- DECLARE PARAMETERS ---------------------------%
%-------------------------------------------------------------------------%

parameters 
    
%------------------------  Structural Parameters  ------------------------%

    BETA 
    SIGMA 
    PHI 
    GAMMA 
    ETA 
    EPSILON 

%-------------------------  Economies Features  --------------------------%

    h 
    ALPHA_bar 
    THETA 
    THETA_starr 

%----------------------  Steady State Calibration  -----------------------%

    DELTA 
    CHI_C 
    CHI_G

    N0 
    N0_starr
    C0 
    C0_starr
    G0 
    G0_starr

%------------------------  Composite Parameters  -------------------------%

    ALPHA 
    ALPHA_starr
    LAMBDA 
    LAMBDA_starr
    W_ALPHA_bar
    SIGMA_tilde
    THETA_ALPHA_bar
    SIGMA_tilde_ALPHA_bar
    OMEGA
    OMEGA_starr

%----------------------  Fiscal Policy Parameters  -----------------------%

@#if POLICY == "SUBOPTIMAL"
        
    @#if OSR_RULE == "CLASSIC"
            FP_y_gapH
            FP_pieH
            FP_y_gapF
            FP_pieF
            FP_s_gap
            FP_g_gapF
        
            FP_y_gapH_starr
            FP_pieH_starr
            FP_y_gapF_starr
            FP_pieF_starr
            FP_s_gap_starr
            FP_g_gapH_starr
        @#elseif OSR_RULE == "MRS"
            FP_MRS
            FP_MRS_starr
        @#endif

@#endif

%--------------------  Exogeneous Process Parameters  --------------------%

    RHOA
;

%-------------------------------------------------------------------------%
%--------------------------- PARAMETERS VALUE ----------------------------%
%-------------------------------------------------------------------------%

BETA            =   0.98;
SIGMA           =   3;
PHI             =   1;
GAMMA           =   1;
ETA             =   4.5;
EPSILON         =   6;

h               =   0.5;
ALPHA_bar       =   0.2;
THETA           =   0.75;
THETA_starr     =   0.75;

DELTA           =   0.1;
CHI_C           =   (1-DELTA)^SIGMA;
CHI_G           =   DELTA^GAMMA;

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

RHOA        =   0.85;

@#if POLICY == "SUBOPTIMAL"
    
    @#if OSR_RULE == "CLASSIC"
        FP_y_gapH           =   1.91973;   
        FP_y_gapF           =   0;
        FP_pieH             =   -0.640355;
        FP_pieF             =   0;
        FP_y_gapH_starr     =   0;
        FP_y_gapF_starr     =     1.91905;
        FP_pieH_starr       =   0;
        FP_pieF_starr       =   -0.640413;
    @#elseif OSR_RULE == "MRS"
        FP_MRS              =   1;
        FP_MRS_starr        =   1;
    @#endif

@#endif


%-------------------------------------------------------------------------%
%---------------------------  MODEL EQUATIONS ----------------------------%
%-------------------------------------------------------------------------%

%----------------------  FLEXIBLE PRICE EQUATIONS  -----------------------%

@#include "FLEXIBLE_PRICE.mod"

%-----------------------  STICKY PRICE EQUATIONS  ------------------------%

@#include "STICKY_PRICE.mod"

%---------------------------  OTHER EQUATIONS  ---------------------------%

model(linear);

%---------------------------  Monetary Policy  ---------------------------%

@#if POLICY == "SUBOPTIMAL"
%     ii=r_nat+MP_pieH*pie+MP_y_gapH*y_gap+0.7*ii(-1);
%     ii_starr=r_nat_starr+MP_pieF*pie_starr+MP_y_gapF*y_gap_starr+0.7*ii_starr(-1);
%     ii_cu=h*ii+(1-h)*ii_starr;
%     ii_cu=h*(r_nat+MP_pieH*pie+MP_y_gapH*y_gap)+(1-h)*(r_nat_starr+MP_pieF*pie_starr+MP_y_gapF*y_gap_starr)+0.7*ii_cu(-1);
%     ii_cu=h*(r_nat+2.5*pie+0.125*y_gap)+(1-h)*(r_nat_starr+2.5*pie_starr+0.125*y_gap_starr)+0.7*ii_cu(-1) ;
    ii_cu=r_nat_cu + 2.5*pie_cu + 0.125*y_gap_cu + 0.7*ii_cu(-1);
@#endif

%----------------------------  Fiscal Policy  ----------------------------%

% g_gap(+1)=0.85*g_gap;
% g_gap_starr(+1)=0.85*g_gap_starr;
@#if POLICY == "SUBOPTIMAL"

    @#if OSR_RULE == "CLASSIC"

        g_gap=  0.85*g_gap(-1) + FP_y_gapH*y_gap + FP_pieH*pie ; % React to home only
        g_gap_starr=    0.85*g_gap_starr(-1) + FP_y_gapF_starr*y_gap_starr + FP_pieF_starr*pie_starr; % React to Foreign only
  

    @#elseif OSR_RULE == "MRS"

        g_gap=0.85*g_gap(-1)+FP_MRS*(SIGMA/GAMMA*c_gap+ALPHA/GAMMA*s_gap);
        g_gap_starr=0.85*g_gap_starr(-1)+FP_MRS_starr*(SIGMA/GAMMA*c_gap_starr-ALPHA_starr/GAMMA*s_gap);

    @#endif
%     g=0;
%     g_starr=0;
%     g_gap=FP_y_gapH*y_gap + FP_y_gapF*y_gap_starr + FP_pieH*pie + FP_pieF*pie_starr;
%     g_gap_starr=FP_y_gapH_starr*y_gap + FP_y_gapF_starr*y_gap_starr + FP_pieH_starr*pie + FP_pieF_starr*pie_starr;
    

%     g_gap= 0.85*g_gap(-1)+ FP_y_gapH*y_gap(-1) + FP_pieH*pie(-1) ; % React to home only
%     g_gap_starr=  0.85*g_gap_starr(-1)+  FP_y_gapF_starr*y_gap_starr(-1) + FP_pieF_starr*pie_starr(-1); % React to Foreign only
@#endif


%---------------------------  Gap Definitions  ---------------------------%

[name='Home output gap definition']

y_gap = y-y_nat;

[name='Home governmpent spending gap definition']

g_gap = g-g_nat;

[name='Home consumption gap definition']

c_gap = c-c_nat;

[name='Home fiscal gap definition']

f_gap=g_gap-y_gap;

[name='Home interest rate gap definition']

ii_gap=ii-r_nat;

[name='Home terms of trade gap definition']

s_gap = s-s_nat;

[name='Foreign output gap definition']

y_gap_starr = y_starr-y_nat_starr;

[name='Foreign governmpent spending gap definition']

g_gap_starr = g_starr-g_nat_starr;

[name='Foreign consumption gap definition']

c_gap_starr = c_starr-c_nat_starr;

[name='Foreign fiscal gap definition']

f_gap_starr=g_gap_starr-y_gap_starr;

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

%-------------------------  Exogeneous process  --------------------------%

a = RHOA*a(-1) - eps_a;
a_starr = RHOA*a_starr(-1) - eps_a_starr;

end;

%-------------------------------------------------------------------------%
%----------------------------  STEADY STATE  -----------------------------%
%-------------------------------------------------------------------------%

steady_state_model;
y_gap=0;
g_gap=0;
c_gap=0;
f_gap=0;
ii_gap=0;
s_gap=0;
y_gap_starr=0;
g_gap_starr=0;
c_gap_starr=0;
f_gap_starr=0;
ii_gap_starr=0;
y_gap_cu=0;
g_gap_cu=0;
c_gap_cu=0;
ii_gap_cu=0;
a=0;
a_starr=0;
end;

%-------------------------------------------------------------------------%
%-----------------------------  SIMULATIONS  -----------------------------%
%-------------------------------------------------------------------------%

@#if POLICY == "OPTIMAL"

%     planner_objective h/2*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2+(1-DELTA)*(ALPHA*ETA*SIGMA*(SIGMA-ALPHA*THETA_ALPHA_bar))/((1-ALPHA)^2)*(c_gap-c_gap_cu)^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr-c_gap_cu)^2);
%     planner_objective 1/2*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+1/2*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2)+SIGMA*ALPHA_bar*(1-DELTA)*s_gap*c_gap*h+SIGMA*ALPHA_bar*(1-DELTA)*s_gap*c_gap*(1-h);
    planner_objective h/2*(EPSILON/LAMBDA*pie^2+PHI*y_gap^2+GAMMA*DELTA*g_gap^2+SIGMA*(1-DELTA)*c_gap^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr^2+PHI*y_gap_starr^2+GAMMA*DELTA*g_gap_starr^2+SIGMA*(1-DELTA)*c_gap_starr^2);
    
    %external_function(name = WELFARE,nargs=12,first_deriv_provided, second_deriv_provided);
    %planner_objective WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,C0*(c+1)/h,N0*(n+1)/h,G0*(g+1)/h,C0_starr*(c_starr+1)/(1-h), N0_starr*(n_starr+1)/(1-h),G0_starr*(g_starr+1)/(1-h));
    %planner_objective WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c+log(C0))/h,exp(n+log(N0))/h,exp(g+log(G0))/h,exp(c_starr+log(C0_starr))/(1-h), exp(n_starr+log(N0_starr))/(1-h),exp(g_starr+log(G0_starr))/(1-h));
    
%     planner_objective h*(CHI_C*((C0*(c+1)/h)^(1-SIGMA)/(1-SIGMA))-((N0*(n+1)/h)^(1+PHI)/(1+PHI))+CHI_G*((G0*(g+1)/h)^(1-GAMMA)/(1-GAMMA)))+(1-h)*(CHI_C*((C0_starr*(c_starr+1)/(1-h))^(1-SIGMA)/(1-SIGMA))-((N0_starr*(n_starr+1)/(1-h))^(1+PHI)/(1+PHI))+CHI_G*((G0_starr*(g_starr+1)/(1-h))^(1-GAMMA)/(1-GAMMA)));

    %planner_objective h*(CHI_C*((exp(c+log(C0))/h)^(1-SIGMA)/(1-SIGMA))-((exp(n+log(N0))/h)^(1+PHI)/(1+PHI))+CHI_G*((exp(g+log(G0))/h)^(1-GAMMA)/(1-GAMMA)))+(1-h)*(CHI_C*((exp(c_starr+log(C0_starr))/(1-h))^(1-SIGMA)/(1-SIGMA))-((exp(n_starr+log(N0_starr))/(1-h))^(1+PHI)/(1+PHI))+CHI_G*((exp(g_starr+log(G0_starr))/(1-h))^(1-GAMMA)/(1-GAMMA)));

    ramsey_model(instruments=(ii_cu,g_gap,g_gap_starr),planner_discount=BETA);
%    ramsey_model(instruments=(ii_cu,g,g_starr),planner_discount=BETA);


    steady;
    check;
    stoch_simul(irf_shocks=(eps_a_starr),nograph);

@#elseif POLICY == "SUBOPTIMAL"
     
    @#if OSR_RULE =="CLASSIC"
        estimated_params;
            FP_y_gapH, 0, -10, 10;
    %         FP_y_gapF, 0, -10, 10;
            FP_pieH, 0, -10, 10;
    %         FP_pieF, 0, -10, 10;
    %         FP_s_gap, 0, -10, 10;
    %         FP_g_gapF, 0, -10, 10;
    %         FP_y_gapH_starr, 0, -10, 10;
            FP_y_gapF_starr, 0, -10, 10;
    %         FP_pieH_starr, 0, -10, 10;
            FP_pieF_starr, 0, -10, 10;
         end;
    @#elseif OSR_RULE == "MRS"
        estimated_params;
                FP_MRS, 0, -10, 10;
                FP_MRS_starr, 0, -10, 10;
        end;
   @#endif

    options_.varobs = M_.endo_names; 
    dynare_sensitivity;

    @#if OSR_OBJECTIVE == "COUNTERPART"

        optim_weights;
                pie h*EPSILON/LAMBDA;
                pie_starr (1-h)*EPSILON/LAMBDA;
                y_gap h*PHI;
                y_gap_starr (1-h)*PHI;
                c_gap h*(1-DELTA)*SIGMA;
                c_gap_starr (1-h)*(1-DELTA)*SIGMA;
                g_gap h*DELTA*GAMMA;
                g_gap_starr (1-h)*DELTA*GAMMA;
        %         s_gap 1;
        %         y_gap_cu 1;
        %         g_gap_cu 1;
        %         c_gap_cu 1;
        %         pie_cu 1;
        end;
    @#elseif OSR_OBJECTIVE == "SIMPLE"
        optim_weights;
                y_gap_cu 1;
                g_gap_cu 1;
                c_gap_cu 1;
                pie_cu 1;
        end;
   @#endif

   @#if OSR_RULE =="CLASSIC"
        osr_params 
            FP_y_gapH
        %     FP_y_gapF
            FP_pieH
        %     FP_pieF
        
        %     FP_y_gapH_starr
            FP_y_gapF_starr
        %     FP_pieH_starr
            FP_pieF_starr
        ;

        osr_params_bounds;
            FP_y_gapH, -10, 10;
            %     FP_y_gapF, -10, 10;
            FP_pieH, -0.001,0.001;
            %     FP_pieF, -10, 10;
            %     FP_y_gapH_starr, -10, 10;
            FP_y_gapF_starr, -0.001,0.001;
            %     FP_pieH_starr, -10, 10;
            FP_pieF_starr, -10, 10;
        end;

   @#elseif OSR_RULE == "MRS"
        osr_params 
            FP_MRS
            FP_MRS_starr
        ;

        osr_params_bounds;
            FP_MRS, -10, 10;
            FP_MRS_starr, -10, 10;
        end;

   @#endif    
    
    osr(opt_algo=9,tex,nograph,irf_shocks=(eps_a_starr));
    oo_.osr.optim_params;

@#endif

%-------------------------------------------------------------------------%
%-------------------------------  PLOTS  ---------------------------------%
%-------------------------------------------------------------------------%

t = 1:1:length(y_eps_a_starr);
zeroline = ones(length(t),1)*0;

figure('NumberTitle', 'off','Name',['IRFs OSR COUNTERPART']) % Output
subplot(3,3,1); %
Home=plot(t,c_eps_a_starr,'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,c_starr_eps_a_starr,'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$ and $$\hat c_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');

subplot(3,3,4); %
plot(t,c_nat_eps_a_starr,'LineWidth',1.5); hold on
plot(t,c_nat_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$ and $$\hat{\bar c}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,7); %
plot(t,c_gap_eps_a_starr,'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$ and $$\tilde c_t^*$$','interpreter','latex','FontSize',10);


subplot(3,3,2); %
plot(t,y_eps_a_starr,'LineWidth',1.5); hold on
plot(t,y_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$ and $$\hat y_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,5); %
plot(t,y_nat_eps_a_starr,'LineWidth',1.5); hold on
plot(t,y_nat_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$ and $$\hat{\bar y}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,8); %
plot(t,y_gap_eps_a_starr,'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$ and $$\tilde y_t^*$$','interpreter','latex','FontSize',10);


subplot(3,3,3); %
plot(t,g_eps_a_starr,'LineWidth',1.5); hold on
plot(t,g_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$ and $$\hat g_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,6); %
plot(t,g_nat_eps_a_starr,'LineWidth',1.5); hold on
plot(t,g_nat_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$ and $$\hat{\bar g}_t^*$$','interpreter','latex','FontSize',10);

subplot(3,3,9); %
plot(t,g_gap_eps_a_starr,'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$ and $$\tilde g_t^*$$','interpreter','latex','FontSize',10);


%-------------------------------------------------------------------------%
%--------------------------  WELFARE ANALYSIS  ---------------------------%
%-------------------------------------------------------------------------%

%-------------------------------  Utility  -------------------------------%

sum(cumprod(ones(1,40)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)))

sum(cumprod(ones(1,40)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,C0*(c_eps_a_starr+1)/h,N0*(n_eps_a_starr+1)/h,G0*(g_eps_a_starr+1)/h,C0_starr*(c_starr_eps_a_starr+1)/(1-h), N0_starr*(n_starr_eps_a_starr+1)/(1-h),G0_starr*(g_starr_eps_a_starr+1)/(1-h)))


%---------------------------------  CEV  ---------------------------------%
@#if POLICY == "OPTIMAL"
    Column_names={'Utility_1','Utility_2'}
    table(sum(cumprod(ones(1,40)*BETA)'.*WELFARE_CEV_Cons(1.00,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h))),sum(cumprod(ones(1,40)*BETA)'.*WELFARE_CEV_ConsGov(1.00,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h))))
@#endif

sum(cumprod(ones(1,40)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,CEV*exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,CEV*exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)))
sum(cumprod(ones(1,40)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,CEV*exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,CEV*exp(g_eps_a_starr+log(G0))/h,CEV*exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),CEV*exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)))


%-------------------------------  LOSS  ----------------------------------%
sum(cumprod(ones(1,40)*BETA)'.*(h/2*(EPSILON/LAMBDA*pie_eps_a_starr.^2+PHI*y_gap_eps_a_starr.^2+GAMMA*DELTA*g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_eps_a_starr.^2+(1-DELTA)*(ALPHA*ETA*SIGMA*(SIGMA-ALPHA*THETA_ALPHA_bar))/((1-ALPHA)^2)*(c_gap_eps_a_starr-c_gap_cu_eps_a_starr).^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2+PHI*y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*g_gap_starr_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_starr_eps_a_starr.^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr_eps_a_starr-c_gap_cu_eps_a_starr).^2)))
%sum(cumprod(ones(1,40)*BETA).*h/2*(EPSILON/LAMBDA*pie_eps_a_starr.^2+PHI*y_gap_eps_a_starr.^2+GAMMA*DELTA*g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_eps_a_starr.^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2+PHI*y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*g_gap_starr_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_starr_eps_a_starr.^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr_eps_a_starr-c_gap_cu_eps_a_starr).^2))
