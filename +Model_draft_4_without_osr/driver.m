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
M_.fname = 'Model_draft_4_without_osr';
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
M_.endo_names = cell(25,1);
M_.endo_names_tex = cell(25,1);
M_.endo_names_long = cell(25,1);
M_.endo_names(1) = {'a'};
M_.endo_names_tex(1) = {'{a}'};
M_.endo_names_long(1) = {'Home technology shock process (log dev ss)'};
M_.endo_names(2) = {'xi'};
M_.endo_names_tex(2) = {'{xi}'};
M_.endo_names_long(2) = {'Home labor disutility shock process (log dev ss)'};
M_.endo_names(3) = {'y'};
M_.endo_names_tex(3) = {'{y}'};
M_.endo_names_long(3) = {'Home output (log dev ss)'};
M_.endo_names(4) = {'pie'};
M_.endo_names_tex(4) = {'pie'};
M_.endo_names_long(4) = {'pie'};
M_.endo_names(5) = {'g'};
M_.endo_names_tex(5) = {'{g}'};
M_.endo_names_long(5) = {'Home government consumption (log dev ss)'};
M_.endo_names(6) = {'a_starr'};
M_.endo_names_tex(6) = {'{a^*}'};
M_.endo_names_long(6) = {'Foreign technology shock process (log dev ss)'};
M_.endo_names(7) = {'xi_starr'};
M_.endo_names_tex(7) = {'{xi^*}'};
M_.endo_names_long(7) = {'Foreign labor disutility shock process (log dev ss)'};
M_.endo_names(8) = {'y_starr'};
M_.endo_names_tex(8) = {'{y^*}'};
M_.endo_names_long(8) = {'Foreign output (log dev ss)'};
M_.endo_names(9) = {'pie_starr'};
M_.endo_names_tex(9) = {'pie\_starr'};
M_.endo_names_long(9) = {'pie_starr'};
M_.endo_names(10) = {'g_starr'};
M_.endo_names_tex(10) = {'{g^*}'};
M_.endo_names_long(10) = {'Foreign government consumption (log dev ss)'};
M_.endo_names(11) = {'ii'};
M_.endo_names_tex(11) = {'{i}'};
M_.endo_names_long(11) = {'nominal interest rate (log dev ss)'};
M_.endo_names(12) = {'s'};
M_.endo_names_tex(12) = {'{s}'};
M_.endo_names_long(12) = {'terms of trade (log dev ss)'};
M_.endo_names(13) = {'pie_cu'};
M_.endo_names_tex(13) = {'pie\_cu'};
M_.endo_names_long(13) = {'pie_cu'};
M_.endo_names(14) = {'y_cu'};
M_.endo_names_tex(14) = {'y\_cu'};
M_.endo_names_long(14) = {'y_cu'};
M_.endo_names(15) = {'MULT_1'};
M_.endo_names_tex(15) = {'MULT\_1'};
M_.endo_names_long(15) = {'MULT_1'};
M_.endo_names(16) = {'MULT_2'};
M_.endo_names_tex(16) = {'MULT\_2'};
M_.endo_names_long(16) = {'MULT_2'};
M_.endo_names(17) = {'MULT_3'};
M_.endo_names_tex(17) = {'MULT\_3'};
M_.endo_names_long(17) = {'MULT_3'};
M_.endo_names(18) = {'MULT_4'};
M_.endo_names_tex(18) = {'MULT\_4'};
M_.endo_names_long(18) = {'MULT_4'};
M_.endo_names(19) = {'MULT_5'};
M_.endo_names_tex(19) = {'MULT\_5'};
M_.endo_names_long(19) = {'MULT_5'};
M_.endo_names(20) = {'MULT_6'};
M_.endo_names_tex(20) = {'MULT\_6'};
M_.endo_names_long(20) = {'MULT_6'};
M_.endo_names(21) = {'MULT_7'};
M_.endo_names_tex(21) = {'MULT\_7'};
M_.endo_names_long(21) = {'MULT_7'};
M_.endo_names(22) = {'MULT_8'};
M_.endo_names_tex(22) = {'MULT\_8'};
M_.endo_names_long(22) = {'MULT_8'};
M_.endo_names(23) = {'MULT_9'};
M_.endo_names_tex(23) = {'MULT\_9'};
M_.endo_names_long(23) = {'MULT_9'};
M_.endo_names(24) = {'MULT_10'};
M_.endo_names_tex(24) = {'MULT\_10'};
M_.endo_names_long(24) = {'MULT_10'};
M_.endo_names(25) = {'MULT_11'};
M_.endo_names_tex(25) = {'MULT\_11'};
M_.endo_names_long(25) = {'MULT_11'};
M_.endo_partitions = struct();
M_.param_names = cell(17,1);
M_.param_names_tex = cell(17,1);
M_.param_names_long = cell(17,1);
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
M_.param_names(7) = {'THETA'};
M_.param_names_tex(7) = {'THETA'};
M_.param_names_long(7) = {'THETA'};
M_.param_names(8) = {'THETA_starr'};
M_.param_names_tex(8) = {'THETA\_starr'};
M_.param_names_long(8) = {'THETA_starr'};
M_.param_names(9) = {'W_ALPHA_bar'};
M_.param_names_tex(9) = {'W\_ALPHA\_bar'};
M_.param_names_long(9) = {'W_ALPHA_bar'};
M_.param_names(10) = {'LAMBDA'};
M_.param_names_tex(10) = {'LAMBDA'};
M_.param_names_long(10) = {'LAMBDA'};
M_.param_names(11) = {'W_ALPHA_bar_starr'};
M_.param_names_tex(11) = {'W\_ALPHA\_bar\_starr'};
M_.param_names_long(11) = {'W_ALPHA_bar_starr'};
M_.param_names(12) = {'LAMBDA_starr'};
M_.param_names_tex(12) = {'LAMBDA\_starr'};
M_.param_names_long(12) = {'LAMBDA_starr'};
M_.param_names(13) = {'ETA'};
M_.param_names_tex(13) = {'ETA'};
M_.param_names_long(13) = {'ETA'};
M_.param_names(14) = {'RHOA'};
M_.param_names_tex(14) = {'RHOA'};
M_.param_names_long(14) = {'RHOA'};
M_.param_names(15) = {'RHOXI'};
M_.param_names_tex(15) = {'RHOXI'};
M_.param_names_long(15) = {'RHOXI'};
M_.param_names(16) = {'CHI'};
M_.param_names_tex(16) = {'CHI'};
M_.param_names_long(16) = {'CHI'};
M_.param_names(17) = {'optimal_policy_discount_factor'};
M_.param_names_tex(17) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(17) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 25;
M_.param_nbr = 17;
M_.orig_endo_nbr = 14;
M_.aux_vars(1).endo_index = 15;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 16;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 17;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 18;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 19;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.aux_vars(6).endo_index = 20;
M_.aux_vars(6).type = 6;
M_.aux_vars(6).eq_nbr = 6;
M_.aux_vars(7).endo_index = 21;
M_.aux_vars(7).type = 6;
M_.aux_vars(7).eq_nbr = 7;
M_.aux_vars(8).endo_index = 22;
M_.aux_vars(8).type = 6;
M_.aux_vars(8).eq_nbr = 8;
M_.aux_vars(9).endo_index = 23;
M_.aux_vars(9).type = 6;
M_.aux_vars(9).eq_nbr = 9;
M_.aux_vars(10).endo_index = 24;
M_.aux_vars(10).type = 6;
M_.aux_vars(10).eq_nbr = 10;
M_.aux_vars(11).endo_index = 25;
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
M_.eq_nbr = 25;
M_.ramsey_eq_nbr = 14;
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
 1 9 0;
 2 10 0;
 0 11 34;
 0 12 35;
 0 13 36;
 3 14 0;
 4 15 0;
 0 16 37;
 0 17 38;
 0 18 39;
 0 19 0;
 0 20 40;
 0 21 0;
 0 22 0;
 5 23 0;
 6 24 0;
 7 25 0;
 8 26 0;
 0 27 0;
 0 28 41;
 0 29 42;
 0 30 43;
 0 31 44;
 0 32 0;
 0 33 0;]';
M_.nstatic = 6;
M_.nfwrd   = 11;
M_.npred   = 8;
M_.nboth   = 0;
M_.nsfwrd   = 11;
M_.nspred   = 8;
M_.ndynamic   = 19;
M_.dynamic_tmp_nbr = [8; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  15 , 'name' , 'Home Dynamic IS Curve' ;
  16 , 'name' , 'Home New Keynesian Phillips Curve' ;
  17 , 'name' , 'Foreign Dynamic IS Curve' ;
  18 , 'name' , 'Foreign New Keynesian Phillips Curve' ;
  19 , 'name' , 'IRS' ;
  20 , 'name' , 'TFP process' ;
  21 , 'name' , 'Labor disutility shifter' ;
  22 , 'name' , 'TFP process' ;
  23 , 'name' , 'Labor disutility shifter' ;
  24 , 'name' , 'Currency union inflation' ;
  25 , 'name' , 'Currency union output' ;
};
M_.mapping.a.eqidx = [1 3 16 20 ];
M_.mapping.xi.eqidx = [16 21 ];
M_.mapping.y.eqidx = [1 3 15 16 19 25 ];
M_.mapping.pie.eqidx = [4 15 16 24 ];
M_.mapping.g.eqidx = [5 15 16 19 ];
M_.mapping.a_starr.eqidx = [6 8 18 22 ];
M_.mapping.xi_starr.eqidx = [18 23 ];
M_.mapping.y_starr.eqidx = [6 8 17 18 19 25 ];
M_.mapping.pie_starr.eqidx = [9 17 18 24 ];
M_.mapping.g_starr.eqidx = [10 17 18 19 ];
M_.mapping.ii.eqidx = [15 17 ];
M_.mapping.s.eqidx = [15 16 17 18 19 ];
M_.mapping.pie_cu.eqidx = [24 ];
M_.mapping.y_cu.eqidx = [25 ];
M_.mapping.eps_a.eqidx = [20 ];
M_.mapping.eps_xi.eqidx = [21 ];
M_.mapping.eps_a_starr.eqidx = [22 ];
M_.mapping.eps_xi_starr.eqidx = [23 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 6 7 15 16 17 18 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(25, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(17, 1);
M_.endo_trends = struct('deflator', cell(25, 1), 'log_deflator', cell(25, 1), 'growth_factor', cell(25, 1), 'log_growth_factor', cell(25, 1));
M_.NNZDerivatives = [114; 0; -1; ];
M_.static_tmp_nbr = [7; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 2;
SIGMA = M_.params(1);
M_.params(2) = 0.5;
ALPHA_bar = M_.params(2);
M_.params(3) = 0.2;
DELTA = M_.params(3);
M_.params(4) = 0.99;
BETA = M_.params(4);
M_.params(5) = 3;
PHI = M_.params(5);
M_.params(6) = 0.99;
h = M_.params(6);
M_.params(7) = 0.99;
THETA = M_.params(7);
M_.params(8) = 0.99;
THETA_starr = M_.params(8);
M_.params(13) = 1;
ETA = M_.params(13);
M_.params(16) = 0.03;
CHI = M_.params(16);
M_.params(9) = 1-M_.params(2)*M_.params(6)+M_.params(2)*(1-M_.params(6))*(2-M_.params(2))*(M_.params(1)*M_.params(13)-1);
W_ALPHA_bar = M_.params(9);
M_.params(10) = (1-M_.params(7))*(1-M_.params(7)*M_.params(4))/M_.params(7);
LAMBDA = M_.params(10);
M_.params(11) = M_.params(2)*M_.params(6)*(1+(2-M_.params(2))*(M_.params(1)*M_.params(13)-1));
W_ALPHA_bar_starr = M_.params(11);
M_.params(12) = (1-M_.params(8))*(1-M_.params(4)*M_.params(8))/M_.params(8);
LAMBDA_starr = M_.params(12);
M_.params(14) = 0.8;
RHOA = M_.params(14);
M_.params(15) = 0.8;
RHOXI = M_.params(15);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 0;
M_.Sigma_e(4, 4) = 0;
M_.NNZDerivatives_objective = [8;12;0;];
M_.objective_tmp_nbr = [0; 0; 0; 0; ];
M_.params(17) = M_.params(4);
optimal_policy_discount_factor = M_.params(17);
options_.ramsey_policy = true;
options_.instruments = {'ii';'g';'g_starr'};
options_.irf = 30;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Model_draft_4_without_osr_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_without_osr_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_without_osr_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_without_osr_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_without_osr_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_without_osr_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_without_osr_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
