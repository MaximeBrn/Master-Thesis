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
M_.fname = 'model_draft_4_Natural';
M_.dynare_version = '5.0';
oo_.dynare_version = '5.0';
options_.dynare_version = '5.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(4,1);
M_.exo_names_tex = cell(4,1);
M_.exo_names_long = cell(4,1);
M_.exo_names(1) = {'eps_a'};
M_.exo_names_tex(1) = {'{\varepsilon_a}'};
M_.exo_names_long(1) = {'technology shock'};
M_.exo_names(2) = {'eps_xi'};
M_.exo_names_tex(2) = {'{\varepsilon_xi}'};
M_.exo_names_long(2) = {'labor disutility shock'};
M_.exo_names(3) = {'eps_a_starr'};
M_.exo_names_tex(3) = {'eps\_a\_starr'};
M_.exo_names_long(3) = {'eps_a_starr'};
M_.exo_names(4) = {'eps_xi_starr'};
M_.exo_names_tex(4) = {'eps\_xi\_starr'};
M_.exo_names_long(4) = {'eps_xi_starr'};
M_.endo_names = cell(24,1);
M_.endo_names_tex = cell(24,1);
M_.endo_names_long = cell(24,1);
M_.endo_names(1) = {'a'};
M_.endo_names_tex(1) = {'{a}'};
M_.endo_names_long(1) = {'Home technology shock process (log dev ss)'};
M_.endo_names(2) = {'xi'};
M_.endo_names_tex(2) = {'xi'};
M_.endo_names_long(2) = {'xi'};
M_.endo_names(3) = {'y_nat'};
M_.endo_names_tex(3) = {'y\_nat'};
M_.endo_names_long(3) = {'y_nat'};
M_.endo_names(4) = {'g_nat'};
M_.endo_names_tex(4) = {'g\_nat'};
M_.endo_names_long(4) = {'g_nat'};
M_.endo_names(5) = {'c_nat'};
M_.endo_names_tex(5) = {'c\_nat'};
M_.endo_names_long(5) = {'c_nat'};
M_.endo_names(6) = {'a_starr'};
M_.endo_names_tex(6) = {'{a^*}'};
M_.endo_names_long(6) = {'Foreign technology shock process (log dev ss)'};
M_.endo_names(7) = {'xi_starr'};
M_.endo_names_tex(7) = {'xi\_starr'};
M_.endo_names_long(7) = {'xi_starr'};
M_.endo_names(8) = {'y_nat_starr'};
M_.endo_names_tex(8) = {'y\_nat\_starr'};
M_.endo_names_long(8) = {'y_nat_starr'};
M_.endo_names(9) = {'g_nat_starr'};
M_.endo_names_tex(9) = {'g\_nat\_starr'};
M_.endo_names_long(9) = {'g_nat_starr'};
M_.endo_names(10) = {'c_nat_starr'};
M_.endo_names_tex(10) = {'c\_nat\_starr'};
M_.endo_names_long(10) = {'c_nat_starr'};
M_.endo_names(11) = {'s_nat'};
M_.endo_names_tex(11) = {'s\_nat'};
M_.endo_names_long(11) = {'s_nat'};
M_.endo_names(12) = {'y_nat_cu'};
M_.endo_names_tex(12) = {'y\_nat\_cu'};
M_.endo_names_long(12) = {'y_nat_cu'};
M_.endo_names(13) = {'g_nat_cu'};
M_.endo_names_tex(13) = {'g\_nat\_cu'};
M_.endo_names_long(13) = {'g_nat_cu'};
M_.endo_names(14) = {'MULT_1'};
M_.endo_names_tex(14) = {'MULT\_1'};
M_.endo_names_long(14) = {'MULT_1'};
M_.endo_names(15) = {'MULT_2'};
M_.endo_names_tex(15) = {'MULT\_2'};
M_.endo_names_long(15) = {'MULT_2'};
M_.endo_names(16) = {'MULT_3'};
M_.endo_names_tex(16) = {'MULT\_3'};
M_.endo_names_long(16) = {'MULT_3'};
M_.endo_names(17) = {'MULT_4'};
M_.endo_names_tex(17) = {'MULT\_4'};
M_.endo_names_long(17) = {'MULT_4'};
M_.endo_names(18) = {'MULT_5'};
M_.endo_names_tex(18) = {'MULT\_5'};
M_.endo_names_long(18) = {'MULT_5'};
M_.endo_names(19) = {'MULT_6'};
M_.endo_names_tex(19) = {'MULT\_6'};
M_.endo_names_long(19) = {'MULT_6'};
M_.endo_names(20) = {'MULT_7'};
M_.endo_names_tex(20) = {'MULT\_7'};
M_.endo_names_long(20) = {'MULT_7'};
M_.endo_names(21) = {'MULT_8'};
M_.endo_names_tex(21) = {'MULT\_8'};
M_.endo_names_long(21) = {'MULT_8'};
M_.endo_names(22) = {'MULT_9'};
M_.endo_names_tex(22) = {'MULT\_9'};
M_.endo_names_long(22) = {'MULT_9'};
M_.endo_names(23) = {'MULT_10'};
M_.endo_names_tex(23) = {'MULT\_10'};
M_.endo_names_long(23) = {'MULT_10'};
M_.endo_names(24) = {'MULT_11'};
M_.endo_names_tex(24) = {'MULT\_11'};
M_.endo_names_long(24) = {'MULT_11'};
M_.endo_partitions = struct();
M_.param_names = cell(21,1);
M_.param_names_tex = cell(21,1);
M_.param_names_long = cell(21,1);
M_.param_names(1) = {'SIGMA'};
M_.param_names_tex(1) = {'SIGMA'};
M_.param_names_long(1) = {'SIGMA'};
M_.param_names(2) = {'ALPHA_bar'};
M_.param_names_tex(2) = {'ALPHA\_bar'};
M_.param_names_long(2) = {'ALPHA_bar'};
M_.param_names(3) = {'DELTA'};
M_.param_names_tex(3) = {'DELTA'};
M_.param_names_long(3) = {'DELTA'};
M_.param_names(4) = {'BETA'};
M_.param_names_tex(4) = {'BETA'};
M_.param_names_long(4) = {'BETA'};
M_.param_names(5) = {'PHI'};
M_.param_names_tex(5) = {'PHI'};
M_.param_names_long(5) = {'PHI'};
M_.param_names(6) = {'h'};
M_.param_names_tex(6) = {'h'};
M_.param_names_long(6) = {'h'};
M_.param_names(7) = {'CHI'};
M_.param_names_tex(7) = {'CHI'};
M_.param_names_long(7) = {'CHI'};
M_.param_names(8) = {'GAMMA'};
M_.param_names_tex(8) = {'GAMMA'};
M_.param_names_long(8) = {'GAMMA'};
M_.param_names(9) = {'THETA'};
M_.param_names_tex(9) = {'THETA'};
M_.param_names_long(9) = {'THETA'};
M_.param_names(10) = {'THETA_starr'};
M_.param_names_tex(10) = {'THETA\_starr'};
M_.param_names_long(10) = {'THETA_starr'};
M_.param_names(11) = {'W_ALPHA_bar'};
M_.param_names_tex(11) = {'W\_ALPHA\_bar'};
M_.param_names_long(11) = {'W_ALPHA_bar'};
M_.param_names(12) = {'LAMBDA'};
M_.param_names_tex(12) = {'LAMBDA'};
M_.param_names_long(12) = {'LAMBDA'};
M_.param_names(13) = {'W_ALPHA_bar_starr'};
M_.param_names_tex(13) = {'W\_ALPHA\_bar\_starr'};
M_.param_names_long(13) = {'W_ALPHA_bar_starr'};
M_.param_names(14) = {'LAMBDA_starr'};
M_.param_names_tex(14) = {'LAMBDA\_starr'};
M_.param_names_long(14) = {'LAMBDA_starr'};
M_.param_names(15) = {'ETA'};
M_.param_names_tex(15) = {'ETA'};
M_.param_names_long(15) = {'ETA'};
M_.param_names(16) = {'RHOA'};
M_.param_names_tex(16) = {'RHOA'};
M_.param_names_long(16) = {'RHOA'};
M_.param_names(17) = {'RHOXI'};
M_.param_names_tex(17) = {'RHOXI'};
M_.param_names_long(17) = {'RHOXI'};
M_.param_names(18) = {'ALPHA'};
M_.param_names_tex(18) = {'ALPHA'};
M_.param_names_long(18) = {'ALPHA'};
M_.param_names(19) = {'ALPHA_starr'};
M_.param_names_tex(19) = {'ALPHA\_starr'};
M_.param_names_long(19) = {'ALPHA_starr'};
M_.param_names(20) = {'end'};
M_.param_names_tex(20) = {'end'};
M_.param_names_long(20) = {'end'};
M_.param_names(21) = {'optimal_policy_discount_factor'};
M_.param_names_tex(21) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(21) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 24;
M_.param_nbr = 21;
M_.orig_endo_nbr = 13;
M_.aux_vars(1).endo_index = 14;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 15;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 16;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 17;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 18;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.aux_vars(6).endo_index = 19;
M_.aux_vars(6).type = 6;
M_.aux_vars(6).eq_nbr = 6;
M_.aux_vars(7).endo_index = 20;
M_.aux_vars(7).type = 6;
M_.aux_vars(7).eq_nbr = 7;
M_.aux_vars(8).endo_index = 21;
M_.aux_vars(8).type = 6;
M_.aux_vars(8).eq_nbr = 8;
M_.aux_vars(9).endo_index = 22;
M_.aux_vars(9).type = 6;
M_.aux_vars(9).eq_nbr = 9;
M_.aux_vars(10).endo_index = 23;
M_.aux_vars(10).type = 6;
M_.aux_vars(10).eq_nbr = 10;
M_.aux_vars(11).endo_index = 24;
M_.aux_vars(11).type = 6;
M_.aux_vars(11).eq_nbr = 11;
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(4, 4);
M_.Correlation_matrix = eye(4, 4);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 11;
M_.eq_nbr = 24;
M_.ramsey_eq_nbr = 13;
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
 1 5 0;
 2 6 0;
 0 7 0;
 0 8 0;
 0 9 0;
 3 10 0;
 4 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 29;
 0 26 30;
 0 27 31;
 0 28 32;]';
M_.nstatic = 16;
M_.nfwrd   = 4;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 4;
M_.nspred   = 4;
M_.ndynamic   = 8;
M_.dynamic_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  14 , 'name' , '1' ;
  15 , 'name' , '2' ;
  16 , 'name' , '3' ;
  17 , 'name' , 'c_nat' ;
  18 , 'name' , 'c_nat_starr' ;
  19 , 'name' , 'y_nat_cu' ;
  20 , 'name' , 'g_nat_cu' ;
  21 , 'name' , 'Home TFP process' ;
  22 , 'name' , 'Home Labor disutility shifter' ;
  23 , 'name' , 'Foreign TFP process' ;
  24 , 'name' , 'Foreign Labor disutility shifter' ;
};
M_.mapping.a.eqidx = [14 21 ];
M_.mapping.xi.eqidx = [14 22 ];
M_.mapping.y_nat.eqidx = [3 14 17 19 ];
M_.mapping.g_nat.eqidx = [4 17 20 ];
M_.mapping.c_nat.eqidx = [5 14 16 17 ];
M_.mapping.a_starr.eqidx = [15 23 ];
M_.mapping.xi_starr.eqidx = [15 24 ];
M_.mapping.y_nat_starr.eqidx = [8 15 18 19 ];
M_.mapping.g_nat_starr.eqidx = [9 18 20 ];
M_.mapping.c_nat_starr.eqidx = [10 15 16 18 ];
M_.mapping.s_nat.eqidx = [14 15 16 17 18 ];
M_.mapping.y_nat_cu.eqidx = [19 ];
M_.mapping.g_nat_cu.eqidx = [20 ];
M_.mapping.eps_a.eqidx = [21 ];
M_.mapping.eps_xi.eqidx = [22 ];
M_.mapping.eps_a_starr.eqidx = [23 ];
M_.mapping.eps_xi_starr.eqidx = [24 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 6 7 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(24, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(21, 1);
M_.endo_trends = struct('deflator', cell(24, 1), 'log_deflator', cell(24, 1), 'growth_factor', cell(24, 1), 'log_growth_factor', cell(24, 1));
M_.NNZDerivatives = [80; 0; -1; ];
M_.static_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 1;
SIGMA = M_.params(1);
M_.params(2) = 1;
ALPHA_bar = M_.params(2);
M_.params(7) = 0.03;
CHI = M_.params(7);
M_.params(3) = M_.params(7);
DELTA = M_.params(3);
M_.params(4) = 0.98;
BETA = M_.params(4);
M_.params(5) = 1;
PHI = M_.params(5);
M_.params(6) = 0.5;
h = M_.params(6);
M_.params(9) = 0.1;
THETA = M_.params(9);
M_.params(10) = 0.1;
THETA_starr = M_.params(10);
M_.params(15) = 4.5;
ETA = M_.params(15);
M_.params(8) = 1;
GAMMA = M_.params(8);
M_.params(18) = M_.params(2)*(1-M_.params(6));
ALPHA = M_.params(18);
M_.params(19) = M_.params(2)*M_.params(6);
ALPHA_starr = M_.params(19);
M_.params(11) = 1-M_.params(2)*M_.params(6)+M_.params(2)*(1-M_.params(6))*(2-M_.params(2))*(M_.params(1)*M_.params(15)-1);
W_ALPHA_bar = M_.params(11);
M_.params(12) = (1-M_.params(9))*(1-M_.params(9)*M_.params(4))/M_.params(9);
LAMBDA = M_.params(12);
M_.params(13) = M_.params(2)*M_.params(6)*(1+(2-M_.params(2))*(M_.params(1)*M_.params(15)-1));
W_ALPHA_bar_starr = M_.params(13);
M_.params(14) = (1-M_.params(10))*(1-M_.params(4)*M_.params(10))/M_.params(10);
LAMBDA_starr = M_.params(14);
M_.params(16) = 0.85;
RHOA = M_.params(16);
M_.params(17) = 0.85;
RHOXI = M_.params(17);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 1;
M_.Sigma_e(4, 4) = 0;
M_.NNZDerivatives_objective = [6;6;0;];
M_.objective_tmp_nbr = [1; 0; 0; 0; ];
M_.params(21) = M_.params(4);
optimal_policy_discount_factor = M_.params(21);
options_.ramsey_policy = true;
options_.instruments = {'g_nat';'g_nat_starr'};
options_.irf = 30;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'model_draft_4_Natural_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_draft_4_Natural_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_draft_4_Natural_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_draft_4_Natural_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_draft_4_Natural_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_draft_4_Natural_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'model_draft_4_Natural_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 2 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
