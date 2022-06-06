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
M_.fname = 'Model_draft_4_Natural';
M_.dynare_version = '5.0';
oo_.dynare_version = '5.0';
options_.dynare_version = '5.0';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(5,1);
M_.exo_names_tex = cell(5,1);
M_.exo_names_long = cell(5,1);
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
M_.exo_names(5) = {'eps_a_cu'};
M_.exo_names_tex(5) = {'eps\_a\_cu'};
M_.exo_names_long(5) = {'eps_a_cu'};
M_.endo_names = cell(14,1);
M_.endo_names_tex = cell(14,1);
M_.endo_names_long = cell(14,1);
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
M_.endo_names(14) = {'junk'};
M_.endo_names_tex(14) = {'junk'};
M_.endo_names_long(14) = {'junk'};
M_.endo_partitions = struct();
M_.param_names = cell(38,1);
M_.param_names_tex = cell(38,1);
M_.param_names_long = cell(38,1);
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
M_.param_names(20) = {'COEF_y_natH'};
M_.param_names_tex(20) = {'COEF\_y\_natH'};
M_.param_names_long(20) = {'COEF_y_natH'};
M_.param_names(21) = {'COEF_y_natF'};
M_.param_names_tex(21) = {'COEF\_y\_natF'};
M_.param_names_long(21) = {'COEF_y_natF'};
M_.param_names(22) = {'COEF_c_natH'};
M_.param_names_tex(22) = {'COEF\_c\_natH'};
M_.param_names_long(22) = {'COEF_c_natH'};
M_.param_names(23) = {'COEF_c_natF'};
M_.param_names_tex(23) = {'COEF\_c\_natF'};
M_.param_names_long(23) = {'COEF_c_natF'};
M_.param_names(24) = {'COEF_aH'};
M_.param_names_tex(24) = {'COEF\_aH'};
M_.param_names_long(24) = {'COEF_aH'};
M_.param_names(25) = {'COEF_aF'};
M_.param_names_tex(25) = {'COEF\_aF'};
M_.param_names_long(25) = {'COEF_aF'};
M_.param_names(26) = {'COEF_xiH'};
M_.param_names_tex(26) = {'COEF\_xiH'};
M_.param_names_long(26) = {'COEF_xiH'};
M_.param_names(27) = {'COEF_xiF'};
M_.param_names_tex(27) = {'COEF\_xiF'};
M_.param_names_long(27) = {'COEF_xiF'};
M_.param_names(28) = {'COEF_s_nat'};
M_.param_names_tex(28) = {'COEF\_s\_nat'};
M_.param_names_long(28) = {'COEF_s_nat'};
M_.param_names(29) = {'COEF_y_natH_starr'};
M_.param_names_tex(29) = {'COEF\_y\_natH\_starr'};
M_.param_names_long(29) = {'COEF_y_natH_starr'};
M_.param_names(30) = {'COEF_y_natF_starr'};
M_.param_names_tex(30) = {'COEF\_y\_natF\_starr'};
M_.param_names_long(30) = {'COEF_y_natF_starr'};
M_.param_names(31) = {'COEF_c_natH_starr'};
M_.param_names_tex(31) = {'COEF\_c\_natH\_starr'};
M_.param_names_long(31) = {'COEF_c_natH_starr'};
M_.param_names(32) = {'COEF_c_natF_starr'};
M_.param_names_tex(32) = {'COEF\_c\_natF\_starr'};
M_.param_names_long(32) = {'COEF_c_natF_starr'};
M_.param_names(33) = {'COEF_aH_starr'};
M_.param_names_tex(33) = {'COEF\_aH\_starr'};
M_.param_names_long(33) = {'COEF_aH_starr'};
M_.param_names(34) = {'COEF_aF_starr'};
M_.param_names_tex(34) = {'COEF\_aF\_starr'};
M_.param_names_long(34) = {'COEF_aF_starr'};
M_.param_names(35) = {'COEF_xiH_starr'};
M_.param_names_tex(35) = {'COEF\_xiH\_starr'};
M_.param_names_long(35) = {'COEF_xiH_starr'};
M_.param_names(36) = {'COEF_xiF_starr'};
M_.param_names_tex(36) = {'COEF\_xiF\_starr'};
M_.param_names_long(36) = {'COEF_xiF_starr'};
M_.param_names(37) = {'COEF_s_nat_starr'};
M_.param_names_tex(37) = {'COEF\_s\_nat\_starr'};
M_.param_names_long(37) = {'COEF_s_nat_starr'};
M_.param_names(38) = {'end'};
M_.param_names_tex(38) = {'end'};
M_.param_names_long(38) = {'end'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 5;
M_.endo_nbr = 14;
M_.param_nbr = 38;
M_.orig_endo_nbr = 14;
M_.aux_vars = [];
M_ = setup_solvers(M_);
M_.Sigma_e = zeros(5, 5);
M_.Correlation_matrix = eye(5, 5);
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
M_.orig_eq_nbr = 14;
M_.eq_nbr = 14;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
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
 0 18 19;]';
M_.nstatic = 9;
M_.nfwrd   = 1;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 1;
M_.nspred   = 4;
M_.ndynamic   = 5;
M_.dynamic_tmp_nbr = [1; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , 'c_nat' ;
  5 , 'name' , 'c_nat_starr' ;
  6 , 'name' , 'g_nat' ;
  7 , 'name' , 'g_nat_starr' ;
  8 , 'name' , 'junk' ;
  9 , 'name' , 'y_nat_cu' ;
  10 , 'name' , 'g_nat_cu' ;
  11 , 'name' , 'Home TFP process' ;
  12 , 'name' , 'Home Labor disutility shifter' ;
  13 , 'name' , 'Foreign TFP process' ;
  14 , 'name' , 'Foreign Labor disutility shifter' ;
};
M_.mapping.a.eqidx = [1 6 7 11 ];
M_.mapping.xi.eqidx = [1 6 7 12 ];
M_.mapping.y_nat.eqidx = [1 4 6 7 9 ];
M_.mapping.g_nat.eqidx = [4 6 10 ];
M_.mapping.c_nat.eqidx = [1 3 4 6 7 ];
M_.mapping.a_starr.eqidx = [2 6 7 13 ];
M_.mapping.xi_starr.eqidx = [2 6 7 14 ];
M_.mapping.y_nat_starr.eqidx = [2 5 6 7 9 ];
M_.mapping.g_nat_starr.eqidx = [5 7 10 ];
M_.mapping.c_nat_starr.eqidx = [2 3 5 6 7 ];
M_.mapping.s_nat.eqidx = [1 2 3 4 5 6 7 ];
M_.mapping.y_nat_cu.eqidx = [9 ];
M_.mapping.g_nat_cu.eqidx = [10 ];
M_.mapping.junk.eqidx = [8 ];
M_.mapping.eps_a.eqidx = [11 ];
M_.mapping.eps_xi.eqidx = [12 ];
M_.mapping.eps_a_starr.eqidx = [13 ];
M_.mapping.eps_xi_starr.eqidx = [14 ];
M_.mapping.eps_a_cu.eqidx = [11 13 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 6 7 ];
M_.exo_names_orig_ord = [1:5];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(14, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(5, 1);
M_.params = NaN(38, 1);
M_.endo_trends = struct('deflator', cell(14, 1), 'log_deflator', cell(14, 1), 'growth_factor', cell(14, 1), 'log_growth_factor', cell(14, 1));
M_.NNZDerivatives = [63; 0; -1; ];
M_.static_tmp_nbr = [1; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 1;
SIGMA = M_.params(1);
M_.params(2) = 0.5;
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
M_.params(15) = 4.5;
ETA = M_.params(15);
M_.params(8) = 1;
GAMMA = M_.params(8);
M_.params(20) = 1;
COEF_y_natH = M_.params(20);
M_.params(21) = 1;
COEF_y_natF = M_.params(21);
M_.params(22) = 1;
COEF_c_natH = M_.params(22);
M_.params(23) = 1;
COEF_c_natF = M_.params(23);
M_.params(24) = 1;
COEF_aH = M_.params(24);
M_.params(25) = 1;
COEF_aF = M_.params(25);
M_.params(26) = 1;
COEF_xiH = M_.params(26);
M_.params(27) = 1;
COEF_xiF = M_.params(27);
M_.params(28) = 1;
COEF_s_nat = M_.params(28);
M_.params(29) = 1;
COEF_y_natH_starr = M_.params(29);
M_.params(30) = 1;
COEF_y_natF_starr = M_.params(30);
M_.params(31) = 1;
COEF_c_natH_starr = M_.params(31);
M_.params(32) = 1;
COEF_c_natF_starr = M_.params(32);
M_.params(33) = 1;
COEF_aH_starr = M_.params(33);
M_.params(34) = 1;
COEF_aF_starr = M_.params(34);
M_.params(35) = 1;
COEF_xiH_starr = M_.params(35);
M_.params(36) = 1;
COEF_xiF_starr = M_.params(36);
M_.params(37) = 1;
COEF_s_nat_starr = M_.params(37);
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
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 1;
M_.Sigma_e(4, 4) = 1;
M_.Sigma_e(5, 5) = 1;
%
% OPTIM_WEIGHTS
%
M_.osr.variable_weights = sparse(M_.endo_nbr,M_.endo_nbr);
M_.osr.variable_indices = [];

M_.osr.variable_weights(5,5) = M_.params(6)*M_.params(1)*(1-M_.params(3));
M_.osr.variable_indices = [M_.osr.variable_indices; 5];
M_.osr.variable_weights(10,10) = (1-M_.params(3))*(1-M_.params(6))*M_.params(1);
M_.osr.variable_indices = [M_.osr.variable_indices; 10];
M_.osr.variable_weights(4,4) = M_.params(6)*M_.params(8)*M_.params(3);
M_.osr.variable_indices = [M_.osr.variable_indices; 4];
M_.osr.variable_weights(9,9) = M_.params(3)*(1-M_.params(6))*M_.params(8);
M_.osr.variable_indices = [M_.osr.variable_indices; 9];
M_.osr.variable_weights(3,3) = M_.params(6)*M_.params(5);
M_.osr.variable_indices = [M_.osr.variable_indices; 3];
M_.osr.variable_weights(8,8) = (1-M_.params(6))*M_.params(5);
M_.osr.variable_indices = [M_.osr.variable_indices; 8];
M_.osr.param_names = {'COEF_y_natH';'COEF_y_natF';'COEF_c_natH';'COEF_c_natF';'COEF_aH';'COEF_aF';'COEF_xiH';'COEF_xiF';'COEF_s_nat';'COEF_y_natH_starr';'COEF_y_natF_starr';'COEF_c_natH_starr';'COEF_c_natF_starr';'COEF_aH_starr';'COEF_aF_starr';'COEF_xiH_starr';'COEF_xiF_starr';'COEF_s_nat_starr'};
M_.osr.param_names = cellstr(M_.osr.param_names);
M_.osr.param_indices = zeros(length(M_.osr.param_names), 1);
M_.osr.param_indices(1) = 20;
M_.osr.param_indices(2) = 21;
M_.osr.param_indices(3) = 22;
M_.osr.param_indices(4) = 23;
M_.osr.param_indices(5) = 24;
M_.osr.param_indices(6) = 25;
M_.osr.param_indices(7) = 26;
M_.osr.param_indices(8) = 27;
M_.osr.param_indices(9) = 28;
M_.osr.param_indices(10) = 29;
M_.osr.param_indices(11) = 30;
M_.osr.param_indices(12) = 31;
M_.osr.param_indices(13) = 32;
M_.osr.param_indices(14) = 33;
M_.osr.param_indices(15) = 34;
M_.osr.param_indices(16) = 35;
M_.osr.param_indices(17) = 36;
M_.osr.param_indices(18) = 37;
options_.irf = 30;
options_.nograph = true;
options_.osr.opt_algo = 9;
var_list_ = {};
oo_.osr = osr(var_list_,M_.osr.param_names,M_.osr.variable_indices,M_.osr.variable_weights);
oo_.osr.optim_params


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Model_draft_4_Natural_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_Natural_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_Natural_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_Natural_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_Natural_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_Natural_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_Natural_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
