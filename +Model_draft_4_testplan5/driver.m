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
M_.fname = 'Model_draft_4_testplan5';
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
M_.exo_names(2) = {'eps_a_starr'};
M_.exo_names_tex(2) = {'eps\_a\_starr'};
M_.exo_names_long(2) = {'eps_a_starr'};
M_.exo_names(3) = {'eps_xi'};
M_.exo_names_tex(3) = {'eps\_xi'};
M_.exo_names_long(3) = {'eps_xi'};
M_.exo_names(4) = {'eps_xi_starr'};
M_.exo_names_tex(4) = {'eps\_xi\_starr'};
M_.exo_names_long(4) = {'eps_xi_starr'};
M_.endo_names = cell(26,1);
M_.endo_names_tex = cell(26,1);
M_.endo_names_long = cell(26,1);
M_.endo_names(1) = {'C'};
M_.endo_names_tex(1) = {'C'};
M_.endo_names_long(1) = {'C'};
M_.endo_names(2) = {'N'};
M_.endo_names_tex(2) = {'N'};
M_.endo_names_long(2) = {'N'};
M_.endo_names(3) = {'Y'};
M_.endo_names_tex(3) = {'Y'};
M_.endo_names_long(3) = {'Y'};
M_.endo_names(4) = {'G'};
M_.endo_names_tex(4) = {'G'};
M_.endo_names_long(4) = {'G'};
M_.endo_names(5) = {'A'};
M_.endo_names_tex(5) = {'A'};
M_.endo_names_long(5) = {'A'};
M_.endo_names(6) = {'XI'};
M_.endo_names_tex(6) = {'XI'};
M_.endo_names_long(6) = {'XI'};
M_.endo_names(7) = {'C_starr'};
M_.endo_names_tex(7) = {'C\_starr'};
M_.endo_names_long(7) = {'C_starr'};
M_.endo_names(8) = {'N_starr'};
M_.endo_names_tex(8) = {'N\_starr'};
M_.endo_names_long(8) = {'N_starr'};
M_.endo_names(9) = {'Y_starr'};
M_.endo_names_tex(9) = {'Y\_starr'};
M_.endo_names_long(9) = {'Y_starr'};
M_.endo_names(10) = {'G_starr'};
M_.endo_names_tex(10) = {'G\_starr'};
M_.endo_names_long(10) = {'G_starr'};
M_.endo_names(11) = {'A_starr'};
M_.endo_names_tex(11) = {'A\_starr'};
M_.endo_names_long(11) = {'A_starr'};
M_.endo_names(12) = {'XI_starr'};
M_.endo_names_tex(12) = {'XI\_starr'};
M_.endo_names_long(12) = {'XI_starr'};
M_.endo_names(13) = {'LAMBDA_1'};
M_.endo_names_tex(13) = {'LAMBDA\_1'};
M_.endo_names_long(13) = {'LAMBDA_1'};
M_.endo_names(14) = {'LAMBDA_2'};
M_.endo_names_tex(14) = {'LAMBDA\_2'};
M_.endo_names_long(14) = {'LAMBDA_2'};
M_.endo_names(15) = {'c'};
M_.endo_names_tex(15) = {'c'};
M_.endo_names_long(15) = {'c'};
M_.endo_names(16) = {'n'};
M_.endo_names_tex(16) = {'n'};
M_.endo_names_long(16) = {'n'};
M_.endo_names(17) = {'g'};
M_.endo_names_tex(17) = {'g'};
M_.endo_names_long(17) = {'g'};
M_.endo_names(18) = {'a'};
M_.endo_names_tex(18) = {'a'};
M_.endo_names_long(18) = {'a'};
M_.endo_names(19) = {'xi'};
M_.endo_names_tex(19) = {'xi'};
M_.endo_names_long(19) = {'xi'};
M_.endo_names(20) = {'y'};
M_.endo_names_tex(20) = {'y'};
M_.endo_names_long(20) = {'y'};
M_.endo_names(21) = {'c_starr'};
M_.endo_names_tex(21) = {'c\_starr'};
M_.endo_names_long(21) = {'c_starr'};
M_.endo_names(22) = {'n_starr'};
M_.endo_names_tex(22) = {'n\_starr'};
M_.endo_names_long(22) = {'n_starr'};
M_.endo_names(23) = {'g_starr'};
M_.endo_names_tex(23) = {'g\_starr'};
M_.endo_names_long(23) = {'g_starr'};
M_.endo_names(24) = {'a_starr'};
M_.endo_names_tex(24) = {'a\_starr'};
M_.endo_names_long(24) = {'a_starr'};
M_.endo_names(25) = {'xi_starr'};
M_.endo_names_tex(25) = {'xi\_starr'};
M_.endo_names_long(25) = {'xi_starr'};
M_.endo_names(26) = {'y_starr'};
M_.endo_names_tex(26) = {'y\_starr'};
M_.endo_names_long(26) = {'y_starr'};
M_.endo_partitions = struct();
M_.param_names = cell(11,1);
M_.param_names_tex = cell(11,1);
M_.param_names_long = cell(11,1);
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
M_.param_names(9) = {'CHI'};
M_.param_names_tex(9) = {'CHI'};
M_.param_names_long(9) = {'CHI'};
M_.param_names(10) = {'RHOA'};
M_.param_names_tex(10) = {'RHOA'};
M_.param_names_long(10) = {'RHOA'};
M_.param_names(11) = {'RHOXI'};
M_.param_names_tex(11) = {'RHOXI'};
M_.param_names_long(11) = {'RHOXI'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 26;
M_.param_nbr = 11;
M_.orig_endo_nbr = 26;
M_.aux_vars = [];
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
M_.orig_eq_nbr = 26;
M_.eq_nbr = 26;
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
 0 5;
 0 6;
 0 7;
 0 8;
 1 9;
 2 10;
 0 11;
 0 12;
 0 13;
 0 14;
 3 15;
 4 16;
 0 17;
 0 18;
 0 19;
 0 20;
 0 21;
 0 22;
 0 23;
 0 24;
 0 25;
 0 26;
 0 27;
 0 28;
 0 29;
 0 30;]';
M_.nstatic = 22;
M_.nfwrd   = 0;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 0;
M_.nspred   = 4;
M_.ndynamic   = 4;
M_.dynamic_tmp_nbr = [6; 0; 0; 0; ];
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
  9 , 'name' , 'A' ;
  10 , 'name' , 'XI' ;
  11 , 'name' , 'A_starr' ;
  12 , 'name' , 'XI_starr' ;
  13 , 'name' , 'c' ;
  14 , 'name' , 'n' ;
  15 , 'name' , 'g' ;
  16 , 'name' , 'a' ;
  17 , 'name' , 'xi' ;
  18 , 'name' , 'y' ;
  19 , 'name' , 'c_starr' ;
  20 , 'name' , 'n_starr' ;
  21 , 'name' , 'g_starr' ;
  22 , 'name' , 'a_starr' ;
  23 , 'name' , 'xi_starr' ;
  24 , 'name' , 'y_starr' ;
  25 , 'name' , 'Y' ;
  26 , 'name' , 'Y_starr' ;
};
M_.mapping.C.eqidx = [1 7 8 13 ];
M_.mapping.N.eqidx = [2 7 14 25 ];
M_.mapping.Y.eqidx = [25 ];
M_.mapping.G.eqidx = [3 7 15 ];
M_.mapping.A.eqidx = [2 7 9 16 25 ];
M_.mapping.XI.eqidx = [2 10 17 ];
M_.mapping.C_starr.eqidx = [4 7 8 19 ];
M_.mapping.N_starr.eqidx = [5 8 20 26 ];
M_.mapping.Y_starr.eqidx = [26 ];
M_.mapping.G_starr.eqidx = [6 8 21 ];
M_.mapping.A_starr.eqidx = [5 8 11 22 26 ];
M_.mapping.XI_starr.eqidx = [5 12 23 ];
M_.mapping.LAMBDA_1.eqidx = [1 2 3 4 ];
M_.mapping.LAMBDA_2.eqidx = [1 4 5 6 ];
M_.mapping.c.eqidx = [13 ];
M_.mapping.n.eqidx = [14 18 ];
M_.mapping.g.eqidx = [15 ];
M_.mapping.a.eqidx = [16 18 ];
M_.mapping.xi.eqidx = [17 ];
M_.mapping.y.eqidx = [18 ];
M_.mapping.c_starr.eqidx = [19 ];
M_.mapping.n_starr.eqidx = [20 24 ];
M_.mapping.g_starr.eqidx = [21 ];
M_.mapping.a_starr.eqidx = [22 24 ];
M_.mapping.xi_starr.eqidx = [23 ];
M_.mapping.y_starr.eqidx = [24 ];
M_.mapping.eps_a.eqidx = [9 ];
M_.mapping.eps_a_starr.eqidx = [11 ];
M_.mapping.eps_xi.eqidx = [10 ];
M_.mapping.eps_xi_starr.eqidx = [12 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 6 11 12 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 0;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 0;
oo_.steady_state = zeros(26, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(11, 1);
M_.endo_trends = struct('deflator', cell(26, 1), 'log_deflator', cell(26, 1), 'growth_factor', cell(26, 1), 'log_growth_factor', cell(26, 1));
M_.NNZDerivatives = [72; -1; -1; ];
M_.static_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 3;
SIGMA = M_.params(1);
M_.params(2) = 0.13;
ALPHA_bar = M_.params(2);
M_.params(3) = 0.99;
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
M_.params(9) = 0.03;
CHI = M_.params(9);
M_.params(10) = 0.85;
RHOA = M_.params(10);
M_.params(11) = 0.85;
RHOXI = M_.params(11);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 1;
M_.Sigma_e(3, 3) = 0;
M_.Sigma_e(4, 4) = 0;
res=Model_draft_4_testplan5_steadystate_helper([h,1-h],PHI,SIGMA,GAMMA,CHI,ALPHA,ALPHA_starr,h);
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(5) = 1;
oo_.steady_state(11) = 1;
oo_.steady_state(6) = 1;
oo_.steady_state(12) = 1;
oo_.steady_state(2) = res(1);
oo_.steady_state(8) = res(2);
oo_.steady_state(1) = M_.params(5)*((1-M_.params(6))*(oo_.steady_state(2)/M_.params(5))^M_.params(4)+M_.params(6)*(oo_.steady_state(8)/(1-M_.params(5)))^M_.params(4))^((-1)/M_.params(1));
oo_.steady_state(7) = (1-M_.params(5))*((oo_.steady_state(2)/M_.params(5))^M_.params(4)*M_.params(7)+(oo_.steady_state(8)/(1-M_.params(5)))^M_.params(4)*(1-M_.params(7)))^((-1)/M_.params(1));
oo_.steady_state(4) = M_.params(5)*((oo_.steady_state(2)/M_.params(5))^M_.params(4)*1/M_.params(9))^((-1)/M_.params(8));
oo_.steady_state(10) = (1-M_.params(5))*((oo_.steady_state(8)/(1-M_.params(5)))^M_.params(4)*1/M_.params(9))^((-1)/M_.params(8));
oo_.steady_state(17) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
resid(1);
options_.solve_algo = 2;
options_.steady.maxit = 1000;
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
save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan5_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan5_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan5_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan5_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan5_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan5_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan5_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
