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
M_.fname = 'Model_Main_6';
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
M_.exo_names_tex(1) = {'{\epsilon_a}'};
M_.exo_names_long(1) = {'Home technology shock'};
M_.exo_names(2) = {'eps_a_starr'};
M_.exo_names_tex(2) = {'{\epsilon_a^*}'};
M_.exo_names_long(2) = {'Foreign technology shock'};
M_.endo_names = cell(72,1);
M_.endo_names_tex = cell(72,1);
M_.endo_names_long = cell(72,1);
M_.endo_names(1) = {'a'};
M_.endo_names_tex(1) = {'{a}'};
M_.endo_names_long(1) = {'Home productivity (log dev ss)'};
M_.endo_names(2) = {'a_starr'};
M_.endo_names_tex(2) = {'{a^*}'};
M_.endo_names_long(2) = {'Foreign productivity (log dev ss)'};
M_.endo_names(3) = {'y_nat'};
M_.endo_names_tex(3) = {'{\hat {\bar y}}'};
M_.endo_names_long(3) = {'Home natural output (log dev ss)'};
M_.endo_names(4) = {'g_nat'};
M_.endo_names_tex(4) = {'{\hat {\bar g}}'};
M_.endo_names_long(4) = {'Home natural government spending (log dev ss)'};
M_.endo_names(5) = {'c_nat'};
M_.endo_names_tex(5) = {'{\hat {\bar c}}'};
M_.endo_names_long(5) = {'Home natural consumption (log dev ss)'};
M_.endo_names(6) = {'c_H_nat'};
M_.endo_names_tex(6) = {'{\hat {\bar c}^H}'};
M_.endo_names_long(6) = {'Home natural consumption of Home-made goods (log dev ss)'};
M_.endo_names(7) = {'c_F_nat'};
M_.endo_names_tex(7) = {'{\hat {\bar c}^F}'};
M_.endo_names_long(7) = {'Home natural consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(8) = {'n_nat'};
M_.endo_names_tex(8) = {'{\hat {\bar n}}'};
M_.endo_names_long(8) = {'Home natural labor (log dev ss)'};
M_.endo_names(9) = {'f_nat'};
M_.endo_names_tex(9) = {'{\hat {\bar f}}'};
M_.endo_names_long(9) = {'Home natural fiscal stance (log dev ss)'};
M_.endo_names(10) = {'s_nat'};
M_.endo_names_tex(10) = {'{\bar s}'};
M_.endo_names_long(10) = {'Home natural terms of trade (log dev ss)'};
M_.endo_names(11) = {'r_nat'};
M_.endo_names_tex(11) = {'{\bar r}'};
M_.endo_names_long(11) = {'Home natural rate (log dev ss)'};
M_.endo_names(12) = {'y_nat_starr'};
M_.endo_names_tex(12) = {'{\hat {\bar y}^*}'};
M_.endo_names_long(12) = {'Foreign natural output (log dev ss)'};
M_.endo_names(13) = {'g_nat_starr'};
M_.endo_names_tex(13) = {'{\hat {\bar g}^*}'};
M_.endo_names_long(13) = {'Foreign natural government spending (log dev ss)'};
M_.endo_names(14) = {'c_nat_starr'};
M_.endo_names_tex(14) = {'{\hat {\bar c}^*}'};
M_.endo_names_long(14) = {'Foreign natural consumption (log dev ss)'};
M_.endo_names(15) = {'c_H_nat_starr'};
M_.endo_names_tex(15) = {'{\hat {\bar c}^{H*}}'};
M_.endo_names_long(15) = {'Foreign natural consumption of Home-made goods (log dev ss)'};
M_.endo_names(16) = {'c_F_nat_starr'};
M_.endo_names_tex(16) = {'{\hat {\bar c}^{F*}}'};
M_.endo_names_long(16) = {'Foreign natural consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(17) = {'n_nat_starr'};
M_.endo_names_tex(17) = {'{\hat {\bar n}^*}'};
M_.endo_names_long(17) = {'Foreign natural labor (log dev ss)'};
M_.endo_names(18) = {'f_nat_starr'};
M_.endo_names_tex(18) = {'{\hat {\bar f}^*}'};
M_.endo_names_long(18) = {'Foreign natural fiscal stance (log dev ss)'};
M_.endo_names(19) = {'s_nat_starr'};
M_.endo_names_tex(19) = {'{\bar s^*}'};
M_.endo_names_long(19) = {'Foreign natural terms of trade (log dev ss)'};
M_.endo_names(20) = {'r_nat_starr'};
M_.endo_names_tex(20) = {'{\bar r^*}'};
M_.endo_names_long(20) = {'Foreign natural rate (log dev ss)'};
M_.endo_names(21) = {'y_nat_cu'};
M_.endo_names_tex(21) = {'{\hat {\bar y}^{cu}}'};
M_.endo_names_long(21) = {'Union natural output (log dev ss)'};
M_.endo_names(22) = {'g_nat_cu'};
M_.endo_names_tex(22) = {'{\hat {\bar g}^{cu}}'};
M_.endo_names_long(22) = {'Union natural government consumption (log dev ss)'};
M_.endo_names(23) = {'c_nat_cu'};
M_.endo_names_tex(23) = {'{\hat {\bar c}^{cu}}'};
M_.endo_names_long(23) = {'Union natural consumption (log dev ss)'};
M_.endo_names(24) = {'r_nat_cu'};
M_.endo_names_tex(24) = {'{\hat {\bar r}^{cu}}'};
M_.endo_names_long(24) = {'Union natural rate (log dev ss)'};
M_.endo_names(25) = {'y'};
M_.endo_names_tex(25) = {'{\hat y}'};
M_.endo_names_long(25) = {'Home output (log dev ss)'};
M_.endo_names(26) = {'pie'};
M_.endo_names_tex(26) = {'{\pi^H}'};
M_.endo_names_long(26) = {'Home inflation (log dev ss)'};
M_.endo_names(27) = {'g'};
M_.endo_names_tex(27) = {'{\hat g}'};
M_.endo_names_long(27) = {'Home government consumption (log dev ss)'};
M_.endo_names(28) = {'n'};
M_.endo_names_tex(28) = {'{\hat n}'};
M_.endo_names_long(28) = {'Home labor (log dev ss)'};
M_.endo_names(29) = {'c'};
M_.endo_names_tex(29) = {'{\hat c}'};
M_.endo_names_long(29) = {'Home consumption (log dev ss)'};
M_.endo_names(30) = {'c_H'};
M_.endo_names_tex(30) = {'{\hat c^H}'};
M_.endo_names_long(30) = {'Home consumption of Home-made goods (log dev ss)'};
M_.endo_names(31) = {'c_F'};
M_.endo_names_tex(31) = {'{\hat c^F}'};
M_.endo_names_long(31) = {'Home consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(32) = {'f'};
M_.endo_names_tex(32) = {'{\hat f}'};
M_.endo_names_long(32) = {'Home fiscal stance (log dev ss)'};
M_.endo_names(33) = {'s'};
M_.endo_names_tex(33) = {'{s}'};
M_.endo_names_long(33) = {'Home terms of trade (log dev ss)'};
M_.endo_names(34) = {'ii'};
M_.endo_names_tex(34) = {'{i}'};
M_.endo_names_long(34) = {'Home nominal interest rate (log dev ss)'};
M_.endo_names(35) = {'y_starr'};
M_.endo_names_tex(35) = {'{\hat y^*}'};
M_.endo_names_long(35) = {'Foreign output (log dev ss)'};
M_.endo_names(36) = {'pie_starr'};
M_.endo_names_tex(36) = {'{\pi^{F*}}'};
M_.endo_names_long(36) = {'Foreign inflation (log dev ss)'};
M_.endo_names(37) = {'g_starr'};
M_.endo_names_tex(37) = {'{\hat g^*}'};
M_.endo_names_long(37) = {'Foreign government consumption (log dev ss)'};
M_.endo_names(38) = {'n_starr'};
M_.endo_names_tex(38) = {'{\hat n^*}'};
M_.endo_names_long(38) = {'Foreign labor (log dev ss)'};
M_.endo_names(39) = {'c_starr'};
M_.endo_names_tex(39) = {'{\hat c^*}'};
M_.endo_names_long(39) = {'Foreign consumption (log dev ss)'};
M_.endo_names(40) = {'c_H_starr'};
M_.endo_names_tex(40) = {'{\hat c^{H*}}'};
M_.endo_names_long(40) = {'Foreign consumption of Home-made goods (log dev ss)'};
M_.endo_names(41) = {'c_F_starr'};
M_.endo_names_tex(41) = {'{\hat c^{F*}}'};
M_.endo_names_long(41) = {'Foreign consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(42) = {'f_starr'};
M_.endo_names_tex(42) = {'{\hat f^*}'};
M_.endo_names_long(42) = {'Foreign fiscal stance (log dev ss)'};
M_.endo_names(43) = {'ii_starr'};
M_.endo_names_tex(43) = {'{i^*}'};
M_.endo_names_long(43) = {'Foreign nominal interest rate (log dev ss)'};
M_.endo_names(44) = {'s_starr'};
M_.endo_names_tex(44) = {'{s^*}'};
M_.endo_names_long(44) = {'Foreign terms of trade (log dev ss)'};
M_.endo_names(45) = {'y_cu'};
M_.endo_names_tex(45) = {'{\hat y^{cu}}'};
M_.endo_names_long(45) = {'Union output (log dev ss)'};
M_.endo_names(46) = {'g_cu'};
M_.endo_names_tex(46) = {'{\hat g^{cu}}'};
M_.endo_names_long(46) = {'Union government spending (log dev ss)'};
M_.endo_names(47) = {'c_cu'};
M_.endo_names_tex(47) = {'{\hat c^{cu}}'};
M_.endo_names_long(47) = {'Union consumption (log dev ss)'};
M_.endo_names(48) = {'ii_cu'};
M_.endo_names_tex(48) = {'{i^{cu}}'};
M_.endo_names_long(48) = {'Union nominal interest rate (log dev ss)'};
M_.endo_names(49) = {'pie_cu'};
M_.endo_names_tex(49) = {'{\pi^{cu}}'};
M_.endo_names_long(49) = {'Union inflation (log dev ss)'};
M_.endo_names(50) = {'y_gap'};
M_.endo_names_tex(50) = {'{\tilde y}'};
M_.endo_names_long(50) = {'Home output gap (log dev ss)'};
M_.endo_names(51) = {'g_gap'};
M_.endo_names_tex(51) = {'{\tilde g}'};
M_.endo_names_long(51) = {'Home government spending gap (log dev ss)'};
M_.endo_names(52) = {'c_gap'};
M_.endo_names_tex(52) = {'{\tilde c}'};
M_.endo_names_long(52) = {'Home consumption gap (log dev ss)'};
M_.endo_names(53) = {'c_H_gap'};
M_.endo_names_tex(53) = {'{\tilde c^H}'};
M_.endo_names_long(53) = {'Home consumption of Home-made goods gap (log dev ss)'};
M_.endo_names(54) = {'c_F_gap'};
M_.endo_names_tex(54) = {'{\tilde c^F}'};
M_.endo_names_long(54) = {'Home consumption of Foreign-made goods gap (log dev ss)'};
M_.endo_names(55) = {'f_gap'};
M_.endo_names_tex(55) = {'{\tilde f}'};
M_.endo_names_long(55) = {'Home fiscal stance gap (log dev ss)'};
M_.endo_names(56) = {'n_gap'};
M_.endo_names_tex(56) = {'{\tilde n}'};
M_.endo_names_long(56) = {'Home labor gap (log dev ss)'};
M_.endo_names(57) = {'s_gap'};
M_.endo_names_tex(57) = {'{\tilde s}'};
M_.endo_names_long(57) = {'Home terms of trade gap (log dev ss)'};
M_.endo_names(58) = {'ii_gap'};
M_.endo_names_tex(58) = {'{\tilde i}'};
M_.endo_names_long(58) = {'ii_gap'};
M_.endo_names(59) = {'y_gap_starr'};
M_.endo_names_tex(59) = {'{\tilde y^*}'};
M_.endo_names_long(59) = {'Foreign output gap (log dev ss)'};
M_.endo_names(60) = {'g_gap_starr'};
M_.endo_names_tex(60) = {'{\tilde g^*}'};
M_.endo_names_long(60) = {'Foreign government spending gap (log dev ss)'};
M_.endo_names(61) = {'c_gap_starr'};
M_.endo_names_tex(61) = {'{\tilde c^*}'};
M_.endo_names_long(61) = {'Foreign consumption gap (log dev ss)'};
M_.endo_names(62) = {'c_H_gap_starr'};
M_.endo_names_tex(62) = {'{\tilde c^{H*}}'};
M_.endo_names_long(62) = {'Foreign consumption of Home-made goods gap (log dev ss)'};
M_.endo_names(63) = {'c_F_gap_starr'};
M_.endo_names_tex(63) = {'{\tilde c^{F*}}'};
M_.endo_names_long(63) = {'Foreign consumption of Foreign-made goods gap (log dev ss)'};
M_.endo_names(64) = {'f_gap_starr'};
M_.endo_names_tex(64) = {'{\tilde f^*}'};
M_.endo_names_long(64) = {'Foreign fiscal stance gap (log dev ss)'};
M_.endo_names(65) = {'n_gap_starr'};
M_.endo_names_tex(65) = {'{\tilde n^*}'};
M_.endo_names_long(65) = {'Foreign labor gap (log dev ss)'};
M_.endo_names(66) = {'s_gap_starr'};
M_.endo_names_tex(66) = {'{\tilde s^*}'};
M_.endo_names_long(66) = {'Foreign terms of trade gap (log dev ss)'};
M_.endo_names(67) = {'ii_gap_starr'};
M_.endo_names_tex(67) = {'{\tilde i^*}'};
M_.endo_names_long(67) = {'ii_gap_starr'};
M_.endo_names(68) = {'y_gap_cu'};
M_.endo_names_tex(68) = {'{\tilde y^{cu}}'};
M_.endo_names_long(68) = {'Union output gap (log dev ss)'};
M_.endo_names(69) = {'g_gap_cu'};
M_.endo_names_tex(69) = {'{\tilde g^{cu}}'};
M_.endo_names_long(69) = {'Union government spending gap (log dev ss)'};
M_.endo_names(70) = {'c_gap_cu'};
M_.endo_names_tex(70) = {'{\tilde c^{cu}}'};
M_.endo_names_long(70) = {'Union government spending gap (log dev ss)'};
M_.endo_names(71) = {'ii_gap_cu'};
M_.endo_names_tex(71) = {'{\tilde i^{cu}}'};
M_.endo_names_long(71) = {'ii_gap_cu'};
M_.endo_names(72) = {'g_gap_r'};
M_.endo_names_tex(72) = {'{\tilde g^{r}}'};
M_.endo_names_long(72) = {'Relative output gap (log dev ss)'};
M_.endo_partitions = struct();
M_.param_names = cell(32,1);
M_.param_names_tex = cell(32,1);
M_.param_names_long = cell(32,1);
M_.param_names(1) = {'BETA'};
M_.param_names_tex(1) = {'{\beta}'};
M_.param_names_long(1) = {'BETA'};
M_.param_names(2) = {'SIGMA'};
M_.param_names_tex(2) = {'{\sigma}'};
M_.param_names_long(2) = {'SIGMA'};
M_.param_names(3) = {'PHI'};
M_.param_names_tex(3) = {'{\varphi}'};
M_.param_names_long(3) = {'PHI'};
M_.param_names(4) = {'GAMMA'};
M_.param_names_tex(4) = {'{\gamma}'};
M_.param_names_long(4) = {'GAMMA'};
M_.param_names(5) = {'ETA'};
M_.param_names_tex(5) = {'{\eta}'};
M_.param_names_long(5) = {'ETA'};
M_.param_names(6) = {'EPSILON'};
M_.param_names_tex(6) = {'{\varepsilon}'};
M_.param_names_long(6) = {'EPSILON'};
M_.param_names(7) = {'h'};
M_.param_names_tex(7) = {'{h}'};
M_.param_names_long(7) = {'h'};
M_.param_names(8) = {'ALPHA_bar'};
M_.param_names_tex(8) = {'{\bar{\alpha}}'};
M_.param_names_long(8) = {'ALPHA_bar'};
M_.param_names(9) = {'THETA'};
M_.param_names_tex(9) = {'\theta'};
M_.param_names_long(9) = {'THETA'};
M_.param_names(10) = {'THETA_starr'};
M_.param_names_tex(10) = {'\theta^*'};
M_.param_names_long(10) = {'THETA_starr'};
M_.param_names(11) = {'DELTA'};
M_.param_names_tex(11) = {'{\delta}'};
M_.param_names_long(11) = {'DELTA'};
M_.param_names(12) = {'CHI_C'};
M_.param_names_tex(12) = {'{\chi_C}'};
M_.param_names_long(12) = {'CHI_C'};
M_.param_names(13) = {'CHI_G'};
M_.param_names_tex(13) = {'{\chi_G}'};
M_.param_names_long(13) = {'CHI_G'};
M_.param_names(14) = {'N0'};
M_.param_names_tex(14) = {'N0'};
M_.param_names_long(14) = {'N0'};
M_.param_names(15) = {'N0_starr'};
M_.param_names_tex(15) = {'N0\_starr'};
M_.param_names_long(15) = {'N0_starr'};
M_.param_names(16) = {'C0'};
M_.param_names_tex(16) = {'C0'};
M_.param_names_long(16) = {'C0'};
M_.param_names(17) = {'C0_starr'};
M_.param_names_tex(17) = {'C0\_starr'};
M_.param_names_long(17) = {'C0_starr'};
M_.param_names(18) = {'G0'};
M_.param_names_tex(18) = {'G0'};
M_.param_names_long(18) = {'G0'};
M_.param_names(19) = {'G0_starr'};
M_.param_names_tex(19) = {'G0\_starr'};
M_.param_names_long(19) = {'G0_starr'};
M_.param_names(20) = {'ALPHA'};
M_.param_names_tex(20) = {'{\alpha}'};
M_.param_names_long(20) = {'ALPHA'};
M_.param_names(21) = {'ALPHA_starr'};
M_.param_names_tex(21) = {'{\alpha^*}'};
M_.param_names_long(21) = {'ALPHA_starr'};
M_.param_names(22) = {'LAMBDA'};
M_.param_names_tex(22) = {'{\lambda}'};
M_.param_names_long(22) = {'LAMBDA'};
M_.param_names(23) = {'LAMBDA_starr'};
M_.param_names_tex(23) = {'{\lambda^*}'};
M_.param_names_long(23) = {'LAMBDA_starr'};
M_.param_names(24) = {'W_ALPHA_bar'};
M_.param_names_tex(24) = {'{w_{\bar{\alpha}}}'};
M_.param_names_long(24) = {'W_ALPHA_bar'};
M_.param_names(25) = {'SIGMA_tilde'};
M_.param_names_tex(25) = {'{\tilde{\sigma}}'};
M_.param_names_long(25) = {'SIGMA_tilde'};
M_.param_names(26) = {'THETA_ALPHA_bar'};
M_.param_names_tex(26) = {'{\Theta{\bar{\alpha}}}'};
M_.param_names_long(26) = {'THETA_ALPHA_bar'};
M_.param_names(27) = {'SIGMA_tilde_ALPHA_bar'};
M_.param_names_tex(27) = {'{\tilde\sigma_{\bar{\alpha}}}'};
M_.param_names_long(27) = {'SIGMA_tilde_ALPHA_bar'};
M_.param_names(28) = {'OMEGA'};
M_.param_names_tex(28) = {'{\Omega_{\bar \alpha,h}}'};
M_.param_names_long(28) = {'OMEGA'};
M_.param_names(29) = {'OMEGA_starr'};
M_.param_names_tex(29) = {'{\Omega_{\bar \alpha,1-h}}'};
M_.param_names_long(29) = {'OMEGA_starr'};
M_.param_names(30) = {'FP_s_gapH'};
M_.param_names_tex(30) = {'FP\_s\_gapH'};
M_.param_names_long(30) = {'FP_s_gapH'};
M_.param_names(31) = {'FP_s_gapF_starr'};
M_.param_names_tex(31) = {'FP\_s\_gapF\_starr'};
M_.param_names_long(31) = {'FP_s_gapF_starr'};
M_.param_names(32) = {'RHOA'};
M_.param_names_tex(32) = {'RHOA'};
M_.param_names_long(32) = {'RHOA'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 72;
M_.param_nbr = 32;
M_.orig_endo_nbr = 72;
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
options_.linear = true;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
M_.nonzero_hessian_eqs = [];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.orig_eq_nbr = 72;
M_.eq_nbr = 72;
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
 1 5 77;
 2 6 78;
 0 7 79;
 0 8 0;
 0 9 0;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 80;
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
 0 29 81;
 0 30 82;
 0 31 83;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 84;
 0 40 85;
 0 41 86;
 0 42 0;
 0 43 0;
 0 44 0;
 0 45 0;
 0 46 0;
 0 47 0;
 0 48 0;
 0 49 0;
 0 50 0;
 0 51 0;
 0 52 0;
 0 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 0 57 0;
 0 58 0;
 3 59 0;
 0 60 0;
 0 61 0;
 0 62 0;
 0 63 0;
 0 64 0;
 0 65 0;
 0 66 0;
 0 67 0;
 4 68 0;
 0 69 0;
 0 70 0;
 0 71 0;
 0 72 0;
 0 73 0;
 0 74 0;
 0 75 0;
 0 76 0;]';
M_.nstatic = 60;
M_.nfwrd   = 8;
M_.npred   = 2;
M_.nboth   = 2;
M_.nsfwrd   = 10;
M_.nspred   = 4;
M_.ndynamic   = 12;
M_.dynamic_tmp_nbr = [2; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  1 , 'name' , 'Home natural marginal cost condition' ;
  2 , 'name' , 'Foreign natural marginal cost condition' ;
  3 , 'name' , 'Home natural good-market clearing condition' ;
  4 , 'name' , 'Foreign natural good-market clearing condition' ;
  5 , 'name' , 'Natural IRS condition' ;
  6 , 'name' , 'Home natural government spending condition' ;
  7 , 'name' , 'Foreign natural government spending condition' ;
  8 , 'name' , 'Natural LOP' ;
  9 , 'name' , 'Home natural consumption of Home-made goods' ;
  10 , 'name' , 'Home natural consumption of Foreign-made goods' ;
  11 , 'name' , 'Foreign natural consumption of Home-made goods' ;
  12 , 'name' , 'Foreign natural consumption of Foreign-made goods' ;
  13 , 'name' , 'Home natural production function' ;
  14 , 'name' , 'Foreign natural production function' ;
  15 , 'name' , 'Home natural fiscal stance definition' ;
  16 , 'name' , 'Foreign natural fiscal stance definition' ;
  17 , 'name' , 'Home natural rate' ;
  18 , 'name' , 'Foreign natural rate' ;
  19 , 'name' , 'Union natural output' ;
  20 , 'name' , 'Union natural government spending' ;
  21 , 'name' , 'Union natural consumption' ;
  22 , 'name' , 'Union natural rate' ;
  23 , 'name' , 'Home New Keynesian Phillips Curve' ;
  24 , 'name' , 'Foreign New Keynesian Phillips Curve' ;
  25 , 'name' , 'Home Dynamic IS Curve' ;
  26 , 'name' , 'Foreign Dynamic IS Curve' ;
  27 , 'name' , 'IRS condition' ;
  28 , 'name' , 'LOP' ;
  29 , 'name' , 'Home production function' ;
  30 , 'name' , 'Foreign production function' ;
  31 , 'name' , 'Home good-market clearing condition' ;
  32 , 'name' , 'Foreign good-market clearing condition' ;
  33 , 'name' , 'Home fiscal stance definition' ;
  34 , 'name' , 'Foreign fiscal stance definition' ;
  35 , 'name' , 'Home consumption of Home-made goods' ;
  36 , 'name' , 'Home consumption of Foreign-made goods' ;
  37 , 'name' , 'Foreign consumption of Home-made goods' ;
  38 , 'name' , 'Foreign consumption of Foreign-made goods' ;
  39 , 'name' , 'Home interest rate' ;
  40 , 'name' , 'Foreign interest rate' ;
  41 , 'name' , 'Union inflation' ;
  42 , 'name' , 'Union output' ;
  43 , 'name' , 'Union government spending' ;
  44 , 'name' , 'Union consumption' ;
  45 , 'name' , 'Home output gap definition' ;
  46 , 'name' , 'Home governmpent spending gap definition' ;
  47 , 'name' , 'Home consumption gap definition' ;
  48 , 'name' , 'Home consumption of Home_made goods gap definition' ;
  49 , 'name' , 'Home consumption of Foreign_made goods gap definition' ;
  50 , 'name' , 'Foreign labor gap definition' ;
  51 , 'name' , 'Home fiscal stance gap definition' ;
  52 , 'name' , 'Home terms of trade gap definition' ;
  53 , 'name' , 'Home interest rate gap definition' ;
  54 , 'name' , 'Foreign output gap definition' ;
  55 , 'name' , 'Foreign governmpent spending gap definition' ;
  56 , 'name' , 'Foreign consumption gap definition' ;
  57 , 'name' , 'Foreign consumption of Home_made goods gap definition' ;
  58 , 'name' , 'Foreign consumption of Foreign_made goods gap definition' ;
  59 , 'name' , 'Foreign labor gap definition' ;
  60 , 'name' , 'Foreign fiscal stance gap definition' ;
  61 , 'name' , 'Foreign terms of trade gap definition' ;
  62 , 'name' , 'Foreign interest rate gap definition' ;
  63 , 'name' , 'Union output gap definition' ;
  64 , 'name' , 'Union governmpent spending gap definition' ;
  65 , 'name' , 'Union consumption gap definition' ;
  66 , 'name' , 'Union interest rate gap definition' ;
  67 , 'name' , 'g_gap_r' ;
  68 , 'name' , 'ii_cu' ;
  69 , 'name' , 'f_gap' ;
  70 , 'name' , 'f_gap_starr' ;
  71 , 'name' , 'a' ;
  72 , 'name' , 'a_starr' ;
};
M_.mapping.a.eqidx = [1 13 17 23 29 71 ];
M_.mapping.a_starr.eqidx = [2 14 18 24 30 72 ];
M_.mapping.eps_a.eqidx = [71 ];
M_.mapping.eps_a_starr.eqidx = [72 ];
M_.mapping.y_nat.eqidx = [1 3 5 13 15 17 19 45 ];
M_.mapping.g_nat.eqidx = [3 5 6 15 20 46 ];
M_.mapping.c_nat.eqidx = [1 3 6 9 10 21 47 ];
M_.mapping.c_H_nat.eqidx = [9 48 ];
M_.mapping.c_F_nat.eqidx = [10 49 ];
M_.mapping.n_nat.eqidx = [13 50 ];
M_.mapping.f_nat.eqidx = [15 51 ];
M_.mapping.s_nat.eqidx = [1 2 3 4 5 6 7 8 9 10 11 12 52 ];
M_.mapping.r_nat.eqidx = [17 22 53 ];
M_.mapping.y_nat_starr.eqidx = [2 4 5 14 16 18 19 54 ];
M_.mapping.g_nat_starr.eqidx = [4 5 7 16 20 55 ];
M_.mapping.c_nat_starr.eqidx = [2 4 7 11 12 21 56 ];
M_.mapping.c_H_nat_starr.eqidx = [11 57 ];
M_.mapping.c_F_nat_starr.eqidx = [12 58 ];
M_.mapping.n_nat_starr.eqidx = [14 59 ];
M_.mapping.f_nat_starr.eqidx = [16 60 ];
M_.mapping.s_nat_starr.eqidx = [8 61 ];
M_.mapping.r_nat_starr.eqidx = [18 22 62 ];
M_.mapping.y_nat_cu.eqidx = [19 ];
M_.mapping.g_nat_cu.eqidx = [20 ];
M_.mapping.c_nat_cu.eqidx = [21 ];
M_.mapping.r_nat_cu.eqidx = [22 66 68 ];
M_.mapping.y.eqidx = [23 24 25 26 27 29 31 33 42 45 ];
M_.mapping.pie.eqidx = [23 25 41 ];
M_.mapping.g.eqidx = [23 24 25 26 27 31 33 43 46 ];
M_.mapping.n.eqidx = [29 50 ];
M_.mapping.c.eqidx = [31 35 36 44 47 ];
M_.mapping.c_H.eqidx = [35 48 ];
M_.mapping.c_F.eqidx = [36 49 ];
M_.mapping.f.eqidx = [33 51 ];
M_.mapping.s.eqidx = [27 28 31 32 35 36 37 38 52 ];
M_.mapping.ii.eqidx = [25 39 53 66 ];
M_.mapping.y_starr.eqidx = [23 24 25 26 27 30 32 34 42 54 ];
M_.mapping.pie_starr.eqidx = [24 26 41 ];
M_.mapping.g_starr.eqidx = [23 24 25 26 27 32 34 43 55 ];
M_.mapping.n_starr.eqidx = [30 59 ];
M_.mapping.c_starr.eqidx = [32 37 38 44 56 ];
M_.mapping.c_H_starr.eqidx = [37 57 ];
M_.mapping.c_F_starr.eqidx = [38 58 ];
M_.mapping.f_starr.eqidx = [34 60 ];
M_.mapping.ii_starr.eqidx = [26 40 62 ];
M_.mapping.s_starr.eqidx = [28 61 ];
M_.mapping.y_cu.eqidx = [42 ];
M_.mapping.g_cu.eqidx = [43 ];
M_.mapping.c_cu.eqidx = [44 ];
M_.mapping.ii_cu.eqidx = [39 40 68 ];
M_.mapping.pie_cu.eqidx = [41 68 ];
M_.mapping.y_gap.eqidx = [45 63 ];
M_.mapping.g_gap.eqidx = [46 64 67 ];
M_.mapping.c_gap.eqidx = [47 65 ];
M_.mapping.c_H_gap.eqidx = [48 ];
M_.mapping.c_F_gap.eqidx = [49 ];
M_.mapping.f_gap.eqidx = [51 69 ];
M_.mapping.n_gap.eqidx = [50 ];
M_.mapping.s_gap.eqidx = [52 69 ];
M_.mapping.ii_gap.eqidx = [53 ];
M_.mapping.y_gap_starr.eqidx = [54 63 ];
M_.mapping.g_gap_starr.eqidx = [55 64 67 ];
M_.mapping.c_gap_starr.eqidx = [56 65 ];
M_.mapping.c_H_gap_starr.eqidx = [57 ];
M_.mapping.c_F_gap_starr.eqidx = [58 ];
M_.mapping.f_gap_starr.eqidx = [60 70 ];
M_.mapping.n_gap_starr.eqidx = [59 ];
M_.mapping.s_gap_starr.eqidx = [61 70 ];
M_.mapping.ii_gap_starr.eqidx = [62 ];
M_.mapping.y_gap_cu.eqidx = [63 68 ];
M_.mapping.g_gap_cu.eqidx = [64 ];
M_.mapping.c_gap_cu.eqidx = [65 ];
M_.mapping.ii_gap_cu.eqidx = [66 ];
M_.mapping.g_gap_r.eqidx = [67 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 55 64 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(72, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(32, 1);
M_.endo_trends = struct('deflator', cell(72, 1), 'log_deflator', cell(72, 1), 'growth_factor', cell(72, 1), 'log_growth_factor', cell(72, 1));
M_.NNZDerivatives = [249; 0; -1; ];
M_.static_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 1;
M_.Sigma_e(2, 2) = 1;
M_.params(7) = 0.5;
h = M_.params(7);
M_.params(8) = 0.1;
ALPHA_bar = M_.params(8);
M_.params(9) = 0.75;
THETA = M_.params(9);
M_.params(1) = 0.99;
BETA = M_.params(1);
M_.params(2) = 3;
SIGMA = M_.params(2);
M_.params(3) = 1;
PHI = M_.params(3);
M_.params(4) = 1;
GAMMA = M_.params(4);
M_.params(5) = 4.5;
ETA = M_.params(5);
M_.params(6) = 6;
EPSILON = M_.params(6);
M_.params(10) = 0.75;
THETA_starr = M_.params(10);
M_.params(11) = 0.25;
DELTA = M_.params(11);
M_.params(12) = (1-M_.params(11))^M_.params(2);
CHI_C = M_.params(12);
M_.params(13) = M_.params(11)^M_.params(4);
CHI_G = M_.params(13);
M_.params(20) = M_.params(8)*(1-M_.params(7));
ALPHA = M_.params(20);
M_.params(21) = M_.params(8)*M_.params(7);
ALPHA_starr = M_.params(21);
M_.params(22) = (1-M_.params(9))*(1-M_.params(9)*M_.params(1))/M_.params(9);
LAMBDA = M_.params(22);
M_.params(23) = (1-M_.params(10))*(1-M_.params(1)*M_.params(10))/M_.params(10);
LAMBDA_starr = M_.params(23);
M_.params(24) = 1+(2-M_.params(8))*(M_.params(2)*M_.params(5)-1);
W_ALPHA_bar = M_.params(24);
M_.params(25) = M_.params(2)/(1-M_.params(11));
SIGMA_tilde = M_.params(25);
M_.params(26) = M_.params(24)-1;
THETA_ALPHA_bar = M_.params(26);
M_.params(27) = M_.params(25)/(1+M_.params(8)*M_.params(26));
SIGMA_tilde_ALPHA_bar = M_.params(27);
M_.params(28) = 1+M_.params(8)*M_.params(7)*M_.params(26);
OMEGA = M_.params(28);
M_.params(29) = 1+M_.params(8)*(1-M_.params(7))*M_.params(26);
OMEGA_starr = M_.params(29);
M_.params(14) = M_.params(7);
N0 = M_.params(14);
M_.params(15) = 1-M_.params(7);
N0_starr = M_.params(15);
M_.params(16) = (1-M_.params(11))*M_.params(14);
C0 = M_.params(16);
M_.params(17) = (1-M_.params(11))*M_.params(15);
C0_starr = M_.params(17);
M_.params(18) = M_.params(11)*M_.params(14);
G0 = M_.params(18);
M_.params(19) = M_.params(11)*M_.params(15);
G0_starr = M_.params(19);
M_.params(32) = 0.97;
RHOA = M_.params(32);
estim_params_.var_exo = zeros(0, 10);
estim_params_.var_endo = zeros(0, 10);
estim_params_.corrx = zeros(0, 11);
estim_params_.corrn = zeros(0, 11);
estim_params_.param_vals = zeros(0, 10);
estim_params_.param_vals = [estim_params_.param_vals; 30, 0, (-10), 10, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 31, 0, (-10), 10, 0, NaN, NaN, NaN, NaN, NaN ];
options_.varobs = M_.endo_names; 
options_gsa = struct();
dynare_sensitivity(options_gsa);
%
% OPTIM_WEIGHTS
%
M_.osr.variable_weights = sparse(M_.endo_nbr,M_.endo_nbr);
M_.osr.variable_indices = [];

M_.osr.variable_weights(70,70) = (1-M_.params(11))*(M_.params(2)+(1-M_.params(11))*M_.params(3));
M_.osr.variable_indices = [M_.osr.variable_indices; 70];
M_.osr.variable_weights(51,51) = M_.params(11)*M_.params(7)*(M_.params(4)+M_.params(11)*M_.params(3));
M_.osr.variable_indices = [M_.osr.variable_indices; 51];
M_.osr.variable_weights(60,60) = (M_.params(4)+M_.params(11)*M_.params(3))*M_.params(11)*(1-M_.params(7));
M_.osr.variable_indices = [M_.osr.variable_indices; 60];
M_.osr.variable_weights(26,26) = M_.params(7)*M_.params(6)/M_.params(22);
M_.osr.variable_indices = [M_.osr.variable_indices; 26];
M_.osr.variable_weights(36,36) = (1-M_.params(7))*M_.params(6)/M_.params(23);
M_.osr.variable_indices = [M_.osr.variable_indices; 36];
M_.osr.variable_weights(57,57) = (1-M_.params(11))*M_.params(7)*(1-M_.params(7))*(1+(1-M_.params(11))*M_.params(3));
M_.osr.variable_indices = [M_.osr.variable_indices; 57];
M_.osr.variable_weights(70,69) = M_.params(3)*2*(1-M_.params(11));
M_.osr.variable_indices = [M_.osr.variable_indices; 70; 69];
M_.osr.variable_weights(57,72) = M_.params(3)*M_.params(11)*(1-M_.params(11))*(1-M_.params(7))*2*M_.params(7);
M_.osr.variable_indices = [M_.osr.variable_indices; 57; 72];
M_.osr.param_names = {'FP_s_gapH';'FP_s_gapF_starr'};
M_.osr.param_names = cellstr(M_.osr.param_names);
M_.osr.param_indices = zeros(length(M_.osr.param_names), 1);
M_.osr.param_indices(1) = 30;
M_.osr.param_indices(2) = 31;
M_.osr.param_bounds = [-inf(length(M_.osr.param_names), 1), inf(length(M_.osr.param_names), 1)];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'FP_s_gapH'), :) = [(-10), 10];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'FP_s_gapF_starr'), :) = [(-10), 10];
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.TeX = true;
options_.irf = 200;
options_.nocorr = true;
options_.nograph = true;
options_.nomoments = true;
options_.osr.opt_algo = 9;
options_.irf_shocks = {'eps_a_starr'};
var_list_ = {};
oo_.osr = osr(var_list_,M_.osr.param_names,M_.osr.variable_indices,M_.osr.variable_weights);
oo_.osr.optim_params;
pol_name="OSR - POP_WEIGHT - NATIONAL"
calibration_name="h_"+h*100+" - ALPHA_bar_"+ALPHA_bar*100+" - THETA_"+THETA*100+" - THETA_starr_"+THETA_starr*100+" - DELTA_"+DELTA*100
folder_name = "OUTPUT/"+calibration_name+"/"+"POP_WEIGHT/"+"OSR - NATIONAL"
benchmark_folder_name = "OUTPUT/"+calibration_name+"/"+"POP_WEIGHT/"+"RAMSEY"
mkdir(folder_name)
T_irf=options_.irf
Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1-DELTA)*(SIGMA+(1-DELTA)*PHI)*c_gap_cu_eps_a_starr.^2 + h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA))*s_gap_eps_a_starr.^2 + h*DELTA*(GAMMA+PHI*DELTA)*g_gap_eps_a_starr.^2 + (1-h)*DELTA*(GAMMA+PHI*DELTA)*g_gap_starr_eps_a_starr.^2 + h*EPSILON/LAMBDA*pie_eps_a_starr.^2 + (1-h)*EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2 + 2*(1-DELTA)*PHI*c_gap_cu_eps_a_starr.*g_gap_cu_eps_a_starr + 2*h*(1-h)*(1-DELTA)*DELTA*PHI*s_gap_eps_a_starr.*g_gap_r_eps_a_starr));
Loss_benchmark_txt = readlines(benchmark_folder_name+"/Loss_benchmark.txt");
Loss_benchmark = str2num(Loss_benchmark_txt(1));
CEV = sqrt((1-BETA)/((1-DELTA)*(SIGMA+(1-DELTA)*PHI))*(Loss-Loss_benchmark))*100;
writematrix(CEV, folder_name+"/CEV.txt");
writetable(rows2vars(struct2table(oo_.osr.optim_params)), folder_name+"/OSR_param.txt")
T_plot=100
t = 1:1:T_plot;
zeroline = ones(T_plot,1)*0;
figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); 
Home=plot(t,a_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,a_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Productivity : $$a_t$$ and $$a_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');
subplot(3,3,2); 
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$ and $$\tilde c_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,3); 
plot(t,n_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor Gap : $$\tilde n_t$$ and $$\tilde n_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,4); 
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$ and $$\tilde g_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,5); 
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$ and $$\tilde y_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,6); 
plot(t,f_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Fiscal Stance Gap : $$\tilde f_t$$ and $$\tilde f_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,7); 
plot(t,pie_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,pie_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Consumer price inflation : $$\pi_{H,t}$$ and $$\pi_{F,t}^*$$','interpreter','latex','FontSize',10);
subplot(3,3,8); 
plot(t,s_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,s_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Terms of Trade Gap : $$\tilde s_t$$ and $$\tilde s_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,9); 
plot(t,ii_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Interest Rate Gap : $$\tilde r_t$$ and $$\tilde r_t^*$$','interpreter','latex','FontSize',10);
annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA) ', $$\theta^*$$ = ' num2str(THETA_starr) ', $$\delta$$ = ' num2str(DELTA)],'FontSize',10)
figure_name = "National_gaps"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")
figure('NumberTitle', 'off','visible','off')
subplot(3,2,1); 
Union=plot(t,c_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Union','Color','magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Union Consumption Gap : $$\tilde c_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Union],{'Union'},'location','southeast');
figure_name = "Union_gaps"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")
figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); 
Home=plot(t,c_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,c_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$ and $$\hat c_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');
subplot(3,3,4); 
plot(t,c_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$ and $$\hat{\bar c}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,7); 
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$ and $$\tilde c_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,2); 
plot(t,y_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$ and $$\hat y_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,5); 
plot(t,y_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$ and $$\hat{\bar y}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,8); 
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$ and $$\tilde y_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,3); 
plot(t,g_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$ and $$\hat g_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,6); 
plot(t,g_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$ and $$\hat{\bar g}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,9); 
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$ and $$\tilde g_t^*$$','interpreter','latex','FontSize',10);
annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA) ', $$\theta^*$$ = ' num2str(THETA_starr) ', $$\delta$$ = ' num2str(DELTA)],'FontSize',10)
figure_name = "y_c_g"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")
figure('NumberTitle', 'off','visible','off') 
subplot(3,4,1); 
Home=plot(t,n_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Foreign=plot(t,n_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor : $$\hat n_t$$ and $$\hat n_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');
subplot(3,4,5); 
plot(t,n_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Labor : $$\hat{\bar n}_t$$ and $$\hat{\bar n}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,9); 
plot(t,n_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor Gap : $$\tilde n_t$$ and $$\tilde n_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,2); 
plot(t,y_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$ and $$\hat y_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,6); 
plot(t,y_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$ and $$\hat{\bar y}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,10); 
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$ and $$\tilde y_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,3); 
plot(t,c_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
plot(t,c_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$ and $$\hat c_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,7); 
plot(t,c_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$ and $$\hat{\bar c}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,11); 
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$ and $$\tilde c_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,4); 
plot(t,g_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$ and $$\hat g_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,8); 
plot(t,g_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$ and $$\hat{\bar g}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,4,12); 
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$ and $$\tilde g_t^*$$','interpreter','latex','FontSize',10);
annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA) ', $$\theta^*$$ = ' num2str(THETA_starr) ', $$\delta$$ = ' num2str(DELTA)],'FontSize',10)
figure_name = "n_y_c_g"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Model_Main_6_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_6_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_6_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_6_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_6_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_6_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_6_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
