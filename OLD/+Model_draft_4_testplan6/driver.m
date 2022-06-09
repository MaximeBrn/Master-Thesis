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
M_.fname = 'Model_draft_4_testplan6';
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
M_.endo_names = cell(36,1);
M_.endo_names_tex = cell(36,1);
M_.endo_names_long = cell(36,1);
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
M_.endo_names(13) = {'G_cap'};
M_.endo_names_tex(13) = {'G\_cap'};
M_.endo_names_long(13) = {'G_cap'};
M_.endo_names(14) = {'G_cap_starr'};
M_.endo_names_tex(14) = {'G\_cap\_starr'};
M_.endo_names_long(14) = {'G_cap_starr'};
M_.endo_names(15) = {'C_cap'};
M_.endo_names_tex(15) = {'C\_cap'};
M_.endo_names_long(15) = {'C_cap'};
M_.endo_names(16) = {'C_cap_starr'};
M_.endo_names_tex(16) = {'C\_cap\_starr'};
M_.endo_names_long(16) = {'C_cap_starr'};
M_.endo_names(17) = {'N_cap'};
M_.endo_names_tex(17) = {'N\_cap'};
M_.endo_names_long(17) = {'N_cap'};
M_.endo_names(18) = {'N_cap_starr'};
M_.endo_names_tex(18) = {'N\_cap\_starr'};
M_.endo_names_long(18) = {'N_cap_starr'};
M_.endo_names(19) = {'MULT_1'};
M_.endo_names_tex(19) = {'MULT\_1'};
M_.endo_names_long(19) = {'MULT_1'};
M_.endo_names(20) = {'MULT_2'};
M_.endo_names_tex(20) = {'MULT\_2'};
M_.endo_names_long(20) = {'MULT_2'};
M_.endo_names(21) = {'MULT_3'};
M_.endo_names_tex(21) = {'MULT\_3'};
M_.endo_names_long(21) = {'MULT_3'};
M_.endo_names(22) = {'MULT_4'};
M_.endo_names_tex(22) = {'MULT\_4'};
M_.endo_names_long(22) = {'MULT_4'};
M_.endo_names(23) = {'MULT_5'};
M_.endo_names_tex(23) = {'MULT\_5'};
M_.endo_names_long(23) = {'MULT_5'};
M_.endo_names(24) = {'MULT_6'};
M_.endo_names_tex(24) = {'MULT\_6'};
M_.endo_names_long(24) = {'MULT_6'};
M_.endo_names(25) = {'MULT_7'};
M_.endo_names_tex(25) = {'MULT\_7'};
M_.endo_names_long(25) = {'MULT_7'};
M_.endo_names(26) = {'MULT_8'};
M_.endo_names_tex(26) = {'MULT\_8'};
M_.endo_names_long(26) = {'MULT_8'};
M_.endo_names(27) = {'MULT_9'};
M_.endo_names_tex(27) = {'MULT\_9'};
M_.endo_names_long(27) = {'MULT_9'};
M_.endo_names(28) = {'MULT_10'};
M_.endo_names_tex(28) = {'MULT\_10'};
M_.endo_names_long(28) = {'MULT_10'};
M_.endo_names(29) = {'MULT_11'};
M_.endo_names_tex(29) = {'MULT\_11'};
M_.endo_names_long(29) = {'MULT_11'};
M_.endo_names(30) = {'MULT_12'};
M_.endo_names_tex(30) = {'MULT\_12'};
M_.endo_names_long(30) = {'MULT_12'};
M_.endo_names(31) = {'MULT_13'};
M_.endo_names_tex(31) = {'MULT\_13'};
M_.endo_names_long(31) = {'MULT_13'};
M_.endo_names(32) = {'MULT_14'};
M_.endo_names_tex(32) = {'MULT\_14'};
M_.endo_names_long(32) = {'MULT_14'};
M_.endo_names(33) = {'AUX_EXO_LEAD_154'};
M_.endo_names_tex(33) = {'AUX\_EXO\_LEAD\_154'};
M_.endo_names_long(33) = {'AUX_EXO_LEAD_154'};
M_.endo_names(34) = {'AUX_EXO_LEAD_170'};
M_.endo_names_tex(34) = {'AUX\_EXO\_LEAD\_170'};
M_.endo_names_long(34) = {'AUX_EXO_LEAD_170'};
M_.endo_names(35) = {'AUX_EXO_LEAD_228'};
M_.endo_names_tex(35) = {'AUX\_EXO\_LEAD\_228'};
M_.endo_names_long(35) = {'AUX_EXO_LEAD_228'};
M_.endo_names(36) = {'AUX_EXO_LEAD_244'};
M_.endo_names_tex(36) = {'AUX\_EXO\_LEAD\_244'};
M_.endo_names_long(36) = {'AUX_EXO_LEAD_244'};
M_.endo_partitions = struct();
M_.param_names = cell(12,1);
M_.param_names_tex = cell(12,1);
M_.param_names_long = cell(12,1);
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
M_.param_names(12) = {'optimal_policy_discount_factor'};
M_.param_names_tex(12) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(12) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 36;
M_.param_nbr = 12;
M_.orig_endo_nbr = 18;
M_.aux_vars(1).endo_index = 19;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 20;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 21;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 22;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 23;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.aux_vars(6).endo_index = 24;
M_.aux_vars(6).type = 6;
M_.aux_vars(6).eq_nbr = 6;
M_.aux_vars(7).endo_index = 25;
M_.aux_vars(7).type = 6;
M_.aux_vars(7).eq_nbr = 7;
M_.aux_vars(8).endo_index = 26;
M_.aux_vars(8).type = 6;
M_.aux_vars(8).eq_nbr = 8;
M_.aux_vars(9).endo_index = 27;
M_.aux_vars(9).type = 6;
M_.aux_vars(9).eq_nbr = 9;
M_.aux_vars(10).endo_index = 28;
M_.aux_vars(10).type = 6;
M_.aux_vars(10).eq_nbr = 10;
M_.aux_vars(11).endo_index = 29;
M_.aux_vars(11).type = 6;
M_.aux_vars(11).eq_nbr = 11;
M_.aux_vars(12).endo_index = 30;
M_.aux_vars(12).type = 6;
M_.aux_vars(12).eq_nbr = 12;
M_.aux_vars(13).endo_index = 31;
M_.aux_vars(13).type = 6;
M_.aux_vars(13).eq_nbr = 13;
M_.aux_vars(14).endo_index = 32;
M_.aux_vars(14).type = 6;
M_.aux_vars(14).eq_nbr = 14;
M_.aux_vars(15).endo_index = 33;
M_.aux_vars(15).type = 2;
M_.aux_vars(15).orig_expr = 'MULT_9*(-(exp(eps_a)*get_power_deriv(A(-1),RHOA,1)))';
M_.aux_vars(16).endo_index = 34;
M_.aux_vars(16).type = 2;
M_.aux_vars(16).orig_expr = 'MULT_10*(-(exp(eps_xi)*get_power_deriv(XI(-1),RHOXI,1)))';
M_.aux_vars(17).endo_index = 35;
M_.aux_vars(17).type = 2;
M_.aux_vars(17).orig_expr = 'MULT_11*(-(exp(eps_a_starr)*get_power_deriv(A_starr(-1),RHOA,1)))';
M_.aux_vars(18).endo_index = 36;
M_.aux_vars(18).type = 2;
M_.aux_vars(18).orig_expr = 'MULT_12*(-(exp(eps_xi_starr)*get_power_deriv(XI_starr(-1),RHOXI,1)))';
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
M_.orig_eq_nbr = 14;
M_.eq_nbr = 36;
M_.ramsey_eq_nbr = 18;
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
 1 9 0;
 2 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 3 15 0;
 4 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 0;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 41;
 0 38 42;
 0 39 43;
 0 40 44;]';
M_.nstatic = 28;
M_.nfwrd   = 4;
M_.npred   = 4;
M_.nboth   = 0;
M_.nsfwrd   = 4;
M_.nspred   = 4;
M_.ndynamic   = 8;
M_.dynamic_tmp_nbr = [20; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  19 , 'name' , '1' ;
  20 , 'name' , '2' ;
  21 , 'name' , 'G_cap' ;
  22 , 'name' , 'G_cap_starr' ;
  23 , 'name' , 'C_cap' ;
  24 , 'name' , 'C_cap_starr' ;
  25 , 'name' , 'N_cap' ;
  26 , 'name' , 'N_cap_starr' ;
  27 , 'name' , 'A' ;
  28 , 'name' , 'XI' ;
  29 , 'name' , 'A_starr' ;
  30 , 'name' , 'XI_starr' ;
  31 , 'name' , 'Y' ;
  32 , 'name' , 'Y_starr' ;
};
M_.mapping.C.eqidx = [1 19 20 23 ];
M_.mapping.N.eqidx = [2 5 6 25 31 ];
M_.mapping.Y.eqidx = [19 31 ];
M_.mapping.G.eqidx = [4 19 21 ];
M_.mapping.A.eqidx = [2 5 27 31 ];
M_.mapping.XI.eqidx = [2 6 28 ];
M_.mapping.C_starr.eqidx = [7 19 20 24 ];
M_.mapping.N_starr.eqidx = [8 11 12 26 32 ];
M_.mapping.Y_starr.eqidx = [20 32 ];
M_.mapping.G_starr.eqidx = [10 20 22 ];
M_.mapping.A_starr.eqidx = [8 11 29 32 ];
M_.mapping.XI_starr.eqidx = [8 12 30 ];
M_.mapping.G_cap.eqidx = [21 ];
M_.mapping.G_cap_starr.eqidx = [22 ];
M_.mapping.C_cap.eqidx = [23 ];
M_.mapping.C_cap_starr.eqidx = [24 ];
M_.mapping.N_cap.eqidx = [25 ];
M_.mapping.N_cap_starr.eqidx = [26 ];
M_.mapping.eps_a.eqidx = [5 27 ];
M_.mapping.eps_a_starr.eqidx = [11 29 ];
M_.mapping.eps_xi.eqidx = [6 28 ];
M_.mapping.eps_xi_starr.eqidx = [12 30 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [5 6 11 12 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(36, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(12, 1);
M_.endo_trends = struct('deflator', cell(36, 1), 'log_deflator', cell(36, 1), 'growth_factor', cell(36, 1), 'log_growth_factor', cell(36, 1));
M_.NNZDerivatives = [102; -1; -1; ];
M_.static_tmp_nbr = [20; 4; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
M_.params(1) = 3;
SIGMA = M_.params(1);
M_.params(2) = 0.13;
ALPHA_bar = M_.params(2);
M_.params(3) = 0.98;
BETA = M_.params(3);
M_.params(4) = 1;
PHI = M_.params(4);
M_.params(5) = 0.5;
h = M_.params(5);
M_.params(6) = M_.params(2)*(1-M_.params(5));
ALPHA = M_.params(6);
M_.params(7) = M_.params(2)*M_.params(5);
ALPHA_starr = M_.params(7);
M_.params(8) = 2;
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
oo_.steady_state(33)=oo_.steady_state(27)*(-(exp(oo_.exo_steady_state(1))*getPowerDeriv(oo_.steady_state(5),M_.params(10),1)));
oo_.steady_state(34)=oo_.steady_state(28)*(-(exp(oo_.exo_steady_state(3))*getPowerDeriv(oo_.steady_state(6),M_.params(11),1)));
oo_.steady_state(35)=oo_.steady_state(29)*(-(exp(oo_.exo_steady_state(2))*getPowerDeriv(oo_.steady_state(11),M_.params(10),1)));
oo_.steady_state(36)=oo_.steady_state(30)*(-(exp(oo_.exo_steady_state(4))*getPowerDeriv(oo_.steady_state(12),M_.params(11),1)));
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
M_.NNZDerivatives_objective = [8;10;8;];
M_.objective_tmp_nbr = [8; 4; 2; 0; ];
M_.params(12) = M_.params(3);
optimal_policy_discount_factor = M_.params(12);
options_.ramsey_policy = true;
options_.instruments = {'C_cap';'N_cap';'G_cap';'C_cap_starr';'N_cap_starr';'G_cap_starr'};
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
save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan6_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan6_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan6_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan6_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan6_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan6_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_draft_4_testplan6_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end