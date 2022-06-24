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
M_.fname = 'Model_Main_4';
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
M_.endo_names = cell(57,1);
M_.endo_names_tex = cell(57,1);
M_.endo_names_long = cell(57,1);
M_.endo_names(1) = {'y_gap'};
M_.endo_names_tex(1) = {'{\tilde y_t}'};
M_.endo_names_long(1) = {'Home output gap (log dev ss)'};
M_.endo_names(2) = {'g_gap'};
M_.endo_names_tex(2) = {'{\tilde g_t}'};
M_.endo_names_long(2) = {'Home government spending gap (log dev ss)'};
M_.endo_names(3) = {'c_gap'};
M_.endo_names_tex(3) = {'{\tilde c_t}'};
M_.endo_names_long(3) = {'Home consumption gap (log dev ss)'};
M_.endo_names(4) = {'f_gap'};
M_.endo_names_tex(4) = {'{\tilde f_t}'};
M_.endo_names_long(4) = {'f_gap'};
M_.endo_names(5) = {'ii_gap'};
M_.endo_names_tex(5) = {'ii\_gap'};
M_.endo_names_long(5) = {'ii_gap'};
M_.endo_names(6) = {'y_gap_starr'};
M_.endo_names_tex(6) = {'{\tilde y_t^*}'};
M_.endo_names_long(6) = {'Foreign output gap (log dev ss)'};
M_.endo_names(7) = {'g_gap_starr'};
M_.endo_names_tex(7) = {'{\tilde g_t^*}'};
M_.endo_names_long(7) = {'Foreign government spending gap (log dev ss)'};
M_.endo_names(8) = {'c_gap_starr'};
M_.endo_names_tex(8) = {'{\tilde c_t^*}'};
M_.endo_names_long(8) = {'Foreign consumption gap (log dev ss)'};
M_.endo_names(9) = {'f_gap_starr'};
M_.endo_names_tex(9) = {'{\tilde f_t^*}'};
M_.endo_names_long(9) = {'f_gap_starr'};
M_.endo_names(10) = {'ii_gap_starr'};
M_.endo_names_tex(10) = {'ii\_gap\_starr'};
M_.endo_names_long(10) = {'ii_gap_starr'};
M_.endo_names(11) = {'s_gap'};
M_.endo_names_tex(11) = {'{\tilde s_t}'};
M_.endo_names_long(11) = {'Home terms of trade gap (log dev ss)'};
M_.endo_names(12) = {'y_gap_cu'};
M_.endo_names_tex(12) = {'{\tilde y_t^{cu}}'};
M_.endo_names_long(12) = {'Union output gap (log dev ss)'};
M_.endo_names(13) = {'g_gap_cu'};
M_.endo_names_tex(13) = {'{\tilde g_t^{cu}}'};
M_.endo_names_long(13) = {'Union government spending gap (log dev ss)'};
M_.endo_names(14) = {'c_gap_cu'};
M_.endo_names_tex(14) = {'{\tilde c_t^{cu}}'};
M_.endo_names_long(14) = {'Union government spending gap (log dev ss)'};
M_.endo_names(15) = {'ii_gap_cu'};
M_.endo_names_tex(15) = {'ii\_gap\_cu'};
M_.endo_names_long(15) = {'ii_gap_cu'};
M_.endo_names(16) = {'a'};
M_.endo_names_tex(16) = {'{a_t}'};
M_.endo_names_long(16) = {'Home productivity (log dev ss)'};
M_.endo_names(17) = {'a_starr'};
M_.endo_names_tex(17) = {'{a_t^*}'};
M_.endo_names_long(17) = {'Foreign productivity (log dev ss)'};
M_.endo_names(18) = {'y_nat'};
M_.endo_names_tex(18) = {'{\hat {\bar y}_t}'};
M_.endo_names_long(18) = {'Home natural output (log dev ss)'};
M_.endo_names(19) = {'g_nat'};
M_.endo_names_tex(19) = {'{\hat {\bar g}_t}'};
M_.endo_names_long(19) = {'Home natural government spending (log dev ss)'};
M_.endo_names(20) = {'c_nat'};
M_.endo_names_tex(20) = {'{\hat {\bar c}_t}'};
M_.endo_names_long(20) = {'Home natural consumption (log dev ss)'};
M_.endo_names(21) = {'n_nat'};
M_.endo_names_tex(21) = {'{\hat {\bar n}_t}'};
M_.endo_names_long(21) = {'Home natural labor (log dev ss)'};
M_.endo_names(22) = {'c_H_nat'};
M_.endo_names_tex(22) = {'{\hat {\bar c}_{H,t}}'};
M_.endo_names_long(22) = {'Home natural consumption of Home-made goods (log dev ss)'};
M_.endo_names(23) = {'c_F_nat'};
M_.endo_names_tex(23) = {'{\hat {\bar c}_{F,t}}'};
M_.endo_names_long(23) = {'Home natural consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(24) = {'r_nat'};
M_.endo_names_tex(24) = {'r\_nat'};
M_.endo_names_long(24) = {'r_nat'};
M_.endo_names(25) = {'y_nat_starr'};
M_.endo_names_tex(25) = {'{\hat {\bar y}_t^*}'};
M_.endo_names_long(25) = {'Foreign natural output (log dev ss)'};
M_.endo_names(26) = {'g_nat_starr'};
M_.endo_names_tex(26) = {'{\hat {\bar g}_t^*}'};
M_.endo_names_long(26) = {'Foreign natural government spending (log dev ss)'};
M_.endo_names(27) = {'c_nat_starr'};
M_.endo_names_tex(27) = {'{\hat {\bar c}_t^*}'};
M_.endo_names_long(27) = {'Foreign natural consumption (log dev ss)'};
M_.endo_names(28) = {'c_H_nat_starr'};
M_.endo_names_tex(28) = {'{\hat {\bar c}_{H,t}^*}'};
M_.endo_names_long(28) = {'Foreign natural consumption of Home-made goods (log dev ss)'};
M_.endo_names(29) = {'c_F_nat_starr'};
M_.endo_names_tex(29) = {'{\hat {\bar c}_{F,t}^*}'};
M_.endo_names_long(29) = {'Foreign natural consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(30) = {'n_nat_starr'};
M_.endo_names_tex(30) = {'{\hat {\bar n}_t^*}'};
M_.endo_names_long(30) = {'Foreign natural labor (log dev ss)'};
M_.endo_names(31) = {'r_nat_starr'};
M_.endo_names_tex(31) = {'r\_nat\_starr'};
M_.endo_names_long(31) = {'r_nat_starr'};
M_.endo_names(32) = {'s_nat'};
M_.endo_names_tex(32) = {'{\bar s_t}'};
M_.endo_names_long(32) = {'Home natural terms of trade (log dev ss)'};
M_.endo_names(33) = {'y_nat_cu'};
M_.endo_names_tex(33) = {'y\_nat\_cu'};
M_.endo_names_long(33) = {'y_nat_cu'};
M_.endo_names(34) = {'g_nat_cu'};
M_.endo_names_tex(34) = {'g\_nat\_cu'};
M_.endo_names_long(34) = {'g_nat_cu'};
M_.endo_names(35) = {'r_nat_cu'};
M_.endo_names_tex(35) = {'r\_nat\_cu'};
M_.endo_names_long(35) = {'r_nat_cu'};
M_.endo_names(36) = {'y'};
M_.endo_names_tex(36) = {'{\hat y_t}'};
M_.endo_names_long(36) = {'Home output (log dev ss)'};
M_.endo_names(37) = {'pie'};
M_.endo_names_tex(37) = {'{\pi_{H,t}}'};
M_.endo_names_long(37) = {'Home inflation (log dev ss)'};
M_.endo_names(38) = {'g'};
M_.endo_names_tex(38) = {'{\hat g_t}'};
M_.endo_names_long(38) = {'Home government consumption (log dev ss)'};
M_.endo_names(39) = {'n'};
M_.endo_names_tex(39) = {'{\hat n_t}'};
M_.endo_names_long(39) = {'Home labor supply (log dev ss)'};
M_.endo_names(40) = {'c'};
M_.endo_names_tex(40) = {'{\hat c_t}'};
M_.endo_names_long(40) = {'Home consumption (log dev ss)'};
M_.endo_names(41) = {'c_H'};
M_.endo_names_tex(41) = {'{\hat c_{H,t}}'};
M_.endo_names_long(41) = {'Home consumption of Home-made goods (log dev ss)'};
M_.endo_names(42) = {'c_F'};
M_.endo_names_tex(42) = {'{\hat c_{F,t}}'};
M_.endo_names_long(42) = {'Home consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(43) = {'y_starr'};
M_.endo_names_tex(43) = {'{\hat y_t^*}'};
M_.endo_names_long(43) = {'Foreign output (log dev ss)'};
M_.endo_names(44) = {'pie_starr'};
M_.endo_names_tex(44) = {'{\pi_{F,t}^*}'};
M_.endo_names_long(44) = {'Foreign inflation (log dev ss)'};
M_.endo_names(45) = {'g_starr'};
M_.endo_names_tex(45) = {'{\hat g_t^*}'};
M_.endo_names_long(45) = {'Foreign government consumption (log dev ss)'};
M_.endo_names(46) = {'n_starr'};
M_.endo_names_tex(46) = {'{\hat n_t^*}'};
M_.endo_names_long(46) = {'Foreign labor supply (log dev ss)'};
M_.endo_names(47) = {'c_starr'};
M_.endo_names_tex(47) = {'{\hat c_t^*}'};
M_.endo_names_long(47) = {'Foreign consumption (log dev ss)'};
M_.endo_names(48) = {'c_H_starr'};
M_.endo_names_tex(48) = {'{\hat c_{H,t}^*}'};
M_.endo_names_long(48) = {'Foreign consumption of Home-made goods (log dev ss)'};
M_.endo_names(49) = {'c_F_starr'};
M_.endo_names_tex(49) = {'{\hat c_{F,t}^*}'};
M_.endo_names_long(49) = {'Foreign consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(50) = {'ii'};
M_.endo_names_tex(50) = {'{i_t}'};
M_.endo_names_long(50) = {'Home nominal interest rate (log dev ss)'};
M_.endo_names(51) = {'ii_starr'};
M_.endo_names_tex(51) = {'{i_t^*}'};
M_.endo_names_long(51) = {'Foreign nominal interest rate (log dev ss)'};
M_.endo_names(52) = {'ii_cu'};
M_.endo_names_tex(52) = {'{i_t}'};
M_.endo_names_long(52) = {'Union nominal interest rate (log dev ss)'};
M_.endo_names(53) = {'s'};
M_.endo_names_tex(53) = {'{s_t}'};
M_.endo_names_long(53) = {'Home terms of trade (log dev ss)'};
M_.endo_names(54) = {'pie_cu'};
M_.endo_names_tex(54) = {'{\pi_{cu,t}}'};
M_.endo_names_long(54) = {'Union inflation (log dev ss)'};
M_.endo_names(55) = {'y_cu'};
M_.endo_names_tex(55) = {'{\hat y_t^{cu}}'};
M_.endo_names_long(55) = {'Union output (log dev ss)'};
M_.endo_names(56) = {'g_cu'};
M_.endo_names_tex(56) = {'{\hat g_t^{cu}}'};
M_.endo_names_long(56) = {'Union government spending (log dev ss)'};
M_.endo_names(57) = {'c_cu'};
M_.endo_names_tex(57) = {'{\hat c_t^{cu}}'};
M_.endo_names_long(57) = {'Union consumption (log dev ss)'};
M_.endo_partitions = struct();
M_.param_names = cell(42,1);
M_.param_names_tex = cell(42,1);
M_.param_names_long = cell(42,1);
M_.param_names(1) = {'BETA'};
M_.param_names_tex(1) = {'BETA'};
M_.param_names_long(1) = {'BETA'};
M_.param_names(2) = {'SIGMA'};
M_.param_names_tex(2) = {'SIGMA'};
M_.param_names_long(2) = {'SIGMA'};
M_.param_names(3) = {'PHI'};
M_.param_names_tex(3) = {'PHI'};
M_.param_names_long(3) = {'PHI'};
M_.param_names(4) = {'GAMMA'};
M_.param_names_tex(4) = {'GAMMA'};
M_.param_names_long(4) = {'GAMMA'};
M_.param_names(5) = {'ETA'};
M_.param_names_tex(5) = {'ETA'};
M_.param_names_long(5) = {'ETA'};
M_.param_names(6) = {'EPSILON'};
M_.param_names_tex(6) = {'EPSILON'};
M_.param_names_long(6) = {'EPSILON'};
M_.param_names(7) = {'h'};
M_.param_names_tex(7) = {'h'};
M_.param_names_long(7) = {'h'};
M_.param_names(8) = {'ALPHA_bar'};
M_.param_names_tex(8) = {'ALPHA\_bar'};
M_.param_names_long(8) = {'ALPHA_bar'};
M_.param_names(9) = {'THETA'};
M_.param_names_tex(9) = {'THETA'};
M_.param_names_long(9) = {'THETA'};
M_.param_names(10) = {'THETA_starr'};
M_.param_names_tex(10) = {'THETA\_starr'};
M_.param_names_long(10) = {'THETA_starr'};
M_.param_names(11) = {'DELTA'};
M_.param_names_tex(11) = {'DELTA'};
M_.param_names_long(11) = {'DELTA'};
M_.param_names(12) = {'CHI_C'};
M_.param_names_tex(12) = {'CHI\_C'};
M_.param_names_long(12) = {'CHI_C'};
M_.param_names(13) = {'CHI_G'};
M_.param_names_tex(13) = {'CHI\_G'};
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
M_.param_names_tex(20) = {'ALPHA'};
M_.param_names_long(20) = {'ALPHA'};
M_.param_names(21) = {'ALPHA_starr'};
M_.param_names_tex(21) = {'ALPHA\_starr'};
M_.param_names_long(21) = {'ALPHA_starr'};
M_.param_names(22) = {'LAMBDA'};
M_.param_names_tex(22) = {'LAMBDA'};
M_.param_names_long(22) = {'LAMBDA'};
M_.param_names(23) = {'LAMBDA_starr'};
M_.param_names_tex(23) = {'LAMBDA\_starr'};
M_.param_names_long(23) = {'LAMBDA_starr'};
M_.param_names(24) = {'W_ALPHA_bar'};
M_.param_names_tex(24) = {'W\_ALPHA\_bar'};
M_.param_names_long(24) = {'W_ALPHA_bar'};
M_.param_names(25) = {'SIGMA_tilde'};
M_.param_names_tex(25) = {'SIGMA\_tilde'};
M_.param_names_long(25) = {'SIGMA_tilde'};
M_.param_names(26) = {'THETA_ALPHA_bar'};
M_.param_names_tex(26) = {'THETA\_ALPHA\_bar'};
M_.param_names_long(26) = {'THETA_ALPHA_bar'};
M_.param_names(27) = {'SIGMA_tilde_ALPHA_bar'};
M_.param_names_tex(27) = {'SIGMA\_tilde\_ALPHA\_bar'};
M_.param_names_long(27) = {'SIGMA_tilde_ALPHA_bar'};
M_.param_names(28) = {'OMEGA'};
M_.param_names_tex(28) = {'OMEGA'};
M_.param_names_long(28) = {'OMEGA'};
M_.param_names(29) = {'OMEGA_starr'};
M_.param_names_tex(29) = {'OMEGA\_starr'};
M_.param_names_long(29) = {'OMEGA_starr'};
M_.param_names(30) = {'FP_y_gapH'};
M_.param_names_tex(30) = {'FP\_y\_gapH'};
M_.param_names_long(30) = {'FP_y_gapH'};
M_.param_names(31) = {'FP_pieH'};
M_.param_names_tex(31) = {'FP\_pieH'};
M_.param_names_long(31) = {'FP_pieH'};
M_.param_names(32) = {'FP_y_gapF'};
M_.param_names_tex(32) = {'FP\_y\_gapF'};
M_.param_names_long(32) = {'FP_y_gapF'};
M_.param_names(33) = {'FP_pieF'};
M_.param_names_tex(33) = {'FP\_pieF'};
M_.param_names_long(33) = {'FP_pieF'};
M_.param_names(34) = {'FP_s_gap'};
M_.param_names_tex(34) = {'FP\_s\_gap'};
M_.param_names_long(34) = {'FP_s_gap'};
M_.param_names(35) = {'FP_g_gapF'};
M_.param_names_tex(35) = {'FP\_g\_gapF'};
M_.param_names_long(35) = {'FP_g_gapF'};
M_.param_names(36) = {'FP_y_gapH_starr'};
M_.param_names_tex(36) = {'FP\_y\_gapH\_starr'};
M_.param_names_long(36) = {'FP_y_gapH_starr'};
M_.param_names(37) = {'FP_pieH_starr'};
M_.param_names_tex(37) = {'FP\_pieH\_starr'};
M_.param_names_long(37) = {'FP_pieH_starr'};
M_.param_names(38) = {'FP_y_gapF_starr'};
M_.param_names_tex(38) = {'FP\_y\_gapF\_starr'};
M_.param_names_long(38) = {'FP_y_gapF_starr'};
M_.param_names(39) = {'FP_pieF_starr'};
M_.param_names_tex(39) = {'FP\_pieF\_starr'};
M_.param_names_long(39) = {'FP_pieF_starr'};
M_.param_names(40) = {'FP_s_gap_starr'};
M_.param_names_tex(40) = {'FP\_s\_gap\_starr'};
M_.param_names_long(40) = {'FP_s_gap_starr'};
M_.param_names(41) = {'FP_g_gapH_starr'};
M_.param_names_tex(41) = {'FP\_g\_gapH\_starr'};
M_.param_names_long(41) = {'FP_g_gapH_starr'};
M_.param_names(42) = {'RHOA'};
M_.param_names_tex(42) = {'RHOA'};
M_.param_names_long(42) = {'RHOA'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 57;
M_.param_nbr = 42;
M_.orig_endo_nbr = 57;
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
M_.orig_eq_nbr = 57;
M_.eq_nbr = 57;
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
 0 6 0;
 1 7 0;
 0 8 0;
 0 9 0;
 0 10 0;
 0 11 0;
 2 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 3 21 63;
 4 22 64;
 0 23 65;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 0;
 0 28 0;
 0 29 0;
 0 30 66;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 0;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 67;
 0 42 68;
 0 43 69;
 0 44 0;
 0 45 0;
 0 46 0;
 0 47 0;
 0 48 70;
 0 49 71;
 0 50 72;
 0 51 0;
 0 52 0;
 0 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 5 57 0;
 0 58 0;
 0 59 0;
 0 60 0;
 0 61 0;
 0 62 0;]';
M_.nstatic = 44;
M_.nfwrd   = 8;
M_.npred   = 3;
M_.nboth   = 2;
M_.nsfwrd   = 10;
M_.nspred   = 5;
M_.ndynamic   = 13;
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
  8 , 'name' , 'Home natural consumption of Home-made goods' ;
  9 , 'name' , 'Home natural consumption of Foreign-made goods' ;
  10 , 'name' , 'Foreign natural consumption of Home-made goods' ;
  11 , 'name' , 'Foreign natural consumption of Foreign-made goods' ;
  12 , 'name' , 'n_nat' ;
  13 , 'name' , 'n_nat_starr' ;
  14 , 'name' , 'Home natural rate' ;
  15 , 'name' , 'Foreign natural rate' ;
  16 , 'name' , 'y_nat_cu' ;
  17 , 'name' , 'g_nat_cu' ;
  18 , 'name' , 'r_nat_cu' ;
  19 , 'name' , 'Home New Keynesian Phillips Curve' ;
  20 , 'name' , 'Foreign New Keynesian Phillips Curve' ;
  21 , 'name' , 'Home Dynamic IS Curve' ;
  22 , 'name' , 'Foreign Dynamic IS Curve' ;
  23 , 'name' , 'IRS' ;
  24 , 'name' , 'Home production function' ;
  25 , 'name' , 'Foreign production function' ;
  26 , 'name' , 'Home good-market clearing condition' ;
  27 , 'name' , 'Foreign good-market clearing condition' ;
  28 , 'name' , 'Home consumption of Home-made goods' ;
  29 , 'name' , 'Home consumption of Foreign-made goods' ;
  30 , 'name' , 'Foreign consumption of Home-made goods' ;
  31 , 'name' , 'Foreign consumption of Foreign-made goods' ;
  32 , 'name' , 'Home interest rate' ;
  33 , 'name' , 'Foreign interest rate' ;
  34 , 'name' , 'Union inflation' ;
  35 , 'name' , 'Union output' ;
  36 , 'name' , 'Union government spending' ;
  37 , 'name' , 'Union consumption' ;
  38 , 'name' , 'ii_cu' ;
  39 , 'name' , 'g_gap' ;
  40 , 'name' , 'g_gap_starr' ;
  41 , 'name' , 'Home output gap definition' ;
  42 , 'name' , 'Home governmpent spending gap definition' ;
  43 , 'name' , 'Home consumption gap definition' ;
  44 , 'name' , 'Home fiscal gap definition' ;
  45 , 'name' , 'Home interest rate gap definition' ;
  46 , 'name' , 'Home terms of trade gap definition' ;
  47 , 'name' , 'Foreign output gap definition' ;
  48 , 'name' , 'Foreign governmpent spending gap definition' ;
  49 , 'name' , 'Foreign consumption gap definition' ;
  50 , 'name' , 'Foreign fiscal gap definition' ;
  51 , 'name' , 'Foreign interest rate gap definition' ;
  52 , 'name' , 'Union output gap definition' ;
  53 , 'name' , 'Union governmpent spending gap definition' ;
  54 , 'name' , 'Union consumption gap definition' ;
  55 , 'name' , 'Union interest rate gap definition' ;
  56 , 'name' , 'a' ;
  57 , 'name' , 'a_starr' ;
};
M_.mapping.y_gap.eqidx = [39 41 44 52 ];
M_.mapping.g_gap.eqidx = [39 42 44 53 ];
M_.mapping.c_gap.eqidx = [43 54 ];
M_.mapping.f_gap.eqidx = [44 ];
M_.mapping.ii_gap.eqidx = [45 ];
M_.mapping.y_gap_starr.eqidx = [40 47 50 52 ];
M_.mapping.g_gap_starr.eqidx = [40 48 50 53 ];
M_.mapping.c_gap_starr.eqidx = [49 54 ];
M_.mapping.f_gap_starr.eqidx = [50 ];
M_.mapping.ii_gap_starr.eqidx = [51 ];
M_.mapping.s_gap.eqidx = [46 ];
M_.mapping.y_gap_cu.eqidx = [38 52 ];
M_.mapping.g_gap_cu.eqidx = [53 ];
M_.mapping.c_gap_cu.eqidx = [54 ];
M_.mapping.ii_gap_cu.eqidx = [55 ];
M_.mapping.a.eqidx = [1 12 14 19 24 56 ];
M_.mapping.a_starr.eqidx = [2 13 15 20 25 57 ];
M_.mapping.eps_a.eqidx = [56 ];
M_.mapping.eps_a_starr.eqidx = [57 ];
M_.mapping.y_nat.eqidx = [1 3 5 12 14 16 41 ];
M_.mapping.g_nat.eqidx = [3 5 6 17 42 ];
M_.mapping.c_nat.eqidx = [1 3 6 8 9 43 ];
M_.mapping.n_nat.eqidx = [12 ];
M_.mapping.c_H_nat.eqidx = [8 ];
M_.mapping.c_F_nat.eqidx = [9 ];
M_.mapping.r_nat.eqidx = [14 18 45 ];
M_.mapping.y_nat_starr.eqidx = [2 4 5 13 15 16 47 ];
M_.mapping.g_nat_starr.eqidx = [4 5 7 17 48 ];
M_.mapping.c_nat_starr.eqidx = [2 4 7 10 11 49 ];
M_.mapping.c_H_nat_starr.eqidx = [10 ];
M_.mapping.c_F_nat_starr.eqidx = [11 ];
M_.mapping.n_nat_starr.eqidx = [13 ];
M_.mapping.r_nat_starr.eqidx = [15 18 51 ];
M_.mapping.s_nat.eqidx = [1 2 3 4 5 6 7 8 9 10 11 46 ];
M_.mapping.y_nat_cu.eqidx = [16 ];
M_.mapping.g_nat_cu.eqidx = [17 ];
M_.mapping.r_nat_cu.eqidx = [18 38 55 ];
M_.mapping.y.eqidx = [19 20 21 22 23 24 26 35 41 ];
M_.mapping.pie.eqidx = [19 21 34 39 ];
M_.mapping.g.eqidx = [19 20 21 22 23 26 36 42 ];
M_.mapping.n.eqidx = [24 ];
M_.mapping.c.eqidx = [26 28 29 37 43 ];
M_.mapping.c_H.eqidx = [28 ];
M_.mapping.c_F.eqidx = [29 ];
M_.mapping.y_starr.eqidx = [19 20 21 22 23 25 27 35 47 ];
M_.mapping.pie_starr.eqidx = [20 22 34 40 ];
M_.mapping.g_starr.eqidx = [19 20 21 22 23 27 36 48 ];
M_.mapping.n_starr.eqidx = [25 ];
M_.mapping.c_starr.eqidx = [27 30 31 37 49 ];
M_.mapping.c_H_starr.eqidx = [30 ];
M_.mapping.c_F_starr.eqidx = [31 ];
M_.mapping.ii.eqidx = [21 32 45 55 ];
M_.mapping.ii_starr.eqidx = [22 33 51 ];
M_.mapping.ii_cu.eqidx = [32 33 38 ];
M_.mapping.s.eqidx = [23 26 27 28 29 30 31 46 ];
M_.mapping.pie_cu.eqidx = [34 38 ];
M_.mapping.y_cu.eqidx = [35 ];
M_.mapping.g_cu.eqidx = [36 ];
M_.mapping.c_cu.eqidx = [37 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [2 7 16 17 52 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(57, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(42, 1);
M_.endo_trends = struct('deflator', cell(57, 1), 'log_deflator', cell(57, 1), 'growth_factor', cell(57, 1), 'log_growth_factor', cell(57, 1));
M_.NNZDerivatives = [209; 0; -1; ];
M_.static_tmp_nbr = [0; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 10;
M_.Sigma_e(2, 2) = 10;
M_.params(1) = 0.98;
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
M_.params(7) = 0.5;
h = M_.params(7);
M_.params(8) = 0.2;
ALPHA_bar = M_.params(8);
M_.params(9) = 0.75;
THETA = M_.params(9);
M_.params(10) = 0.75;
THETA_starr = M_.params(10);
M_.params(11) = 0.1;
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
M_.params(42) = 0.85;
RHOA = M_.params(42);
M_.params(30) = 1.91973;
FP_y_gapH = M_.params(30);
M_.params(32) = 0;
FP_y_gapF = M_.params(32);
M_.params(31) = (-0.640355);
FP_pieH = M_.params(31);
M_.params(33) = 0;
FP_pieF = M_.params(33);
M_.params(36) = 0;
FP_y_gapH_starr = M_.params(36);
M_.params(38) = 1.91905;
FP_y_gapF_starr = M_.params(38);
M_.params(37) = 0;
FP_pieH_starr = M_.params(37);
M_.params(39) = (-0.640413);
FP_pieF_starr = M_.params(39);
estim_params_.var_exo = zeros(0, 10);
estim_params_.var_endo = zeros(0, 10);
estim_params_.corrx = zeros(0, 11);
estim_params_.corrn = zeros(0, 11);
estim_params_.param_vals = zeros(0, 10);
estim_params_.param_vals = [estim_params_.param_vals; 30, 0, (-10), 10, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 31, 0, (-10), 10, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 38, 0, (-10), 10, 0, NaN, NaN, NaN, NaN, NaN ];
estim_params_.param_vals = [estim_params_.param_vals; 39, 0, (-10), 10, 0, NaN, NaN, NaN, NaN, NaN ];
options_.varobs = M_.endo_names; 
options_gsa = struct();
dynare_sensitivity(options_gsa);
%
% OPTIM_WEIGHTS
%
M_.osr.variable_weights = sparse(M_.endo_nbr,M_.endo_nbr);
M_.osr.variable_indices = [];

M_.osr.variable_weights(3,3) = M_.params(2)*(1-M_.params(11))*M_.params(7);
M_.osr.variable_indices = [M_.osr.variable_indices; 3];
M_.osr.variable_weights(8,8) = M_.params(2)*(1-M_.params(11))*(1-M_.params(7));
M_.osr.variable_indices = [M_.osr.variable_indices; 8];
M_.osr.variable_weights(2,2) = M_.params(4)*M_.params(11)*M_.params(7);
M_.osr.variable_indices = [M_.osr.variable_indices; 2];
M_.osr.variable_weights(7,7) = M_.params(4)*M_.params(11)*(1-M_.params(7));
M_.osr.variable_indices = [M_.osr.variable_indices; 7];
M_.osr.variable_weights(37,37) = M_.params(7)*M_.params(6)/M_.params(22);
M_.osr.variable_indices = [M_.osr.variable_indices; 37];
M_.osr.variable_weights(44,44) = (1-M_.params(7))*M_.params(6)/M_.params(22);
M_.osr.variable_indices = [M_.osr.variable_indices; 44];
M_.osr.variable_weights(1,1) = M_.params(7)*M_.params(3);
M_.osr.variable_indices = [M_.osr.variable_indices; 1];
M_.osr.variable_weights(6,6) = (1-M_.params(7))*M_.params(3);
M_.osr.variable_indices = [M_.osr.variable_indices; 6];
M_.osr.param_names = {'FP_y_gapH';'FP_pieH';'FP_y_gapF_starr';'FP_pieF_starr'};
M_.osr.param_names = cellstr(M_.osr.param_names);
M_.osr.param_indices = zeros(length(M_.osr.param_names), 1);
M_.osr.param_indices(1) = 30;
M_.osr.param_indices(2) = 31;
M_.osr.param_indices(3) = 38;
M_.osr.param_indices(4) = 39;
M_.osr.param_bounds = [-inf(length(M_.osr.param_names), 1), inf(length(M_.osr.param_names), 1)];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'FP_y_gapH'), :) = [(-10), 10];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'FP_pieH'), :) = [(-0.001), 0.001];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'FP_y_gapF_starr'), :) = [(-0.001), 0.001];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'FP_pieF_starr'), :) = [(-10), 10];
options_.TeX = true;
options_.nograph = true;
options_.osr.opt_algo = 9;
options_.irf_shocks = {'eps_a_starr'};
var_list_ = {};
oo_.osr = osr(var_list_,M_.osr.param_names,M_.osr.variable_indices,M_.osr.variable_weights);
oo_.osr.optim_params;
t = 1:1:length(y_eps_a_starr);
zeroline = ones(length(t),1)*0;
figure('NumberTitle', 'off','Name',['IRFs OSR COUNTERPART']) 
subplot(3,3,1); 
Home=plot(t,c_eps_a_starr,'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,c_starr_eps_a_starr,'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$ and $$\hat c_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');
subplot(3,3,4); 
plot(t,c_nat_eps_a_starr,'LineWidth',1.5); hold on
plot(t,c_nat_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$ and $$\hat{\bar c}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,7); 
plot(t,c_gap_eps_a_starr,'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$ and $$\tilde c_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,2); 
plot(t,y_eps_a_starr,'LineWidth',1.5); hold on
plot(t,y_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$ and $$\hat y_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,5); 
plot(t,y_nat_eps_a_starr,'LineWidth',1.5); hold on
plot(t,y_nat_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$ and $$\hat{\bar y}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,8); 
plot(t,y_gap_eps_a_starr,'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$ and $$\tilde y_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,3); 
plot(t,g_eps_a_starr,'LineWidth',1.5); hold on
plot(t,g_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$ and $$\hat g_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,6); 
plot(t,g_nat_eps_a_starr,'LineWidth',1.5); hold on
plot(t,g_nat_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$ and $$\hat{\bar g}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,3,9); 
plot(t,g_gap_eps_a_starr,'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr,'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$ and $$\tilde g_t^*$$','interpreter','latex','FontSize',10);
sum(cumprod(ones(1,40)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)))
sum(cumprod(ones(1,40)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,C0*(c_eps_a_starr+1)/h,N0*(n_eps_a_starr+1)/h,G0*(g_eps_a_starr+1)/h,C0_starr*(c_starr_eps_a_starr+1)/(1-h), N0_starr*(n_starr_eps_a_starr+1)/(1-h),G0_starr*(g_starr_eps_a_starr+1)/(1-h)))
sum(cumprod(ones(1,40)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,CEV*exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,CEV*exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)))
sum(cumprod(ones(1,40)*BETA)'.*WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,CEV*exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,CEV*exp(g_eps_a_starr+log(G0))/h,CEV*exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),CEV*exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)))
sum(cumprod(ones(1,40)*BETA)'.*(h/2*(EPSILON/LAMBDA*pie_eps_a_starr.^2+PHI*y_gap_eps_a_starr.^2+GAMMA*DELTA*g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_eps_a_starr.^2+(1-DELTA)*(ALPHA*ETA*SIGMA*(SIGMA-ALPHA*THETA_ALPHA_bar))/((1-ALPHA)^2)*(c_gap_eps_a_starr-c_gap_cu_eps_a_starr).^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2+PHI*y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*g_gap_starr_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_starr_eps_a_starr.^2+(1-DELTA)*(ALPHA_starr*ETA*SIGMA*(SIGMA-ALPHA_starr*THETA_ALPHA_bar))/((1-ALPHA_starr)^2)*(c_gap_starr_eps_a_starr-c_gap_cu_eps_a_starr).^2)))


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Model_Main_4_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_4_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_4_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_4_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_4_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_4_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_4_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
