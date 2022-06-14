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
M_.fname = 'PLANNER';
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
M_.endo_names = cell(14,1);
M_.endo_names_tex = cell(14,1);
M_.endo_names_long = cell(14,1);
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
M_.endo_names(5) = {'Y'};
M_.endo_names_tex(5) = {'Y'};
M_.endo_names_long(5) = {'Y'};
M_.endo_names(6) = {'G'};
M_.endo_names_tex(6) = {'G'};
M_.endo_names_long(6) = {'G'};
M_.endo_names(7) = {'A'};
M_.endo_names_tex(7) = {'A'};
M_.endo_names_long(7) = {'A'};
M_.endo_names(8) = {'C_starr'};
M_.endo_names_tex(8) = {'C\_starr'};
M_.endo_names_long(8) = {'C_starr'};
M_.endo_names(9) = {'C_H_starr'};
M_.endo_names_tex(9) = {'C\_H\_starr'};
M_.endo_names_long(9) = {'C_H_starr'};
M_.endo_names(10) = {'C_F_starr'};
M_.endo_names_tex(10) = {'C\_F\_starr'};
M_.endo_names_long(10) = {'C_F_starr'};
M_.endo_names(11) = {'N_starr'};
M_.endo_names_tex(11) = {'N\_starr'};
M_.endo_names_long(11) = {'N_starr'};
M_.endo_names(12) = {'Y_starr'};
M_.endo_names_tex(12) = {'Y\_starr'};
M_.endo_names_long(12) = {'Y_starr'};
M_.endo_names(13) = {'G_starr'};
M_.endo_names_tex(13) = {'G\_starr'};
M_.endo_names_long(13) = {'G_starr'};
M_.endo_names(14) = {'A_starr'};
M_.endo_names_tex(14) = {'A\_starr'};
M_.endo_names_long(14) = {'A_starr'};
M_.endo_partitions = struct();
M_.param_names = cell(13,1);
M_.param_names_tex = cell(13,1);
M_.param_names_long = cell(13,1);
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
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 14;
M_.param_nbr = 13;
M_.orig_endo_nbr = 14;
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
M_.orig_eq_nbr = 14;
M_.eq_nbr = 14;
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
 0 3;
 0 4;
 0 5;
 0 6;
 0 7;
 0 8;
 1 9;
 0 10;
 0 11;
 0 12;
 0 13;
 0 14;
 0 15;
 2 16;]';
M_.nstatic = 12;
M_.nfwrd   = 0;
M_.npred   = 2;
M_.nboth   = 0;
M_.nsfwrd   = 0;
M_.nspred   = 2;
M_.ndynamic   = 2;
M_.dynamic_tmp_nbr = [26; 10; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , '1' ;
  2 , 'name' , '2' ;
  3 , 'name' , '3' ;
  4 , 'name' , '4' ;
  5 , 'name' , '5' ;
  6 , 'name' , '6' ;
  7 , 'name' , '7' ;
  8 , 'name' , '8' ;
  9 , 'name' , '9' ;
  10 , 'name' , '10' ;
  11 , 'name' , 'Y' ;
  12 , 'name' , 'Y_starr' ;
  13 , 'name' , 'A' ;
  14 , 'name' , 'A_starr' ;
};
M_.mapping.C.eqidx = [1 2 7 ];
M_.mapping.C_H.eqidx = [1 7 9 ];
M_.mapping.C_F.eqidx = [2 7 10 ];
M_.mapping.N.eqidx = [5 11 ];
M_.mapping.Y.eqidx = [9 11 ];
M_.mapping.G.eqidx = [1 4 5 9 ];
M_.mapping.A.eqidx = [5 11 13 ];
M_.mapping.C_starr.eqidx = [3 4 8 ];
M_.mapping.C_H_starr.eqidx = [4 8 9 ];
M_.mapping.C_F_starr.eqidx = [3 8 10 ];
M_.mapping.N_starr.eqidx = [6 12 ];
M_.mapping.Y_starr.eqidx = [10 12 ];
M_.mapping.G_starr.eqidx = [2 3 6 10 ];
M_.mapping.A_starr.eqidx = [6 12 14 ];
M_.mapping.eps_a.eqidx = [13 ];
M_.mapping.eps_a_starr.eqidx = [14 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [7 14 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 0;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 0;
oo_.steady_state = zeros(14, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(13, 1);
M_.endo_trends = struct('deflator', cell(14, 1), 'log_deflator', cell(14, 1), 'growth_factor', cell(14, 1), 'log_growth_factor', cell(14, 1));
M_.NNZDerivatives = [44; -1; -1; ];
M_.static_tmp_nbr = [24; 10; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 1;
SIGMA = M_.params(1);
M_.params(2) = 0.5;
ALPHA_bar = M_.params(2);
M_.params(3) = 0.98;
BETA = M_.params(3);
M_.params(4) = 1;
PHI = M_.params(4);
M_.params(5) = 0.8;
h = M_.params(5);
M_.params(6) = M_.params(2)*(1-M_.params(5));
ALPHA = M_.params(6);
M_.params(7) = M_.params(2)*M_.params(5);
ALPHA_starr = M_.params(7);
M_.params(8) = 1;
GAMMA = M_.params(8);
M_.params(12) = 1.0001;
ETA = M_.params(12);
M_.params(13) = 0.03;
DELTA = M_.params(13);
M_.params(9) = M_.params(13)^M_.params(8);
CHI_G = M_.params(9);
M_.params(10) = (1-M_.params(13))^M_.params(1);
CHI_C = M_.params(10);
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
save([M_.dname filesep 'Output' filesep 'PLANNER_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'PLANNER_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'PLANNER_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'PLANNER_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'PLANNER_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'PLANNER_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'PLANNER_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
