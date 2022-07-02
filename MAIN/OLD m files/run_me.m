

dynare MODEL_MAIN_2
set_param_value('THETA',100);
stoch_simul(M_, options_, oo_, {'y_gap'})
%BETA            =   ;

% SIGMA           =   3;
% PHI             =   1;
% GAMMA           =   1;
% ETA             =   4.5;
% EPSILON         =   6;
% 
% h               =   0.7;
% ALPHA_bar       =   0.2;
% THETA           =   0.75;
% THETA_starr     =   0.75;
% 
% DELTA           =   0.15;
% CHI_C           =   (1-DELTA)^SIGMA;
% CHI_G           =   DELTA^GAMMA;
% 
% ALPHA           =   ALPHA_bar*(1-h);
% ALPHA_starr     =   ALPHA_bar*h;
% LAMBDA          =   (1-THETA)*(1-THETA*BETA)/THETA;
% LAMBDA_starr    =   (1-THETA_starr)*(1-THETA_starr*BETA)/THETA_starr;
% W_ALPHA_bar     =   1+(2-ALPHA_bar)*(SIGMA*ETA-1);
% SIGMA_tilde     =   SIGMA/(1-DELTA);
% GAMMA_tilde     =   GAMMA/DELTA;
% THETA_ALPHA_bar   = W_ALPHA_bar-1;
% SIGMA_tilde_ALPHA_bar   = SIGMA_tilde/(1+ALPHA_bar*THETA_ALPHA_bar);
% OMEGA             = 1+ALPHA_bar*h*THETA_ALPHA_bar ;
% OMEGA_starr       = 1+ALPHA_bar*(1-h)*THETA_ALPHA_bar ;