%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'Planner_log';
M_.dynare_version = '5.0';
oo_.dynare_version = '5.0';
options_.dynare_version = '5.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(2,1);
M_.exo_names_tex = cell(2,1);
M_.exo_names_long = cell(2,1);
M_.exo_names(1) = {'eps_a'};
M_.exo_names_tex(1) = {'{\varepsilon_a}'};
M_.exo_names_long(1) = {'technology shock'};
M_.exo_names(2) = {'eps_a_starr'};
M_.exo_names_tex(2) = {'eps\_a\_starr'};
M_.exo_names_long(2) = {'eps_a_starr'};
M_.endo_names = cell(23,1);
M_.endo_names_tex = cell(23,1);
M_.endo_names_long = cell(23,1);
M_.endo_names(1) = {'a'};
M_.endo_names_tex(1) = {'a'};
M_.endo_names_long(1) = {'a'};
M_.endo_names(2) = {'a_starr'};
M_.endo_names_tex(2) = {'a\_starr'};
M_.endo_names_long(2) = {'a_starr'};
M_.endo_names(3) = {'c'};
M_.endo_names_tex(3) = {'c'};
M_.endo_names_long(3) = {'c'};
M_.endo_names(4) = {'c_H'};
M_.endo_names_tex(4) = {'c\_H'};
M_.endo_names_long(4) = {'c_H'};
M_.endo_names(5) = {'c_F'};
M_.endo_names_tex(5) = {'c\_F'};
M_.endo_names_long(5) = {'c_F'};
M_.endo_names(6) = {'y'};
M_.endo_names_tex(6) = {'y'};
M_.endo_names_long(6) = {'y'};
M_.endo_names(7) = {'g'};
M_.endo_names_tex(7) = {'g'};
M_.endo_names_long(7) = {'g'};
M_.endo_names(8) = {'c_starr'};
M_.endo_names_tex(8) = {'c\_starr'};
M_.endo_names_long(8) = {'c_starr'};
M_.endo_names(9) = {'c_H_starr'};
M_.endo_names_tex(9) = {'c\_H\_starr'};
M_.endo_names_long(9) = {'c_H_starr'};
M_.endo_names(10) = {'c_F_starr'};
M_.endo_names_tex(10) = {'c\_F\_starr'};
M_.endo_names_long(10) = {'c_F_starr'};
M_.endo_names(11) = {'y_starr'};
M_.endo_names_tex(11) = {'y\_starr'};
M_.endo_names_long(11) = {'y_starr'};
M_.endo_names(12) = {'g_starr'};
M_.endo_names_tex(12) = {'g\_starr'};
M_.endo_names_long(12) = {'g_starr'};
M_.endo_names(13) = {'c_nat'};
M_.endo_names_tex(13) = {'c\_nat'};
M_.endo_names_long(13) = {'c_nat'};
M_.endo_names(14) = {'c_H_nat'};
M_.endo_names_tex(14) = {'c\_H\_nat'};
M_.endo_names_long(14) = {'c_H_nat'};
M_.endo_names(15) = {'c_F_nat'};
M_.endo_names_tex(15) = {'c\_F\_nat'};
M_.endo_names_long(15) = {'c_F_nat'};
M_.endo_names(16) = {'y_nat'};
M_.endo_names_tex(16) = {'y\_nat'};
M_.endo_names_long(16) = {'y_nat'};
M_.endo_names(17) = {'g_nat'};
M_.endo_names_tex(17) = {'g\_nat'};
M_.endo_names_long(17) = {'g_nat'};
M_.endo_names(18) = {'c_nat_starr'};
M_.endo_names_tex(18) = {'c\_nat\_starr'};
M_.endo_names_long(18) = {'c_nat_starr'};
M_.endo_names(19) = {'c_H_nat_starr'};
M_.endo_names_tex(19) = {'c\_H\_nat\_starr'};
M_.endo_names_long(19) = {'c_H_nat_starr'};
M_.endo_names(20) = {'c_F_nat_starr'};
M_.endo_names_tex(20) = {'c\_F\_nat\_starr'};
M_.endo_names_long(20) = {'c_F_nat_starr'};
M_.endo_names(21) = {'y_nat_starr'};
M_.endo_names_tex(21) = {'y\_nat\_starr'};
M_.endo_names_long(21) = {'y_nat_starr'};
M_.endo_names(22) = {'g_nat_starr'};
M_.endo_names_tex(22) = {'g\_nat\_starr'};
M_.endo_names_long(22) = {'g_nat_starr'};
M_.endo_names(23) = {'s_nat'};
M_.endo_names_tex(23) = {'s\_nat'};
M_.endo_names_long(23) = {'s_nat'};
M_.endo_partitions = struct();
M_.param_names = cell(18,1);
M_.param_names_tex = cell(18,1);
M_.param_names_long = cell(18,1);
M_.param_names(1) = {'SIGMA'};
M_.param_names_tex(1) = {'SIGMA'};
M_.param_names_long(1) = {'SIGMA'};
M_.param_names(2) = {'ALPHA_bar'};
M_.param_names_tex(2) = {'ALPHA\_bar'};
M_.param_names_long(2) = {'ALPHA_bar'};
M_.param_names(3) = {'BETA'};
M_.param_names_tex(3) = {'BETA'};
M_.param_names_long(3) = {'BETA'};
M_.param_names(4) = {'PHI'};
M_.param_names_tex(4) = {'PHI'};
M_.param_names_long(4) = {'PHI'};
M_.param_names(5) = {'h'};
M_.param_names_tex(5) = {'h'};
M_.param_names_long(5) = {'h'};
M_.param_names(6) = {'ALPHA'};
M_.param_names_tex(6) = {'ALPHA'};
M_.param_names_long(6) = {'ALPHA'};
M_.param_names(7) = {'ALPHA_starr'};
M_.param_names_tex(7) = {'ALPHA\_starr'};
M_.param_names_long(7) = {'ALPHA_starr'};
M_.param_names(8) = {'GAMMA'};
M_.param_names_tex(8) = {'GAMMA'};
M_.param_names_long(8) = {'GAMMA'};
M_.param_names(9) = {'CHI_G'};
M_.param_names_tex(9) = {'CHI\_G'};
M_.param_names_long(9) = {'CHI_G'};
M_.param_names(10) = {'CHI_C'};
M_.param_names_tex(10) = {'CHI\_C'};
M_.param_names_long(10) = {'CHI_C'};
M_.param_names(11) = {'RHOA'};
M_.param_names_tex(11) = {'RHOA'};
M_.param_names_long(11) = {'RHOA'};
M_.param_names(12) = {'ETA'};
M_.param_names_tex(12) = {'ETA'};
M_.param_names_long(12) = {'ETA'};
M_.param_names(13) = {'DELTA'};
M_.param_names_tex(13) = {'DELTA'};
M_.param_names_long(13) = {'DELTA'};
M_.param_names(14) = {'W_ALPHA_bar'};
M_.param_names_tex(14) = {'W\_ALPHA\_bar'};
M_.param_names_long(14) = {'W_ALPHA_bar'};
M_.param_names(15) = {'SIGMA_tilde'};
M_.param_names_tex(15) = {'SIGMA\_tilde'};
M_.param_names_long(15) = {'SIGMA_tilde'};
M_.param_names(16) = {'GAMMA_tilde'};
M_.param_names_tex(16) = {'GAMMA\_tilde'};
M_.param_names_long(16) = {'GAMMA_tilde'};
M_.param_names(17) = {'THETA_ALPHA_bar'};
M_.param_names_tex(17) = {'THETA\_ALPHA\_bar'};
M_.param_names_long(17) = {'THETA_ALPHA_bar'};
M_.param_names(18) = {'SIGMA_tilde_ALPHA_bar'};
M_.param_names_tex(18) = {'SIGMA\_tilde\_ALPHA\_bar'};
M_.param_names_long(18) = {'SIGMA_tilde_ALPHA_bar'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 23;
M_.param_nbr = 18;
M_.orig_endo_nbr = 23;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.orig_eq_nbr = 23;
M_.eq_nbr = 23;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 0;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 0;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 1 3;
 2 4;
 0 5;
 0 6;
 0 7;
 0 8;
 0 9;
 0 10;
 0 11;
 0 12;
 0 13;
 0 14;
 0 15;
 0 16;
 0 17;
 0 18;
 0 19;
 0 20;
 0 21;
 0 22;
 0 23;
 0 24;
 0 25;]';
M_.nstatic = 21;
M_.nfwrd   = 0;
M_.npred   = 2;
M_.nboth   = 0;
M_.nsfwrd   = 0;
M_.nspred   = 2;
M_.ndynamic   = 2;
M_.dynamic_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'c_H' ;
  2 , 'name' , 'c_F' ;
  3 , 'name' , 'c_F_starr' ;
  4 , 'name' , 'c_H_starr' ;
  5 , 'name' , '5' ;
  6 , 'name' , '6' ;
  7 , 'name' , 'y' ;
  8 , 'name' , 'y_starr' ;
  9 , 'name' , 'c' ;
  10 , 'name' , 'c_starr' ;
  11 , 'name' , 'c_H_nat' ;
  12 , 'name' , 'c_F_nat' ;
  13 , 'name' , 'c_F_nat_starr' ;
  14 , 'name' , 'c_H_nat_starr' ;
  15 , 'name' , '15' ;
  16 , 'name' , '16' ;
  17 , 'name' , '17' ;
  18 , 'name' , '18' ;
  19 , 'name' , 's_nat' ;
  20 , 'name' , '20' ;
  21 , 'name' , '21' ;
  22 , 'name' , 'a' ;
  23 , 'name' , 'a_starr' ;
};
M_.mapping.a.eqidx = [5 17 22 ];
M_.mapping.a_starr.eqidx = [6 18 23 ];
M_.mapping.c.eqidx = [1 2 9 ];
M_.mapping.c_H.eqidx = [1 7 9 ];
M_.mapping.c_F.eqidx = [2 8 9 ];
M_.mapping.y.eqidx = [5 7 ];
M_.mapping.g.eqidx = [1 4 5 7 ];
M_.mapping.c_starr.eqidx = [3 4 10 ];
M_.mapping.c_H_starr.eqidx = [4 7 10 ];
M_.mapping.c_F_starr.eqidx = [3 8 10 ];
M_.mapping.y_starr.eqidx = [6 8 ];
M_.mapping.g_starr.eqidx = [2 3 6 8 ];
M_.mapping.c_nat.eqidx = [11 12 15 17 20 ];
M_.mapping.c_H_nat.eqidx = [11 ];
M_.mapping.c_F_nat.eqidx = [12 ];
M_.mapping.y_nat.eqidx = [17 19 20 ];
M_.mapping.g_nat.eqidx = [11 14 15 19 20 ];
M_.mapping.c_nat_starr.eqidx = [13 14 16 18 21 ];
M_.mapping.c_H_nat_starr.eqidx = [14 ];
M_.mapping.c_F_nat_starr.eqidx = [13 ];
M_.mapping.y_nat_starr.eqidx = [18 19 21 ];
M_.mapping.g_nat_starr.eqidx = [12 13 16 19 21 ];
M_.mapping.s_nat.eqidx = [15 16 17 18 19 20 21 ];
M_.mapping.eps_a.eqidx = [22 ];
M_.mapping.eps_a_starr.eqidx = [23 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 0;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 0;
oo_.steady_state = zeros(23, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(18, 1);
M_.endo_trends = struct('deflator', cell(23, 1), 'log_deflator', cell(23, 1), 'growth_factor', cell(23, 1), 'log_growth_factor', cell(23, 1));
M_.NNZDerivatives = [77; -1; -1; ];
M_.static_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 3;
SIGMA = M_.params(1);
M_.params(2) = 0.2;
ALPHA_bar = M_.params(2);
M_.params(3) = 0.98;
BETA = M_.params(3);
M_.params(4) = 1;
PHI = M_.params(4);
M_.params(5) = 0.7;
h = M_.params(5);
M_.params(6) = M_.params(2)*(1-M_.params(5));
ALPHA = M_.params(6);
M_.params(7) = M_.params(2)*M_.params(5);
ALPHA_starr = M_.params(7);
M_.params(8) = 1;
GAMMA = M_.params(8);
M_.params(12) = 4.5;
ETA = M_.params(12);
M_.params(13) = 0.15;
DELTA = M_.params(13);
M_.params(9) = M_.params(13)^M_.params(8);
CHI_G = M_.params(9);
M_.params(10) = (1-M_.params(13))^M_.params(1);
CHI_C = M_.params(10);
M_.params(14) = 1+(2-M_.params(2))*(M_.params(1)*M_.params(12)-1);
W_ALPHA_bar = M_.params(14);
M_.params(15) = M_.params(1)/(1-M_.params(13));
SIGMA_tilde = M_.params(15);
M_.params(16) = M_.params(8)/M_.params(13);
GAMMA_tilde = M_.params(16);
M_.params(17) = M_.params(14)-1;
THETA_ALPHA_bar = M_.params(17);
M_.params(18) = M_.params(15)/(1+M_.params(2)*M_.params(17));
SIGMA_tilde_ALPHA_bar = M_.params(18);
M_.params(11) = 0.85;
RHOA = M_.params(11);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 1;
resid(1);
steady;
options_.irf = 30;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Planner_log_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Planner_log_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Planner_log_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Planner_log_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Planner_log_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Planner_log_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Planner_log_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 11 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
