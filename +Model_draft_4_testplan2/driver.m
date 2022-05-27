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
M_.fname = 'Model_draft_4_testplan2';
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
M_.endo_names = cell(35,1);
M_.endo_names_tex = cell(35,1);
M_.endo_names_long = cell(35,1);
M_.endo_names(1) = {'C'};
M_.endo_names_tex(1) = {'C'};
M_.endo_names_long(1) = {'C'};
M_.endo_names(2) = {'C_H'};
M_.endo_names_tex(2) = {'C\_H'};
M_.endo_names_long(2) = {'C_H'};
M_.endo_names(3) = {'C_F'};
M_.endo_names_tex(3) = {'C\_F'};
M_.endo_names_long(3) = {'C_F'};
M_.endo_names(4) = {'N'};
M_.endo_names_tex(4) = {'N'};
M_.endo_names_long(4) = {'N'};
M_.endo_names(5) = {'G'};
M_.endo_names_tex(5) = {'G'};
M_.endo_names_long(5) = {'G'};
M_.endo_names(6) = {'Y'};
M_.endo_names_tex(6) = {'Y'};
M_.endo_names_long(6) = {'Y'};
M_.endo_names(7) = {'A'};
M_.endo_names_tex(7) = {'A'};
M_.endo_names_long(7) = {'A'};
M_.endo_names(8) = {'XI'};
M_.endo_names_tex(8) = {'XI'};
M_.endo_names_long(8) = {'XI'};
M_.endo_names(9) = {'C_starr'};
M_.endo_names_tex(9) = {'C\_starr'};
M_.endo_names_long(9) = {'C_starr'};
M_.endo_names(10) = {'C_H_starr'};
M_.endo_names_tex(10) = {'C\_H\_starr'};
M_.endo_names_long(10) = {'C_H_starr'};
M_.endo_names(11) = {'C_F_starr'};
M_.endo_names_tex(11) = {'C\_F\_starr'};
M_.endo_names_long(11) = {'C_F_starr'};
M_.endo_names(12) = {'N_starr'};
M_.endo_names_tex(12) = {'N\_starr'};
M_.endo_names_long(12) = {'N_starr'};
M_.endo_names(13) = {'G_starr'};
M_.endo_names_tex(13) = {'G\_starr'};
M_.endo_names_long(13) = {'G_starr'};
M_.endo_names(14) = {'Y_starr'};
M_.endo_names_tex(14) = {'Y\_starr'};
M_.endo_names_long(14) = {'Y_starr'};
M_.endo_names(15) = {'A_starr'};
M_.endo_names_tex(15) = {'A\_starr'};
M_.endo_names_long(15) = {'A_starr'};
M_.endo_names(16) = {'XI_starr'};
M_.endo_names_tex(16) = {'XI\_starr'};
M_.endo_names_long(16) = {'XI_starr'};
M_.endo_names(17) = {'MULT_1'};
M_.endo_names_tex(17) = {'MULT\_1'};
M_.endo_names_long(17) = {'MULT_1'};
M_.endo_names(18) = {'MULT_2'};
M_.endo_names_tex(18) = {'MULT\_2'};
M_.endo_names_long(18) = {'MULT_2'};
M_.endo_names(19) = {'MULT_3'};
M_.endo_names_tex(19) = {'MULT\_3'};
M_.endo_names_long(19) = {'MULT_3'};
M_.endo_names(20) = {'MULT_4'};
M_.endo_names_tex(20) = {'MULT\_4'};
M_.endo_names_long(20) = {'MULT_4'};
M_.endo_names(21) = {'MULT_5'};
M_.endo_names_tex(21) = {'MULT\_5'};
M_.endo_names_long(21) = {'MULT_5'};
M_.endo_names(22) = {'MULT_6'};
M_.endo_names_tex(22) = {'MULT\_6'};
M_.endo_names_long(22) = {'MULT_6'};
M_.endo_names(23) = {'MULT_7'};
M_.endo_names_tex(23) = {'MULT\_7'};
M_.endo_names_long(23) = {'MULT_7'};
M_.endo_names(24) = {'MULT_8'};
M_.endo_names_tex(24) = {'MULT\_8'};
M_.endo_names_long(24) = {'MULT_8'};
M_.endo_names(25) = {'MULT_9'};
M_.endo_names_tex(25) = {'MULT\_9'};
M_.endo_names_long(25) = {'MULT_9'};
M_.endo_names(26) = {'MULT_10'};
M_.endo_names_tex(26) = {'MULT\_10'};
M_.endo_names_long(26) = {'MULT_10'};
M_.endo_names(27) = {'MULT_11'};
M_.endo_names_tex(27) = {'MULT\_11'};
M_.endo_names_long(27) = {'MULT_11'};
M_.endo_names(28) = {'MULT_12'};
M_.endo_names_tex(28) = {'MULT\_12'};
M_.endo_names_long(28) = {'MULT_12'};
M_.endo_names(29) = {'MULT_13'};
M_.endo_names_tex(29) = {'MULT\_13'};
M_.endo_names_long(29) = {'MULT_13'};
M_.endo_names(30) = {'MULT_14'};
M_.endo_names_tex(30) = {'MULT\_14'};
M_.endo_names_long(30) = {'MULT_14'};
M_.endo_names(31) = {'MULT_15'};
M_.endo_names_tex(31) = {'MULT\_15'};
M_.endo_names_long(31) = {'MULT_15'};
M_.endo_names(32) = {'AUX_EXO_LEAD_171'};
M_.endo_names_tex(32) = {'AUX\_EXO\_LEAD\_171'};
M_.endo_names_long(32) = {'AUX_EXO_LEAD_171'};
M_.endo_names(33) = {'AUX_EXO_LEAD_183'};
M_.endo_names_tex(33) = {'AUX\_EXO\_LEAD\_183'};
M_.endo_names_long(33) = {'AUX_EXO_LEAD_183'};
M_.endo_names(34) = {'AUX_EXO_LEAD_251'};
M_.endo_names_tex(34) = {'AUX\_EXO\_LEAD\_251'};
M_.endo_names_long(34) = {'AUX_EXO_LEAD_251'};
M_.endo_names(35) = {'AUX_EXO_LEAD_267'};
M_.endo_names_tex(35) = {'AUX\_EXO\_LEAD\_267'};
M_.endo_names_long(35) = {'AUX_EXO_LEAD_267'};
M_.endo_partitions = struct();
M_.param_names = cell(14,1);
M_.param_names_tex = cell(14,1);
M_.param_names_long = cell(14,1);
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
M_.param_names(8) = {'ETA'};
M_.param_names_tex(8) = {'ETA'};
M_.param_names_long(8) = {'ETA'};
M_.param_names(9) = {'GAMMA'};
M_.param_names_tex(9) = {'GAMMA'};
M_.param_names_long(9) = {'GAMMA'};
M_.param_names(10) = {'CHI'};
M_.param_names_tex(10) = {'CHI'};
M_.param_names_long(10) = {'CHI'};
M_.param_names(11) = {'EPSILON'};
M_.param_names_tex(11) = {'EPSILON'};
M_.param_names_long(11) = {'EPSILON'};
M_.param_names(12) = {'RHOA'};
M_.param_names_tex(12) = {'RHOA'};
M_.param_names_long(12) = {'RHOA'};
M_.param_names(13) = {'RHOXI'};
M_.param_names_tex(13) = {'RHOXI'};
M_.param_names_long(13) = {'RHOXI'};
M_.param_names(14) = {'optimal_policy_discount_factor'};
M_.param_names_tex(14) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(14) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 35;
M_.param_nbr = 14;
M_.orig_endo_nbr = 16;
M_.aux_vars(1).endo_index = 17;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 18;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 19;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 20;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 21;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.aux_vars(6).endo_index = 22;
M_.aux_vars(6).type = 6;
M_.aux_vars(6).eq_nbr = 6;
M_.aux_vars(7).endo_index = 23;
M_.aux_vars(7).type = 6;
M_.aux_vars(7).eq_nbr = 7;
M_.aux_vars(8).endo_index = 24;
M_.aux_vars(8).type = 6;
M_.aux_vars(8).eq_nbr = 8;
M_.aux_vars(9).endo_index = 25;
M_.aux_vars(9).type = 6;
M_.aux_vars(9).eq_nbr = 9;
M_.aux_vars(10).endo_index = 26;
M_.aux_vars(10).type = 6;
M_.aux_vars(10).eq_nbr = 10;
M_.aux_vars(11).endo_index = 27;
M_.aux_vars(11).type = 6;
M_.aux_vars(11).eq_nbr = 11;
M_.aux_vars(12).endo_index = 28;
M_.aux_vars(12).type = 6;
M_.aux_vars(12).eq_nbr = 12;
M_.aux_vars(13).endo_index = 29;
M_.aux_vars(13).type = 6;
M_.aux_vars(13).eq_nbr = 13;
M_.aux_vars(14).endo_index = 30;
M_.aux_vars(14).type = 6;
M_.aux_vars(14).eq_nbr = 14;
M_.aux_vars(15).endo_index = 31;
M_.aux_vars(15).type = 6;
M_.aux_vars(15).eq_nbr = 15;
M_.aux_vars(16).endo_index = 32;
M_.aux_vars(16).type = 2;
M_.aux_vars(16).orig_expr = 'eps_a';
M_.aux_vars(17).endo_index = 33;
M_.aux_vars(17).type = 2;
M_.aux_vars(17).orig_expr = 'eps_xi';
M_.aux_vars(18).endo_index = 34;
M_.aux_vars(18).type = 2;
M_.aux_vars(18).orig_expr = 'eps_a_starr';
M_.aux_vars(19).endo_index = 35;
M_.aux_vars(19).type = 2;
M_.aux_vars(19).orig_expr = 'eps_xi_starr';
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
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [1 2 3 4 5 7 8 9 10 11 12 13 15 16 17 19 20 22 23 24 25 26];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 15;
M_.eq_nbr = 35;
M_.ramsey_eq_nbr = 16;
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
 0 5 0;
 0 6 0;
 0 7 0;
 0 8 0;
 0 9 0;
 0 10 0;
 1 11 0;
 2 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 3 19 0;
 4 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 40;
 0 28 41;
 0 29 42;
 0 30 43;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 44;
 0 37 45;
 0 38 46;
 0 39 47;]';
M_.nstatic = 23;
M_.nfwrd   = 8;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 8;
M_.nspred   = 4;
M_.ndynamic   = 12;
M_.dynamic_tmp_nbr = [24; 15; 2; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  17 , 'name' , 'Y' ;
  18 , 'name' , '2' ;
  19 , 'name' , 'C' ;
  20 , 'name' , 'Y_starr' ;
  21 , 'name' , '5' ;
  22 , 'name' , 'C_starr' ;
  23 , 'name' , 'A' ;
  24 , 'name' , 'A_starr' ;
  25 , 'name' , 'XI' ;
  26 , 'name' , 'XI_starr' ;
  27 , 'name' , 'C_H' ;
  28 , 'name' , 'C_F' ;
  29 , 'name' , 'C_F_starr' ;
  30 , 'name' , 'C_H_starr' ;
  31 , 'name' , '15' ;
};
M_.mapping.C.eqidx = [1 19 27 28 ];
M_.mapping.C_H.eqidx = [2 3 18 19 27 ];
M_.mapping.C_F.eqidx = [2 3 19 21 28 ];
M_.mapping.N.eqidx = [4 7 17 ];
M_.mapping.G.eqidx = [5 18 ];
M_.mapping.Y.eqidx = [17 18 31 ];
M_.mapping.A.eqidx = [4 7 17 23 ];
M_.mapping.XI.eqidx = [8 25 ];
M_.mapping.C_starr.eqidx = [9 22 29 30 ];
M_.mapping.C_H_starr.eqidx = [10 11 18 22 30 ];
M_.mapping.C_F_starr.eqidx = [10 11 21 22 29 ];
M_.mapping.N_starr.eqidx = [12 15 16 20 ];
M_.mapping.G_starr.eqidx = [13 21 ];
M_.mapping.Y_starr.eqidx = [20 21 31 ];
M_.mapping.A_starr.eqidx = [12 15 20 24 ];
M_.mapping.XI_starr.eqidx = [12 16 26 ];
M_.mapping.eps_a.eqidx = [7 23 ];
M_.mapping.eps_xi.eqidx = [8 25 ];
M_.mapping.eps_a_starr.eqidx = [15 24 ];
M_.mapping.eps_xi_starr.eqidx = [16 26 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [7 8 15 16 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(35, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(14, 1);
M_.endo_trends = struct('deflator', cell(35, 1), 'log_deflator', cell(35, 1), 'growth_factor', cell(35, 1), 'log_growth_factor', cell(35, 1));
M_.NNZDerivatives = [116; 109; -1; ];
M_.static_tmp_nbr = [24; 2; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 3;
SIGMA = M_.params(1);
M_.params(2) = 0.8;
ALPHA_bar = M_.params(2);
M_.params(3) = 0.99;
BETA = M_.params(3);
M_.params(4) = 3;
PHI = M_.params(4);
M_.params(5) = 0.5;
h = M_.params(5);
M_.params(6) = M_.params(2)*(1-M_.params(5));
ALPHA = M_.params(6);
M_.params(7) = M_.params(2)*M_.params(5);
ALPHA_starr = M_.params(7);
M_.params(8) = 2;
ETA = M_.params(8);
M_.params(9) = M_.params(1);
GAMMA = M_.params(9);
M_.params(10) = 0.25;
CHI = M_.params(10);
M_.params(11) = 11;
EPSILON = M_.params(11);
M_.params(12) = 0.8;
RHOA = M_.params(12);
M_.params(13) = 0.8;
RHOXI = M_.params(13);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 0;
M_.Sigma_e(4, 4) = 0;
M_.NNZDerivatives_objective = [7;8;7;];
M_.objective_tmp_nbr = [1; 1; 1; 0; ];
M_.params(14) = M_.params(3);
optimal_policy_discount_factor = M_.params(14);
options_.ramsey_policy = true;
options_.instruments = {'C';'C_starr';'N';'G';'N_starr';'G_starr'};
steady;


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan2_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan2_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan2_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan2_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan2_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan2_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan2_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 6 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
