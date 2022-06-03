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
M_.fname = 'MODEL_MAIN';
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
M_.endo_names = cell(73,1);
M_.endo_names_tex = cell(73,1);
M_.endo_names_long = cell(73,1);
M_.endo_names(1) = {'y_gap'};
M_.endo_names_tex(1) = {'y\_gap'};
M_.endo_names_long(1) = {'y_gap'};
M_.endo_names(2) = {'g_gap'};
M_.endo_names_tex(2) = {'g\_gap'};
M_.endo_names_long(2) = {'g_gap'};
M_.endo_names(3) = {'c_gap'};
M_.endo_names_tex(3) = {'c\_gap'};
M_.endo_names_long(3) = {'c_gap'};
M_.endo_names(4) = {'y_gap_starr'};
M_.endo_names_tex(4) = {'y\_gap\_starr'};
M_.endo_names_long(4) = {'y_gap_starr'};
M_.endo_names(5) = {'g_gap_starr'};
M_.endo_names_tex(5) = {'g\_gap\_starr'};
M_.endo_names_long(5) = {'g_gap_starr'};
M_.endo_names(6) = {'c_gap_starr'};
M_.endo_names_tex(6) = {'c\_gap\_starr'};
M_.endo_names_long(6) = {'c_gap_starr'};
M_.endo_names(7) = {'s_gap'};
M_.endo_names_tex(7) = {'s\_gap'};
M_.endo_names_long(7) = {'s_gap'};
M_.endo_names(8) = {'y_gap_cu'};
M_.endo_names_tex(8) = {'y\_gap\_cu'};
M_.endo_names_long(8) = {'y_gap_cu'};
M_.endo_names(9) = {'a'};
M_.endo_names_tex(9) = {'a'};
M_.endo_names_long(9) = {'a'};
M_.endo_names(10) = {'xi'};
M_.endo_names_tex(10) = {'xi'};
M_.endo_names_long(10) = {'xi'};
M_.endo_names(11) = {'a_starr'};
M_.endo_names_tex(11) = {'a\_starr'};
M_.endo_names_long(11) = {'a_starr'};
M_.endo_names(12) = {'xi_starr'};
M_.endo_names_tex(12) = {'xi\_starr'};
M_.endo_names_long(12) = {'xi_starr'};
M_.endo_names(13) = {'y_nat'};
M_.endo_names_tex(13) = {'y\_nat'};
M_.endo_names_long(13) = {'y_nat'};
M_.endo_names(14) = {'g_nat'};
M_.endo_names_tex(14) = {'g\_nat'};
M_.endo_names_long(14) = {'g_nat'};
M_.endo_names(15) = {'c_nat'};
M_.endo_names_tex(15) = {'c\_nat'};
M_.endo_names_long(15) = {'c_nat'};
M_.endo_names(16) = {'y_nat_starr'};
M_.endo_names_tex(16) = {'y\_nat\_starr'};
M_.endo_names_long(16) = {'y_nat_starr'};
M_.endo_names(17) = {'g_nat_starr'};
M_.endo_names_tex(17) = {'g\_nat\_starr'};
M_.endo_names_long(17) = {'g_nat_starr'};
M_.endo_names(18) = {'c_nat_starr'};
M_.endo_names_tex(18) = {'c\_nat\_starr'};
M_.endo_names_long(18) = {'c_nat_starr'};
M_.endo_names(19) = {'s_nat'};
M_.endo_names_tex(19) = {'s\_nat'};
M_.endo_names_long(19) = {'s_nat'};
M_.endo_names(20) = {'y'};
M_.endo_names_tex(20) = {'{y}'};
M_.endo_names_long(20) = {'Home output (log dev ss)'};
M_.endo_names(21) = {'pie'};
M_.endo_names_tex(21) = {'pie'};
M_.endo_names_long(21) = {'pie'};
M_.endo_names(22) = {'g'};
M_.endo_names_tex(22) = {'{g}'};
M_.endo_names_long(22) = {'Home government consumption (log dev ss)'};
M_.endo_names(23) = {'n'};
M_.endo_names_tex(23) = {'n'};
M_.endo_names_long(23) = {'n'};
M_.endo_names(24) = {'c'};
M_.endo_names_tex(24) = {'c'};
M_.endo_names_long(24) = {'c'};
M_.endo_names(25) = {'c_F'};
M_.endo_names_tex(25) = {'c\_F'};
M_.endo_names_long(25) = {'c_F'};
M_.endo_names(26) = {'c_H'};
M_.endo_names_tex(26) = {'c\_H'};
M_.endo_names_long(26) = {'c_H'};
M_.endo_names(27) = {'y_starr'};
M_.endo_names_tex(27) = {'{y^*}'};
M_.endo_names_long(27) = {'Foreign output (log dev ss)'};
M_.endo_names(28) = {'pie_starr'};
M_.endo_names_tex(28) = {'pie\_starr'};
M_.endo_names_long(28) = {'pie_starr'};
M_.endo_names(29) = {'g_starr'};
M_.endo_names_tex(29) = {'{g^*}'};
M_.endo_names_long(29) = {'Foreign government consumption (log dev ss)'};
M_.endo_names(30) = {'n_starr'};
M_.endo_names_tex(30) = {'n\_starr'};
M_.endo_names_long(30) = {'n_starr'};
M_.endo_names(31) = {'c_starr'};
M_.endo_names_tex(31) = {'c\_starr'};
M_.endo_names_long(31) = {'c_starr'};
M_.endo_names(32) = {'c_F_starr'};
M_.endo_names_tex(32) = {'c\_F\_starr'};
M_.endo_names_long(32) = {'c_F_starr'};
M_.endo_names(33) = {'c_H_starr'};
M_.endo_names_tex(33) = {'c\_H\_starr'};
M_.endo_names_long(33) = {'c_H_starr'};
M_.endo_names(34) = {'pie_cu'};
M_.endo_names_tex(34) = {'pie\_cu'};
M_.endo_names_long(34) = {'pie_cu'};
M_.endo_names(35) = {'y_cu'};
M_.endo_names_tex(35) = {'y\_cu'};
M_.endo_names_long(35) = {'y_cu'};
M_.endo_names(36) = {'g_cu'};
M_.endo_names_tex(36) = {'g\_cu'};
M_.endo_names_long(36) = {'g_cu'};
M_.endo_names(37) = {'ii'};
M_.endo_names_tex(37) = {'{i}'};
M_.endo_names_long(37) = {'nominal interest rate (log dev ss)'};
M_.endo_names(38) = {'s'};
M_.endo_names_tex(38) = {'{s}'};
M_.endo_names_long(38) = {'terms of trade (log dev ss)'};
M_.endo_names(39) = {'MULT_1'};
M_.endo_names_tex(39) = {'MULT\_1'};
M_.endo_names_long(39) = {'MULT_1'};
M_.endo_names(40) = {'MULT_2'};
M_.endo_names_tex(40) = {'MULT\_2'};
M_.endo_names_long(40) = {'MULT_2'};
M_.endo_names(41) = {'MULT_3'};
M_.endo_names_tex(41) = {'MULT\_3'};
M_.endo_names_long(41) = {'MULT_3'};
M_.endo_names(42) = {'MULT_4'};
M_.endo_names_tex(42) = {'MULT\_4'};
M_.endo_names_long(42) = {'MULT_4'};
M_.endo_names(43) = {'MULT_5'};
M_.endo_names_tex(43) = {'MULT\_5'};
M_.endo_names_long(43) = {'MULT_5'};
M_.endo_names(44) = {'MULT_6'};
M_.endo_names_tex(44) = {'MULT\_6'};
M_.endo_names_long(44) = {'MULT_6'};
M_.endo_names(45) = {'MULT_7'};
M_.endo_names_tex(45) = {'MULT\_7'};
M_.endo_names_long(45) = {'MULT_7'};
M_.endo_names(46) = {'MULT_8'};
M_.endo_names_tex(46) = {'MULT\_8'};
M_.endo_names_long(46) = {'MULT_8'};
M_.endo_names(47) = {'MULT_9'};
M_.endo_names_tex(47) = {'MULT\_9'};
M_.endo_names_long(47) = {'MULT_9'};
M_.endo_names(48) = {'MULT_10'};
M_.endo_names_tex(48) = {'MULT\_10'};
M_.endo_names_long(48) = {'MULT_10'};
M_.endo_names(49) = {'MULT_11'};
M_.endo_names_tex(49) = {'MULT\_11'};
M_.endo_names_long(49) = {'MULT_11'};
M_.endo_names(50) = {'MULT_12'};
M_.endo_names_tex(50) = {'MULT\_12'};
M_.endo_names_long(50) = {'MULT_12'};
M_.endo_names(51) = {'MULT_13'};
M_.endo_names_tex(51) = {'MULT\_13'};
M_.endo_names_long(51) = {'MULT_13'};
M_.endo_names(52) = {'MULT_14'};
M_.endo_names_tex(52) = {'MULT\_14'};
M_.endo_names_long(52) = {'MULT_14'};
M_.endo_names(53) = {'MULT_15'};
M_.endo_names_tex(53) = {'MULT\_15'};
M_.endo_names_long(53) = {'MULT_15'};
M_.endo_names(54) = {'MULT_16'};
M_.endo_names_tex(54) = {'MULT\_16'};
M_.endo_names_long(54) = {'MULT_16'};
M_.endo_names(55) = {'MULT_17'};
M_.endo_names_tex(55) = {'MULT\_17'};
M_.endo_names_long(55) = {'MULT_17'};
M_.endo_names(56) = {'MULT_18'};
M_.endo_names_tex(56) = {'MULT\_18'};
M_.endo_names_long(56) = {'MULT_18'};
M_.endo_names(57) = {'MULT_19'};
M_.endo_names_tex(57) = {'MULT\_19'};
M_.endo_names_long(57) = {'MULT_19'};
M_.endo_names(58) = {'MULT_20'};
M_.endo_names_tex(58) = {'MULT\_20'};
M_.endo_names_long(58) = {'MULT_20'};
M_.endo_names(59) = {'MULT_21'};
M_.endo_names_tex(59) = {'MULT\_21'};
M_.endo_names_long(59) = {'MULT_21'};
M_.endo_names(60) = {'MULT_22'};
M_.endo_names_tex(60) = {'MULT\_22'};
M_.endo_names_long(60) = {'MULT_22'};
M_.endo_names(61) = {'MULT_23'};
M_.endo_names_tex(61) = {'MULT\_23'};
M_.endo_names_long(61) = {'MULT_23'};
M_.endo_names(62) = {'MULT_24'};
M_.endo_names_tex(62) = {'MULT\_24'};
M_.endo_names_long(62) = {'MULT_24'};
M_.endo_names(63) = {'MULT_25'};
M_.endo_names_tex(63) = {'MULT\_25'};
M_.endo_names_long(63) = {'MULT_25'};
M_.endo_names(64) = {'MULT_26'};
M_.endo_names_tex(64) = {'MULT\_26'};
M_.endo_names_long(64) = {'MULT_26'};
M_.endo_names(65) = {'MULT_27'};
M_.endo_names_tex(65) = {'MULT\_27'};
M_.endo_names_long(65) = {'MULT_27'};
M_.endo_names(66) = {'MULT_28'};
M_.endo_names_tex(66) = {'MULT\_28'};
M_.endo_names_long(66) = {'MULT_28'};
M_.endo_names(67) = {'MULT_29'};
M_.endo_names_tex(67) = {'MULT\_29'};
M_.endo_names_long(67) = {'MULT_29'};
M_.endo_names(68) = {'MULT_30'};
M_.endo_names_tex(68) = {'MULT\_30'};
M_.endo_names_long(68) = {'MULT_30'};
M_.endo_names(69) = {'MULT_31'};
M_.endo_names_tex(69) = {'MULT\_31'};
M_.endo_names_long(69) = {'MULT_31'};
M_.endo_names(70) = {'MULT_32'};
M_.endo_names_tex(70) = {'MULT\_32'};
M_.endo_names_long(70) = {'MULT_32'};
M_.endo_names(71) = {'MULT_33'};
M_.endo_names_tex(71) = {'MULT\_33'};
M_.endo_names_long(71) = {'MULT_33'};
M_.endo_names(72) = {'MULT_34'};
M_.endo_names_tex(72) = {'MULT\_34'};
M_.endo_names_long(72) = {'MULT_34'};
M_.endo_names(73) = {'MULT_35'};
M_.endo_names_tex(73) = {'MULT\_35'};
M_.endo_names_long(73) = {'MULT_35'};
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
M_.param_names(20) = {'EPSILON'};
M_.param_names_tex(20) = {'EPSILON'};
M_.param_names_long(20) = {'EPSILON'};
M_.param_names(21) = {'optimal_policy_discount_factor'};
M_.param_names_tex(21) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(21) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 73;
M_.param_nbr = 21;
M_.orig_endo_nbr = 38;
M_.aux_vars(1).endo_index = 39;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 40;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 41;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 42;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 43;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.aux_vars(6).endo_index = 44;
M_.aux_vars(6).type = 6;
M_.aux_vars(6).eq_nbr = 6;
M_.aux_vars(7).endo_index = 45;
M_.aux_vars(7).type = 6;
M_.aux_vars(7).eq_nbr = 7;
M_.aux_vars(8).endo_index = 46;
M_.aux_vars(8).type = 6;
M_.aux_vars(8).eq_nbr = 8;
M_.aux_vars(9).endo_index = 47;
M_.aux_vars(9).type = 6;
M_.aux_vars(9).eq_nbr = 9;
M_.aux_vars(10).endo_index = 48;
M_.aux_vars(10).type = 6;
M_.aux_vars(10).eq_nbr = 10;
M_.aux_vars(11).endo_index = 49;
M_.aux_vars(11).type = 6;
M_.aux_vars(11).eq_nbr = 11;
M_.aux_vars(12).endo_index = 50;
M_.aux_vars(12).type = 6;
M_.aux_vars(12).eq_nbr = 12;
M_.aux_vars(13).endo_index = 51;
M_.aux_vars(13).type = 6;
M_.aux_vars(13).eq_nbr = 13;
M_.aux_vars(14).endo_index = 52;
M_.aux_vars(14).type = 6;
M_.aux_vars(14).eq_nbr = 14;
M_.aux_vars(15).endo_index = 53;
M_.aux_vars(15).type = 6;
M_.aux_vars(15).eq_nbr = 15;
M_.aux_vars(16).endo_index = 54;
M_.aux_vars(16).type = 6;
M_.aux_vars(16).eq_nbr = 16;
M_.aux_vars(17).endo_index = 55;
M_.aux_vars(17).type = 6;
M_.aux_vars(17).eq_nbr = 17;
M_.aux_vars(18).endo_index = 56;
M_.aux_vars(18).type = 6;
M_.aux_vars(18).eq_nbr = 18;
M_.aux_vars(19).endo_index = 57;
M_.aux_vars(19).type = 6;
M_.aux_vars(19).eq_nbr = 19;
M_.aux_vars(20).endo_index = 58;
M_.aux_vars(20).type = 6;
M_.aux_vars(20).eq_nbr = 20;
M_.aux_vars(21).endo_index = 59;
M_.aux_vars(21).type = 6;
M_.aux_vars(21).eq_nbr = 21;
M_.aux_vars(22).endo_index = 60;
M_.aux_vars(22).type = 6;
M_.aux_vars(22).eq_nbr = 22;
M_.aux_vars(23).endo_index = 61;
M_.aux_vars(23).type = 6;
M_.aux_vars(23).eq_nbr = 23;
M_.aux_vars(24).endo_index = 62;
M_.aux_vars(24).type = 6;
M_.aux_vars(24).eq_nbr = 24;
M_.aux_vars(25).endo_index = 63;
M_.aux_vars(25).type = 6;
M_.aux_vars(25).eq_nbr = 25;
M_.aux_vars(26).endo_index = 64;
M_.aux_vars(26).type = 6;
M_.aux_vars(26).eq_nbr = 26;
M_.aux_vars(27).endo_index = 65;
M_.aux_vars(27).type = 6;
M_.aux_vars(27).eq_nbr = 27;
M_.aux_vars(28).endo_index = 66;
M_.aux_vars(28).type = 6;
M_.aux_vars(28).eq_nbr = 28;
M_.aux_vars(29).endo_index = 67;
M_.aux_vars(29).type = 6;
M_.aux_vars(29).eq_nbr = 29;
M_.aux_vars(30).endo_index = 68;
M_.aux_vars(30).type = 6;
M_.aux_vars(30).eq_nbr = 30;
M_.aux_vars(31).endo_index = 69;
M_.aux_vars(31).type = 6;
M_.aux_vars(31).eq_nbr = 31;
M_.aux_vars(32).endo_index = 70;
M_.aux_vars(32).type = 6;
M_.aux_vars(32).eq_nbr = 32;
M_.aux_vars(33).endo_index = 71;
M_.aux_vars(33).type = 6;
M_.aux_vars(33).eq_nbr = 33;
M_.aux_vars(34).endo_index = 72;
M_.aux_vars(34).type = 6;
M_.aux_vars(34).eq_nbr = 34;
M_.aux_vars(35).endo_index = 73;
M_.aux_vars(35).type = 6;
M_.aux_vars(35).eq_nbr = 35;
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
M_.orig_eq_nbr = 35;
M_.eq_nbr = 73;
M_.ramsey_eq_nbr = 38;
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
 0 9 0;
 0 10 0;
 0 11 0;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 1 17 0;
 2 18 0;
 3 19 0;
 4 20 0;
 0 21 0;
 0 22 0;
 0 23 0;
 0 24 0;
 0 25 0;
 0 26 0;
 0 27 0;
 0 28 82;
 0 29 83;
 0 30 84;
 0 31 0;
 0 32 0;
 0 33 0;
 0 34 0;
 0 35 85;
 0 36 86;
 0 37 87;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 0;
 0 42 0;
 0 43 0;
 0 44 0;
 0 45 0;
 0 46 88;
 0 47 0;
 0 48 0;
 0 49 0;
 0 50 0;
 0 51 0;
 0 52 0;
 0 53 0;
 5 54 0;
 6 55 0;
 7 56 0;
 8 57 0;
 0 58 0;
 0 59 0;
 0 60 0;
 0 61 0;
 0 62 0;
 0 63 0;
 0 64 0;
 0 65 0;
 0 66 0;
 0 67 0;
 0 68 0;
 0 69 0;
 0 70 0;
 0 71 0;
 0 72 0;
 0 73 0;
 0 74 0;
 0 75 0;
 0 76 0;
 0 77 0;
 0 78 89;
 0 79 90;
 0 80 91;
 0 81 92;]';
M_.nstatic = 54;
M_.nfwrd   = 11;
M_.npred   = 8;
M_.nboth   = 0;
M_.nsfwrd   = 11;
M_.nspred   = 8;
M_.ndynamic   = 19;
M_.dynamic_tmp_nbr = [13; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  39 , 'name' , '1' ;
  40 , 'name' , '2' ;
  41 , 'name' , '3' ;
  42 , 'name' , 'c_nat' ;
  43 , 'name' , 'c_nat_starr' ;
  44 , 'name' , '6' ;
  45 , 'name' , '7' ;
  46 , 'name' , 'Home Dynamic IS Curve' ;
  47 , 'name' , 'Home New Keynesian Phillips Curve' ;
  48 , 'name' , 'Foreign Dynamic IS Curve' ;
  49 , 'name' , 'Foreign New Keynesian Phillips Curve' ;
  50 , 'name' , 'IRS' ;
  51 , 'name' , 'n' ;
  52 , 'name' , 'c' ;
  53 , 'name' , 'c_H' ;
  54 , 'name' , 'c_F' ;
  55 , 'name' , 'n_starr' ;
  56 , 'name' , 'c_starr' ;
  57 , 'name' , 'c_H_starr' ;
  58 , 'name' , 'c_F_starr' ;
  59 , 'name' , 'pie_cu' ;
  60 , 'name' , 'y_cu' ;
  61 , 'name' , 'g_cu' ;
  62 , 'name' , 'y_gap' ;
  63 , 'name' , 'g_gap' ;
  64 , 'name' , 'c_gap' ;
  65 , 'name' , 'y_gap_starr' ;
  66 , 'name' , 'g_gap_starr' ;
  67 , 'name' , 'c_gap_starr' ;
  68 , 'name' , 's_gap' ;
  69 , 'name' , 'y_gap_cu' ;
  70 , 'name' , 'a' ;
  71 , 'name' , 'xi' ;
  72 , 'name' , 'a_starr' ;
  73 , 'name' , 'xi_starr' ;
};
M_.mapping.y_gap.eqidx = [62 69 ];
M_.mapping.g_gap.eqidx = [63 ];
M_.mapping.c_gap.eqidx = [64 ];
M_.mapping.y_gap_starr.eqidx = [65 69 ];
M_.mapping.g_gap_starr.eqidx = [66 ];
M_.mapping.c_gap_starr.eqidx = [67 ];
M_.mapping.s_gap.eqidx = [68 ];
M_.mapping.y_gap_cu.eqidx = [69 ];
M_.mapping.a.eqidx = [39 44 47 51 70 ];
M_.mapping.xi.eqidx = [39 44 47 71 ];
M_.mapping.a_starr.eqidx = [40 45 49 55 72 ];
M_.mapping.xi_starr.eqidx = [40 45 49 73 ];
M_.mapping.eps_a.eqidx = [70 ];
M_.mapping.eps_xi.eqidx = [71 ];
M_.mapping.eps_a_starr.eqidx = [72 ];
M_.mapping.eps_xi_starr.eqidx = [73 ];
M_.mapping.y_nat.eqidx = [39 42 44 62 ];
M_.mapping.g_nat.eqidx = [42 44 63 ];
M_.mapping.c_nat.eqidx = [39 41 42 64 ];
M_.mapping.y_nat_starr.eqidx = [40 43 45 65 ];
M_.mapping.g_nat_starr.eqidx = [43 45 66 ];
M_.mapping.c_nat_starr.eqidx = [40 41 43 67 ];
M_.mapping.s_nat.eqidx = [39 40 41 42 43 68 ];
M_.mapping.y.eqidx = [20 46 47 50 51 52 60 62 ];
M_.mapping.pie.eqidx = [21 46 47 59 ];
M_.mapping.g.eqidx = [46 47 50 52 61 63 ];
M_.mapping.n.eqidx = [51 ];
M_.mapping.c.eqidx = [52 53 54 64 ];
M_.mapping.c_F.eqidx = [54 ];
M_.mapping.c_H.eqidx = [53 ];
M_.mapping.y_starr.eqidx = [27 48 49 50 55 56 60 65 ];
M_.mapping.pie_starr.eqidx = [28 48 49 59 ];
M_.mapping.g_starr.eqidx = [48 49 50 56 61 66 ];
M_.mapping.n_starr.eqidx = [55 ];
M_.mapping.c_starr.eqidx = [56 57 58 67 ];
M_.mapping.c_F_starr.eqidx = [58 ];
M_.mapping.c_H_starr.eqidx = [57 ];
M_.mapping.pie_cu.eqidx = [59 ];
M_.mapping.y_cu.eqidx = [60 ];
M_.mapping.g_cu.eqidx = [61 ];
M_.mapping.ii.eqidx = [46 48 ];
M_.mapping.s.eqidx = [46 47 48 49 50 52 53 54 56 57 58 68 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [9 10 11 12 46 47 48 49 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(73, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(21, 1);
M_.endo_trends = struct('deflator', cell(73, 1), 'log_deflator', cell(73, 1), 'growth_factor', cell(73, 1), 'log_growth_factor', cell(73, 1));
M_.NNZDerivatives = [270; 0; -1; ];
M_.static_tmp_nbr = [12; 0; 0; 0; ];
M_.model_local_variables_static_tt_idxs = {
};
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = 0;
M_.Sigma_e(2, 2) = 0;
M_.Sigma_e(3, 3) = 1;
M_.Sigma_e(4, 4) = 0;
M_.params(1) = 1;
SIGMA = M_.params(1);
M_.params(2) = 0.5;
ALPHA_bar = M_.params(2);
M_.params(7) = 0.03;
CHI = M_.params(7);
M_.params(3) = M_.params(7);
DELTA = M_.params(3);
M_.params(4) = 0.99;
BETA = M_.params(4);
M_.params(5) = 1;
PHI = M_.params(5);
M_.params(6) = 0.8;
h = M_.params(6);
M_.params(9) = 0.90;
THETA = M_.params(9);
M_.params(10) = 0.90;
THETA_starr = M_.params(10);
M_.params(15) = 4.5;
ETA = M_.params(15);
M_.params(8) = 1;
GAMMA = M_.params(8);
M_.params(20) = 1;
EPSILON = M_.params(20);
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
M_.params(16) = 0.001;
RHOA = M_.params(16);
M_.params(17) = 0.9;
RHOXI = M_.params(17);
M_.NNZDerivatives_objective = [4;4;0;];
M_.objective_tmp_nbr = [0; 0; 0; 0; ];
M_.params(21) = M_.params(4);
optimal_policy_discount_factor = M_.params(21);
options_.ramsey_policy = true;
options_.instruments = {'ii';'g'};
steady;
options_.TeX = true;
options_.irf = 10;
options_.order = 1;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'MODEL_MAIN_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MODEL_MAIN_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MODEL_MAIN_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MODEL_MAIN_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MODEL_MAIN_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MODEL_MAIN_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MODEL_MAIN_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
