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
M_.fname = 'Main';
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
M_.endo_names = cell(47,1);
M_.endo_names_tex = cell(47,1);
M_.endo_names_long = cell(47,1);
M_.endo_names(1) = {'a'};
M_.endo_names_tex(1) = {'{a}'};
M_.endo_names_long(1) = {'Home technology shock process (log dev ss)'};
M_.endo_names(2) = {'xi'};
M_.endo_names_tex(2) = {'{xi}'};
M_.endo_names_long(2) = {'Home labor disutility shock process (log dev ss)'};
M_.endo_names(3) = {'y'};
M_.endo_names_tex(3) = {'{y}'};
M_.endo_names_long(3) = {'Home output (log dev ss)'};
M_.endo_names(4) = {'y_nat'};
M_.endo_names_tex(4) = {'y\_nat'};
M_.endo_names_long(4) = {'y_nat'};
M_.endo_names(5) = {'y_gap'};
M_.endo_names_tex(5) = {'y\_gap'};
M_.endo_names_long(5) = {'y_gap'};
M_.endo_names(6) = {'pie'};
M_.endo_names_tex(6) = {'pie'};
M_.endo_names_long(6) = {'pie'};
M_.endo_names(7) = {'g'};
M_.endo_names_tex(7) = {'{g}'};
M_.endo_names_long(7) = {'Home government consumption (log dev ss)'};
M_.endo_names(8) = {'g_nat'};
M_.endo_names_tex(8) = {'g\_nat'};
M_.endo_names_long(8) = {'g_nat'};
M_.endo_names(9) = {'g_gap'};
M_.endo_names_tex(9) = {'g\_gap'};
M_.endo_names_long(9) = {'g_gap'};
M_.endo_names(10) = {'a_starr'};
M_.endo_names_tex(10) = {'{a^*}'};
M_.endo_names_long(10) = {'Foreign technology shock process (log dev ss)'};
M_.endo_names(11) = {'xi_starr'};
M_.endo_names_tex(11) = {'{xi^*}'};
M_.endo_names_long(11) = {'Foreign labor disutility shock process (log dev ss)'};
M_.endo_names(12) = {'y_starr'};
M_.endo_names_tex(12) = {'{y^*}'};
M_.endo_names_long(12) = {'Foreign output (log dev ss)'};
M_.endo_names(13) = {'y_nat_starr'};
M_.endo_names_tex(13) = {'y\_nat\_starr'};
M_.endo_names_long(13) = {'y_nat_starr'};
M_.endo_names(14) = {'y_gap_starr'};
M_.endo_names_tex(14) = {'y\_gap\_starr'};
M_.endo_names_long(14) = {'y_gap_starr'};
M_.endo_names(15) = {'pie_starr'};
M_.endo_names_tex(15) = {'pie\_starr'};
M_.endo_names_long(15) = {'pie_starr'};
M_.endo_names(16) = {'g_starr'};
M_.endo_names_tex(16) = {'{g^*}'};
M_.endo_names_long(16) = {'Foreign government consumption (log dev ss)'};
M_.endo_names(17) = {'g_nat_starr'};
M_.endo_names_tex(17) = {'g\_nat\_starr'};
M_.endo_names_long(17) = {'g_nat_starr'};
M_.endo_names(18) = {'g_gap_starr'};
M_.endo_names_tex(18) = {'g\_gap\_starr'};
M_.endo_names_long(18) = {'g_gap_starr'};
M_.endo_names(19) = {'ii'};
M_.endo_names_tex(19) = {'{i}'};
M_.endo_names_long(19) = {'nominal interest rate (log dev ss)'};
M_.endo_names(20) = {'s'};
M_.endo_names_tex(20) = {'{s}'};
M_.endo_names_long(20) = {'terms of trade (log dev ss)'};
M_.endo_names(21) = {'s_nat'};
M_.endo_names_tex(21) = {'s\_nat'};
M_.endo_names_long(21) = {'s_nat'};
M_.endo_names(22) = {'pie_cu'};
M_.endo_names_tex(22) = {'pie\_cu'};
M_.endo_names_long(22) = {'pie_cu'};
M_.endo_names(23) = {'y_cu'};
M_.endo_names_tex(23) = {'y\_cu'};
M_.endo_names_long(23) = {'y_cu'};
M_.endo_names(24) = {'y_cu_gap'};
M_.endo_names_tex(24) = {'y\_cu\_gap'};
M_.endo_names_long(24) = {'y_cu_gap'};
M_.endo_names(25) = {'MULT_1'};
M_.endo_names_tex(25) = {'MULT\_1'};
M_.endo_names_long(25) = {'MULT_1'};
M_.endo_names(26) = {'MULT_2'};
M_.endo_names_tex(26) = {'MULT\_2'};
M_.endo_names_long(26) = {'MULT_2'};
M_.endo_names(27) = {'MULT_3'};
M_.endo_names_tex(27) = {'MULT\_3'};
M_.endo_names_long(27) = {'MULT_3'};
M_.endo_names(28) = {'MULT_4'};
M_.endo_names_tex(28) = {'MULT\_4'};
M_.endo_names_long(28) = {'MULT_4'};
M_.endo_names(29) = {'MULT_5'};
M_.endo_names_tex(29) = {'MULT\_5'};
M_.endo_names_long(29) = {'MULT_5'};
M_.endo_names(30) = {'MULT_6'};
M_.endo_names_tex(30) = {'MULT\_6'};
M_.endo_names_long(30) = {'MULT_6'};
M_.endo_names(31) = {'MULT_7'};
M_.endo_names_tex(31) = {'MULT\_7'};
M_.endo_names_long(31) = {'MULT_7'};
M_.endo_names(32) = {'MULT_8'};
M_.endo_names_tex(32) = {'MULT\_8'};
M_.endo_names_long(32) = {'MULT_8'};
M_.endo_names(33) = {'MULT_9'};
M_.endo_names_tex(33) = {'MULT\_9'};
M_.endo_names_long(33) = {'MULT_9'};
M_.endo_names(34) = {'MULT_10'};
M_.endo_names_tex(34) = {'MULT\_10'};
M_.endo_names_long(34) = {'MULT_10'};
M_.endo_names(35) = {'MULT_11'};
M_.endo_names_tex(35) = {'MULT\_11'};
M_.endo_names_long(35) = {'MULT_11'};
M_.endo_names(36) = {'MULT_12'};
M_.endo_names_tex(36) = {'MULT\_12'};
M_.endo_names_long(36) = {'MULT_12'};
M_.endo_names(37) = {'MULT_13'};
M_.endo_names_tex(37) = {'MULT\_13'};
M_.endo_names_long(37) = {'MULT_13'};
M_.endo_names(38) = {'MULT_14'};
M_.endo_names_tex(38) = {'MULT\_14'};
M_.endo_names_long(38) = {'MULT_14'};
M_.endo_names(39) = {'MULT_15'};
M_.endo_names_tex(39) = {'MULT\_15'};
M_.endo_names_long(39) = {'MULT_15'};
M_.endo_names(40) = {'MULT_16'};
M_.endo_names_tex(40) = {'MULT\_16'};
M_.endo_names_long(40) = {'MULT_16'};
M_.endo_names(41) = {'MULT_17'};
M_.endo_names_tex(41) = {'MULT\_17'};
M_.endo_names_long(41) = {'MULT_17'};
M_.endo_names(42) = {'MULT_18'};
M_.endo_names_tex(42) = {'MULT\_18'};
M_.endo_names_long(42) = {'MULT_18'};
M_.endo_names(43) = {'MULT_19'};
M_.endo_names_tex(43) = {'MULT\_19'};
M_.endo_names_long(43) = {'MULT_19'};
M_.endo_names(44) = {'MULT_20'};
M_.endo_names_tex(44) = {'MULT\_20'};
M_.endo_names_long(44) = {'MULT_20'};
M_.endo_names(45) = {'MULT_21'};
M_.endo_names_tex(45) = {'MULT\_21'};
M_.endo_names_long(45) = {'MULT_21'};
M_.endo_names(46) = {'MULT_22'};
M_.endo_names_tex(46) = {'MULT\_22'};
M_.endo_names_long(46) = {'MULT_22'};
M_.endo_names(47) = {'MULT_23'};
M_.endo_names_tex(47) = {'MULT\_23'};
M_.endo_names_long(47) = {'MULT_23'};
M_.endo_partitions = struct();
M_.param_names = cell(30,1);
M_.param_names_tex = cell(30,1);
M_.param_names_long = cell(30,1);
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
M_.param_names(18) = {'COEF_yH'};
M_.param_names_tex(18) = {'COEF\_yH'};
M_.param_names_long(18) = {'COEF_yH'};
M_.param_names(19) = {'COEF_yF'};
M_.param_names_tex(19) = {'COEF\_yF'};
M_.param_names_long(19) = {'COEF_yF'};
M_.param_names(20) = {'COEF_pieH'};
M_.param_names_tex(20) = {'COEF\_pieH'};
M_.param_names_long(20) = {'COEF_pieH'};
M_.param_names(21) = {'COEF_pieF'};
M_.param_names_tex(21) = {'COEF\_pieF'};
M_.param_names_long(21) = {'COEF_pieF'};
M_.param_names(22) = {'COEF_aH'};
M_.param_names_tex(22) = {'COEF\_aH'};
M_.param_names_long(22) = {'COEF_aH'};
M_.param_names(23) = {'COEF_aF'};
M_.param_names_tex(23) = {'COEF\_aF'};
M_.param_names_long(23) = {'COEF_aF'};
M_.param_names(24) = {'COEF_yH_starr'};
M_.param_names_tex(24) = {'COEF\_yH\_starr'};
M_.param_names_long(24) = {'COEF_yH_starr'};
M_.param_names(25) = {'COEF_yF_starr'};
M_.param_names_tex(25) = {'COEF\_yF\_starr'};
M_.param_names_long(25) = {'COEF_yF_starr'};
M_.param_names(26) = {'COEF_pieH_starr'};
M_.param_names_tex(26) = {'COEF\_pieH\_starr'};
M_.param_names_long(26) = {'COEF_pieH_starr'};
M_.param_names(27) = {'COEF_pieF_starr'};
M_.param_names_tex(27) = {'COEF\_pieF\_starr'};
M_.param_names_long(27) = {'COEF_pieF_starr'};
M_.param_names(28) = {'COEF_aH_starr'};
M_.param_names_tex(28) = {'COEF\_aH\_starr'};
M_.param_names_long(28) = {'COEF_aH_starr'};
M_.param_names(29) = {'COEF_aF_starr'};
M_.param_names_tex(29) = {'COEF\_aF\_starr'};
M_.param_names_long(29) = {'COEF_aF_starr'};
M_.param_names(30) = {'optimal_policy_discount_factor'};
M_.param_names_tex(30) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(30) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 4;
M_.endo_nbr = 47;
M_.param_nbr = 30;
M_.orig_endo_nbr = 24;
M_.aux_vars(1).endo_index = 25;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 26;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 27;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 28;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 29;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.aux_vars(6).endo_index = 30;
M_.aux_vars(6).type = 6;
M_.aux_vars(6).eq_nbr = 6;
M_.aux_vars(7).endo_index = 31;
M_.aux_vars(7).type = 6;
M_.aux_vars(7).eq_nbr = 7;
M_.aux_vars(8).endo_index = 32;
M_.aux_vars(8).type = 6;
M_.aux_vars(8).eq_nbr = 8;
M_.aux_vars(9).endo_index = 33;
M_.aux_vars(9).type = 6;
M_.aux_vars(9).eq_nbr = 9;
M_.aux_vars(10).endo_index = 34;
M_.aux_vars(10).type = 6;
M_.aux_vars(10).eq_nbr = 10;
M_.aux_vars(11).endo_index = 35;
M_.aux_vars(11).type = 6;
M_.aux_vars(11).eq_nbr = 11;
M_.aux_vars(12).endo_index = 36;
M_.aux_vars(12).type = 6;
M_.aux_vars(12).eq_nbr = 12;
M_.aux_vars(13).endo_index = 37;
M_.aux_vars(13).type = 6;
M_.aux_vars(13).eq_nbr = 13;
M_.aux_vars(14).endo_index = 38;
M_.aux_vars(14).type = 6;
M_.aux_vars(14).eq_nbr = 14;
M_.aux_vars(15).endo_index = 39;
M_.aux_vars(15).type = 6;
M_.aux_vars(15).eq_nbr = 15;
M_.aux_vars(16).endo_index = 40;
M_.aux_vars(16).type = 6;
M_.aux_vars(16).eq_nbr = 16;
M_.aux_vars(17).endo_index = 41;
M_.aux_vars(17).type = 6;
M_.aux_vars(17).eq_nbr = 17;
M_.aux_vars(18).endo_index = 42;
M_.aux_vars(18).type = 6;
M_.aux_vars(18).eq_nbr = 18;
M_.aux_vars(19).endo_index = 43;
M_.aux_vars(19).type = 6;
M_.aux_vars(19).eq_nbr = 19;
M_.aux_vars(20).endo_index = 44;
M_.aux_vars(20).type = 6;
M_.aux_vars(20).eq_nbr = 20;
M_.aux_vars(21).endo_index = 45;
M_.aux_vars(21).type = 6;
M_.aux_vars(21).eq_nbr = 21;
M_.aux_vars(22).endo_index = 46;
M_.aux_vars(22).type = 6;
M_.aux_vars(22).eq_nbr = 22;
M_.aux_vars(23).endo_index = 47;
M_.aux_vars(23).type = 6;
M_.aux_vars(23).eq_nbr = 23;
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
M_.orig_eq_nbr = 23;
M_.eq_nbr = 47;
M_.ramsey_eq_nbr = 24;
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
 0 11 56;
 0 12 0;
 0 13 0;
 0 14 57;
 0 15 58;
 0 16 0;
 0 17 0;
 3 18 0;
 4 19 0;
 0 20 59;
 0 21 0;
 0 22 0;
 0 23 60;
 0 24 61;
 0 25 0;
 0 26 0;
 0 27 0;
 0 28 62;
 0 29 0;
 0 30 0;
 0 31 0;
 0 32 0;
 5 33 0;
 6 34 0;
 7 35 0;
 8 36 0;
 0 37 0;
 0 38 63;
 0 39 64;
 0 40 65;
 0 41 66;
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
 0 55 0;]';
M_.nstatic = 28;
M_.nfwrd   = 11;
M_.npred   = 8;
M_.nboth   = 0;
M_.nsfwrd   = 11;
M_.nspred   = 8;
M_.ndynamic   = 19;
M_.dynamic_tmp_nbr = [9; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  25 , 'name' , 'Home Dynamic IS Curve' ;
  26 , 'name' , 'Home New Keynesian Phillips Curve' ;
  27 , 'name' , 'Foreign Dynamic IS Curve' ;
  28 , 'name' , 'Foreign New Keynesian Phillips Curve' ;
  29 , 'name' , 'IRS' ;
  30 , 'name' , 'TFP process' ;
  31 , 'name' , 'Labor disutility shifter' ;
  32 , 'name' , 'TFP process' ;
  33 , 'name' , 'Labor disutility shifter' ;
  34 , 'name' , 's_nat' ;
  35 , 'name' , '11' ;
  36 , 'name' , '12' ;
  37 , 'name' , '13' ;
  38 , 'name' , '14' ;
  39 , 'name' , 'y_gap' ;
  40 , 'name' , 'g_gap' ;
  41 , 'name' , 'y_gap_starr' ;
  42 , 'name' , 'g_gap_starr' ;
  43 , 'name' , 'Currency union inflation' ;
  44 , 'name' , 'Currency union output' ;
  45 , 'name' , 'y_cu_gap' ;
  46 , 'name' , 'g' ;
  47 , 'name' , 'g_starr' ;
};
M_.mapping.a.eqidx = [26 30 34 35 37 46 47 ];
M_.mapping.xi.eqidx = [26 31 34 35 37 ];
M_.mapping.y.eqidx = [25 26 29 39 44 46 47 ];
M_.mapping.y_nat.eqidx = [34 35 37 39 45 ];
M_.mapping.y_gap.eqidx = [5 39 ];
M_.mapping.pie.eqidx = [6 25 26 43 46 47 ];
M_.mapping.g.eqidx = [25 26 29 40 46 ];
M_.mapping.g_nat.eqidx = [35 37 40 ];
M_.mapping.g_gap.eqidx = [40 ];
M_.mapping.a_starr.eqidx = [28 32 34 36 38 46 47 ];
M_.mapping.xi_starr.eqidx = [28 33 34 36 38 ];
M_.mapping.y_starr.eqidx = [27 28 29 41 44 46 47 ];
M_.mapping.y_nat_starr.eqidx = [34 36 38 41 45 ];
M_.mapping.y_gap_starr.eqidx = [14 41 ];
M_.mapping.pie_starr.eqidx = [15 27 28 43 46 47 ];
M_.mapping.g_starr.eqidx = [27 28 29 42 47 ];
M_.mapping.g_nat_starr.eqidx = [36 38 42 ];
M_.mapping.g_gap_starr.eqidx = [42 ];
M_.mapping.ii.eqidx = [25 27 ];
M_.mapping.s.eqidx = [25 26 27 28 29 ];
M_.mapping.s_nat.eqidx = [34 35 36 ];
M_.mapping.pie_cu.eqidx = [43 ];
M_.mapping.y_cu.eqidx = [44 45 ];
M_.mapping.y_cu_gap.eqidx = [45 ];
M_.mapping.eps_a.eqidx = [30 ];
M_.mapping.eps_xi.eqidx = [31 ];
M_.mapping.eps_a_starr.eqidx = [32 ];
M_.mapping.eps_xi_starr.eqidx = [33 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 10 11 25 26 27 28 ];
M_.exo_names_orig_ord = [1:4];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(47, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(4, 1);
M_.params = NaN(30, 1);
M_.endo_trends = struct('deflator', cell(47, 1), 'log_deflator', cell(47, 1), 'growth_factor', cell(47, 1), 'log_growth_factor', cell(47, 1));
M_.NNZDerivatives = [216; 0; -1; ];
M_.static_tmp_nbr = [8; 0; 0; 0; ];
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
M_.params(2) = 0.1;
ALPHA_bar = M_.params(2);
M_.params(3) = 0.8;
DELTA = M_.params(3);
M_.params(4) = 0.99;
BETA = M_.params(4);
M_.params(5) = 3;
PHI = M_.params(5);
M_.params(6) = 0.95;
h = M_.params(6);
M_.params(9) = 0.01;
THETA = M_.params(9);
M_.params(10) = 0.01;
THETA_starr = M_.params(10);
M_.params(15) = 1;
ETA = M_.params(15);
M_.params(7) = 0.03;
CHI = M_.params(7);
M_.params(8) = M_.params(1);
GAMMA = M_.params(8);
M_.params(11) = 1-M_.params(2)*M_.params(6)+M_.params(2)*(1-M_.params(6))*(2-M_.params(2))*(M_.params(1)*M_.params(15)-1);
W_ALPHA_bar = M_.params(11);
M_.params(12) = (1-M_.params(9))*(1-M_.params(9)*M_.params(4))/M_.params(9);
LAMBDA = M_.params(12);
M_.params(13) = M_.params(2)*M_.params(6)*(1+(2-M_.params(2))*(M_.params(1)*M_.params(15)-1));
W_ALPHA_bar_starr = M_.params(13);
M_.params(14) = (1-M_.params(10))*(1-M_.params(4)*M_.params(10))/M_.params(10);
LAMBDA_starr = M_.params(14);
M_.params(16) = 0.8;
RHOA = M_.params(16);
M_.params(17) = 0.8;
RHOXI = M_.params(17);
M_.params(18) = 1;
COEF_yH = M_.params(18);
M_.params(19) = 1;
COEF_yF = M_.params(19);
M_.params(20) = 1;
COEF_pieH = M_.params(20);
M_.params(21) = 1;
COEF_pieF = M_.params(21);
M_.params(22) = 1;
COEF_aH = M_.params(22);
M_.params(23) = 1;
COEF_aF = M_.params(23);
M_.params(24) = 1;
COEF_yH_starr = M_.params(24);
M_.params(25) = 1;
COEF_yF_starr = M_.params(25);
M_.params(26) = 1;
COEF_pieH_starr = M_.params(26);
M_.params(27) = 1;
COEF_pieF_starr = M_.params(27);
M_.params(28) = 1;
COEF_aH_starr = M_.params(28);
M_.params(29) = 1;
COEF_aF_starr = M_.params(29);
M_.NNZDerivatives_objective = [4;4;0;];
M_.objective_tmp_nbr = [0; 0; 0; 0; ];
M_.params(30) = M_.params(4);
optimal_policy_discount_factor = M_.params(30);
options_.ramsey_policy = true;
options_.instruments = {'ii';'g';'g_starr'};
%
% OPTIM_WEIGHTS
%
M_.osr.variable_weights = sparse(M_.endo_nbr,M_.endo_nbr);
M_.osr.variable_indices = [];

M_.osr.variable_weights(6,6) = M_.params(6)/M_.params(12);
M_.osr.variable_indices = [M_.osr.variable_indices; 6];
M_.osr.variable_weights(15,15) = (1-M_.params(6))/M_.params(14);
M_.osr.variable_indices = [M_.osr.variable_indices; 15];
M_.osr.variable_weights(5,5) = M_.params(6)*(1+M_.params(5));
M_.osr.variable_indices = [M_.osr.variable_indices; 5];
M_.osr.variable_weights(14,14) = (1-M_.params(6))*(1+M_.params(5));
M_.osr.variable_indices = [M_.osr.variable_indices; 14];
M_.osr.param_names = {'COEF_yH';'COEF_yF';'COEF_pieH';'COEF_pieF';'COEF_aH';'COEF_aF';'COEF_yH_starr';'COEF_yF_starr';'COEF_pieH_starr';'COEF_pieF_starr';'COEF_aH_starr';'COEF_aF_starr'};
M_.osr.param_names = cellstr(M_.osr.param_names);
M_.osr.param_indices = zeros(length(M_.osr.param_names), 1);
M_.osr.param_indices(1) = 18;
M_.osr.param_indices(2) = 19;
M_.osr.param_indices(3) = 20;
M_.osr.param_indices(4) = 21;
M_.osr.param_indices(5) = 22;
M_.osr.param_indices(6) = 23;
M_.osr.param_indices(7) = 24;
M_.osr.param_indices(8) = 25;
M_.osr.param_indices(9) = 26;
M_.osr.param_indices(10) = 27;
M_.osr.param_indices(11) = 28;
M_.osr.param_indices(12) = 29;
M_.osr.param_bounds = [-inf(length(M_.osr.param_names), 1), inf(length(M_.osr.param_names), 1)];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_yH'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_yF'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_pieH'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_pieF'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_aH'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_aF'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_yH_starr'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_yF_starr'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_pieH_starr'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_pieF_starr'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_aH_starr'), :) = [0, 1];
M_.osr.param_bounds(strcmp(M_.osr.param_names, 'COEF_aF_starr'), :) = [0, 1];
options_.irf = 30;
options_.osr.opt_algo = 9;
var_list_ = {};
oo_.osr = osr(var_list_,M_.osr.param_names,M_.osr.variable_indices,M_.osr.variable_weights);
oo_.osr.optim_params
oo_.planner_objective_value = evaluate_planner_objective(M_, options_, oo_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Main_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Main_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Main_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Main_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Main_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Main_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Main_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 12 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
