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
M_.fname = 'Model_Main_8';
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
M_.endo_names = cell(163,1);
M_.endo_names_tex = cell(163,1);
M_.endo_names_long = cell(163,1);
M_.endo_names(1) = {'a'};
M_.endo_names_tex(1) = {'{a}'};
M_.endo_names_long(1) = {'Home productivity (log dev ss)'};
M_.endo_names(2) = {'a_starr'};
M_.endo_names_tex(2) = {'{a^*}'};
M_.endo_names_long(2) = {'Foreign productivity (log dev ss)'};
M_.endo_names(3) = {'a_cu'};
M_.endo_names_tex(3) = {'a\_cu'};
M_.endo_names_long(3) = {'a_cu'};
M_.endo_names(4) = {'y_nat'};
M_.endo_names_tex(4) = {'{\hat {\bar y}}'};
M_.endo_names_long(4) = {'Home natural output (log dev ss)'};
M_.endo_names(5) = {'g_nat'};
M_.endo_names_tex(5) = {'{\hat {\bar g}}'};
M_.endo_names_long(5) = {'Home natural government spending (log dev ss)'};
M_.endo_names(6) = {'c_nat'};
M_.endo_names_tex(6) = {'{\hat {\bar c}}'};
M_.endo_names_long(6) = {'Home natural consumption (log dev ss)'};
M_.endo_names(7) = {'c_H_nat'};
M_.endo_names_tex(7) = {'{\hat {\bar c}^H}'};
M_.endo_names_long(7) = {'Home natural consumption of Home-made goods (log dev ss)'};
M_.endo_names(8) = {'c_F_nat'};
M_.endo_names_tex(8) = {'{\hat {\bar c}^F}'};
M_.endo_names_long(8) = {'Home natural consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(9) = {'n_nat'};
M_.endo_names_tex(9) = {'{\hat {\bar n}}'};
M_.endo_names_long(9) = {'Home natural labor (log dev ss)'};
M_.endo_names(10) = {'f_nat'};
M_.endo_names_tex(10) = {'{\hat {\bar f}}'};
M_.endo_names_long(10) = {'Home natural fiscal stance (log dev ss)'};
M_.endo_names(11) = {'s_nat'};
M_.endo_names_tex(11) = {'{\bar s}'};
M_.endo_names_long(11) = {'Home natural terms of trade (log dev ss)'};
M_.endo_names(12) = {'r_nat'};
M_.endo_names_tex(12) = {'{\bar r}'};
M_.endo_names_long(12) = {'Home natural rate (log dev ss)'};
M_.endo_names(13) = {'y_nat_starr'};
M_.endo_names_tex(13) = {'{\hat {\bar y}^*}'};
M_.endo_names_long(13) = {'Foreign natural output (log dev ss)'};
M_.endo_names(14) = {'g_nat_starr'};
M_.endo_names_tex(14) = {'{\hat {\bar g}^*}'};
M_.endo_names_long(14) = {'Foreign natural government spending (log dev ss)'};
M_.endo_names(15) = {'c_nat_starr'};
M_.endo_names_tex(15) = {'{\hat {\bar c}^*}'};
M_.endo_names_long(15) = {'Foreign natural consumption (log dev ss)'};
M_.endo_names(16) = {'c_H_nat_starr'};
M_.endo_names_tex(16) = {'{\hat {\bar c}^{H*}}'};
M_.endo_names_long(16) = {'Foreign natural consumption of Home-made goods (log dev ss)'};
M_.endo_names(17) = {'c_F_nat_starr'};
M_.endo_names_tex(17) = {'{\hat {\bar c}^{F*}}'};
M_.endo_names_long(17) = {'Foreign natural consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(18) = {'n_nat_starr'};
M_.endo_names_tex(18) = {'{\hat {\bar n}^*}'};
M_.endo_names_long(18) = {'Foreign natural labor (log dev ss)'};
M_.endo_names(19) = {'f_nat_starr'};
M_.endo_names_tex(19) = {'{\hat {\bar f}^*}'};
M_.endo_names_long(19) = {'Foreign natural fiscal stance (log dev ss)'};
M_.endo_names(20) = {'s_nat_starr'};
M_.endo_names_tex(20) = {'{\bar s^*}'};
M_.endo_names_long(20) = {'Foreign natural terms of trade (log dev ss)'};
M_.endo_names(21) = {'r_nat_starr'};
M_.endo_names_tex(21) = {'{\bar r^*}'};
M_.endo_names_long(21) = {'Foreign natural rate (log dev ss)'};
M_.endo_names(22) = {'y_nat_cu'};
M_.endo_names_tex(22) = {'{\hat {\bar y}^{cu}}'};
M_.endo_names_long(22) = {'Union natural output (log dev ss)'};
M_.endo_names(23) = {'g_nat_cu'};
M_.endo_names_tex(23) = {'{\hat {\bar g}^{cu}}'};
M_.endo_names_long(23) = {'Union natural government consumption (log dev ss)'};
M_.endo_names(24) = {'c_nat_cu'};
M_.endo_names_tex(24) = {'{\hat {\bar c}^{cu}}'};
M_.endo_names_long(24) = {'Union natural consumption (log dev ss)'};
M_.endo_names(25) = {'c_H_nat_cu'};
M_.endo_names_tex(25) = {'c\_H\_nat\_cu'};
M_.endo_names_long(25) = {'c_H_nat_cu'};
M_.endo_names(26) = {'c_F_nat_cu'};
M_.endo_names_tex(26) = {'c\_F\_nat\_cu'};
M_.endo_names_long(26) = {'c_F_nat_cu'};
M_.endo_names(27) = {'r_nat_cu'};
M_.endo_names_tex(27) = {'{\hat {\bar r}^{cu}}'};
M_.endo_names_long(27) = {'Union natural rate (log dev ss)'};
M_.endo_names(28) = {'f_nat_cu'};
M_.endo_names_tex(28) = {'f\_nat\_cu'};
M_.endo_names_long(28) = {'f_nat_cu'};
M_.endo_names(29) = {'y'};
M_.endo_names_tex(29) = {'{\hat y}'};
M_.endo_names_long(29) = {'Home output (log dev ss)'};
M_.endo_names(30) = {'pie'};
M_.endo_names_tex(30) = {'{\pi^H}'};
M_.endo_names_long(30) = {'Home inflation (log dev ss)'};
M_.endo_names(31) = {'g'};
M_.endo_names_tex(31) = {'{\hat g}'};
M_.endo_names_long(31) = {'Home government consumption (log dev ss)'};
M_.endo_names(32) = {'n'};
M_.endo_names_tex(32) = {'{\hat n}'};
M_.endo_names_long(32) = {'Home labor (log dev ss)'};
M_.endo_names(33) = {'c'};
M_.endo_names_tex(33) = {'{\hat c}'};
M_.endo_names_long(33) = {'Home consumption (log dev ss)'};
M_.endo_names(34) = {'c_H'};
M_.endo_names_tex(34) = {'{\hat c^H}'};
M_.endo_names_long(34) = {'Home consumption of Home-made goods (log dev ss)'};
M_.endo_names(35) = {'c_F'};
M_.endo_names_tex(35) = {'{\hat c^F}'};
M_.endo_names_long(35) = {'Home consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(36) = {'f'};
M_.endo_names_tex(36) = {'{\hat f}'};
M_.endo_names_long(36) = {'Home fiscal stance (log dev ss)'};
M_.endo_names(37) = {'s'};
M_.endo_names_tex(37) = {'{s}'};
M_.endo_names_long(37) = {'Home terms of trade (log dev ss)'};
M_.endo_names(38) = {'ii'};
M_.endo_names_tex(38) = {'{i}'};
M_.endo_names_long(38) = {'Home nominal interest rate (log dev ss)'};
M_.endo_names(39) = {'y_starr'};
M_.endo_names_tex(39) = {'{\hat y^*}'};
M_.endo_names_long(39) = {'Foreign output (log dev ss)'};
M_.endo_names(40) = {'pie_starr'};
M_.endo_names_tex(40) = {'{\pi^{F*}}'};
M_.endo_names_long(40) = {'Foreign inflation (log dev ss)'};
M_.endo_names(41) = {'g_starr'};
M_.endo_names_tex(41) = {'{\hat g^*}'};
M_.endo_names_long(41) = {'Foreign government consumption (log dev ss)'};
M_.endo_names(42) = {'n_starr'};
M_.endo_names_tex(42) = {'{\hat n^*}'};
M_.endo_names_long(42) = {'Foreign labor (log dev ss)'};
M_.endo_names(43) = {'c_starr'};
M_.endo_names_tex(43) = {'{\hat c^*}'};
M_.endo_names_long(43) = {'Foreign consumption (log dev ss)'};
M_.endo_names(44) = {'c_H_starr'};
M_.endo_names_tex(44) = {'{\hat c^{H*}}'};
M_.endo_names_long(44) = {'Foreign consumption of Home-made goods (log dev ss)'};
M_.endo_names(45) = {'c_F_starr'};
M_.endo_names_tex(45) = {'{\hat c^{F*}}'};
M_.endo_names_long(45) = {'Foreign consumption of Foreign-made goods (log dev ss)'};
M_.endo_names(46) = {'f_starr'};
M_.endo_names_tex(46) = {'{\hat f^*}'};
M_.endo_names_long(46) = {'Foreign fiscal stance (log dev ss)'};
M_.endo_names(47) = {'ii_starr'};
M_.endo_names_tex(47) = {'{i^*}'};
M_.endo_names_long(47) = {'Foreign nominal interest rate (log dev ss)'};
M_.endo_names(48) = {'s_starr'};
M_.endo_names_tex(48) = {'{s^*}'};
M_.endo_names_long(48) = {'Foreign terms of trade (log dev ss)'};
M_.endo_names(49) = {'y_cu'};
M_.endo_names_tex(49) = {'{\hat y^{cu}}'};
M_.endo_names_long(49) = {'Union output (log dev ss)'};
M_.endo_names(50) = {'g_cu'};
M_.endo_names_tex(50) = {'{\hat g^{cu}}'};
M_.endo_names_long(50) = {'Union government spending (log dev ss)'};
M_.endo_names(51) = {'c_cu'};
M_.endo_names_tex(51) = {'{\hat c^{cu}}'};
M_.endo_names_long(51) = {'Union consumption (log dev ss)'};
M_.endo_names(52) = {'c_H_cu'};
M_.endo_names_tex(52) = {'c\_H\_cu'};
M_.endo_names_long(52) = {'c_H_cu'};
M_.endo_names(53) = {'c_F_cu'};
M_.endo_names_tex(53) = {'c\_F\_cu'};
M_.endo_names_long(53) = {'c_F_cu'};
M_.endo_names(54) = {'ii_cu'};
M_.endo_names_tex(54) = {'{i^{cu}}'};
M_.endo_names_long(54) = {'Union nominal interest rate (log dev ss)'};
M_.endo_names(55) = {'pie_cu'};
M_.endo_names_tex(55) = {'{\pi^{cu}}'};
M_.endo_names_long(55) = {'Union inflation (log dev ss)'};
M_.endo_names(56) = {'f_cu'};
M_.endo_names_tex(56) = {'f\_cu'};
M_.endo_names_long(56) = {'f_cu'};
M_.endo_names(57) = {'y_gap'};
M_.endo_names_tex(57) = {'{\tilde y}'};
M_.endo_names_long(57) = {'Home output gap (log dev ss)'};
M_.endo_names(58) = {'g_gap'};
M_.endo_names_tex(58) = {'{\tilde g}'};
M_.endo_names_long(58) = {'Home government spending gap (log dev ss)'};
M_.endo_names(59) = {'c_gap'};
M_.endo_names_tex(59) = {'{\tilde c}'};
M_.endo_names_long(59) = {'Home consumption gap (log dev ss)'};
M_.endo_names(60) = {'c_H_gap'};
M_.endo_names_tex(60) = {'{\tilde c^H}'};
M_.endo_names_long(60) = {'Home consumption of Home-made goods gap (log dev ss)'};
M_.endo_names(61) = {'c_F_gap'};
M_.endo_names_tex(61) = {'{\tilde c^F}'};
M_.endo_names_long(61) = {'Home consumption of Foreign-made goods gap (log dev ss)'};
M_.endo_names(62) = {'f_gap'};
M_.endo_names_tex(62) = {'{\tilde f}'};
M_.endo_names_long(62) = {'Home fiscal stance gap (log dev ss)'};
M_.endo_names(63) = {'n_gap'};
M_.endo_names_tex(63) = {'{\tilde n}'};
M_.endo_names_long(63) = {'Home labor gap (log dev ss)'};
M_.endo_names(64) = {'s_gap'};
M_.endo_names_tex(64) = {'{\tilde s}'};
M_.endo_names_long(64) = {'Home terms of trade gap (log dev ss)'};
M_.endo_names(65) = {'ii_gap'};
M_.endo_names_tex(65) = {'{\tilde i}'};
M_.endo_names_long(65) = {'ii_gap'};
M_.endo_names(66) = {'y_gap_starr'};
M_.endo_names_tex(66) = {'{\tilde y^*}'};
M_.endo_names_long(66) = {'Foreign output gap (log dev ss)'};
M_.endo_names(67) = {'g_gap_starr'};
M_.endo_names_tex(67) = {'{\tilde g^*}'};
M_.endo_names_long(67) = {'Foreign government spending gap (log dev ss)'};
M_.endo_names(68) = {'c_gap_starr'};
M_.endo_names_tex(68) = {'{\tilde c^*}'};
M_.endo_names_long(68) = {'Foreign consumption gap (log dev ss)'};
M_.endo_names(69) = {'c_H_gap_starr'};
M_.endo_names_tex(69) = {'{\tilde c^{H*}}'};
M_.endo_names_long(69) = {'Foreign consumption of Home-made goods gap (log dev ss)'};
M_.endo_names(70) = {'c_F_gap_starr'};
M_.endo_names_tex(70) = {'{\tilde c^{F*}}'};
M_.endo_names_long(70) = {'Foreign consumption of Foreign-made goods gap (log dev ss)'};
M_.endo_names(71) = {'f_gap_starr'};
M_.endo_names_tex(71) = {'{\tilde f^*}'};
M_.endo_names_long(71) = {'Foreign fiscal stance gap (log dev ss)'};
M_.endo_names(72) = {'n_gap_starr'};
M_.endo_names_tex(72) = {'{\tilde n^*}'};
M_.endo_names_long(72) = {'Foreign labor gap (log dev ss)'};
M_.endo_names(73) = {'s_gap_starr'};
M_.endo_names_tex(73) = {'{\tilde s^*}'};
M_.endo_names_long(73) = {'Foreign terms of trade gap (log dev ss)'};
M_.endo_names(74) = {'ii_gap_starr'};
M_.endo_names_tex(74) = {'{\tilde i^*}'};
M_.endo_names_long(74) = {'ii_gap_starr'};
M_.endo_names(75) = {'y_gap_cu'};
M_.endo_names_tex(75) = {'{\tilde y^{cu}}'};
M_.endo_names_long(75) = {'Union output gap (log dev ss)'};
M_.endo_names(76) = {'g_gap_cu'};
M_.endo_names_tex(76) = {'{\tilde g^{cu}}'};
M_.endo_names_long(76) = {'Union government spending gap (log dev ss)'};
M_.endo_names(77) = {'c_gap_cu'};
M_.endo_names_tex(77) = {'{\tilde c^{cu}}'};
M_.endo_names_long(77) = {'Union government spending gap (log dev ss)'};
M_.endo_names(78) = {'c_H_gap_cu'};
M_.endo_names_tex(78) = {'c\_H\_gap\_cu'};
M_.endo_names_long(78) = {'c_H_gap_cu'};
M_.endo_names(79) = {'c_F_gap_cu'};
M_.endo_names_tex(79) = {'c\_F\_gap\_cu'};
M_.endo_names_long(79) = {'c_F_gap_cu'};
M_.endo_names(80) = {'ii_gap_cu'};
M_.endo_names_tex(80) = {'{\tilde i^{cu}}'};
M_.endo_names_long(80) = {'ii_gap_cu'};
M_.endo_names(81) = {'n_gap_cu'};
M_.endo_names_tex(81) = {'n\_gap\_cu'};
M_.endo_names_long(81) = {'n_gap_cu'};
M_.endo_names(82) = {'f_gap_cu'};
M_.endo_names_tex(82) = {'f\_gap\_cu'};
M_.endo_names_long(82) = {'f_gap_cu'};
M_.endo_names(83) = {'g_gap_r'};
M_.endo_names_tex(83) = {'{\tilde g^{r}}'};
M_.endo_names_long(83) = {'Relative output gap (log dev ss)'};
M_.endo_names(84) = {'MULT_1'};
M_.endo_names_tex(84) = {'MULT\_1'};
M_.endo_names_long(84) = {'MULT_1'};
M_.endo_names(85) = {'MULT_2'};
M_.endo_names_tex(85) = {'MULT\_2'};
M_.endo_names_long(85) = {'MULT_2'};
M_.endo_names(86) = {'MULT_3'};
M_.endo_names_tex(86) = {'MULT\_3'};
M_.endo_names_long(86) = {'MULT_3'};
M_.endo_names(87) = {'MULT_4'};
M_.endo_names_tex(87) = {'MULT\_4'};
M_.endo_names_long(87) = {'MULT_4'};
M_.endo_names(88) = {'MULT_5'};
M_.endo_names_tex(88) = {'MULT\_5'};
M_.endo_names_long(88) = {'MULT_5'};
M_.endo_names(89) = {'MULT_6'};
M_.endo_names_tex(89) = {'MULT\_6'};
M_.endo_names_long(89) = {'MULT_6'};
M_.endo_names(90) = {'MULT_7'};
M_.endo_names_tex(90) = {'MULT\_7'};
M_.endo_names_long(90) = {'MULT_7'};
M_.endo_names(91) = {'MULT_8'};
M_.endo_names_tex(91) = {'MULT\_8'};
M_.endo_names_long(91) = {'MULT_8'};
M_.endo_names(92) = {'MULT_9'};
M_.endo_names_tex(92) = {'MULT\_9'};
M_.endo_names_long(92) = {'MULT_9'};
M_.endo_names(93) = {'MULT_10'};
M_.endo_names_tex(93) = {'MULT\_10'};
M_.endo_names_long(93) = {'MULT_10'};
M_.endo_names(94) = {'MULT_11'};
M_.endo_names_tex(94) = {'MULT\_11'};
M_.endo_names_long(94) = {'MULT_11'};
M_.endo_names(95) = {'MULT_12'};
M_.endo_names_tex(95) = {'MULT\_12'};
M_.endo_names_long(95) = {'MULT_12'};
M_.endo_names(96) = {'MULT_13'};
M_.endo_names_tex(96) = {'MULT\_13'};
M_.endo_names_long(96) = {'MULT_13'};
M_.endo_names(97) = {'MULT_14'};
M_.endo_names_tex(97) = {'MULT\_14'};
M_.endo_names_long(97) = {'MULT_14'};
M_.endo_names(98) = {'MULT_15'};
M_.endo_names_tex(98) = {'MULT\_15'};
M_.endo_names_long(98) = {'MULT_15'};
M_.endo_names(99) = {'MULT_16'};
M_.endo_names_tex(99) = {'MULT\_16'};
M_.endo_names_long(99) = {'MULT_16'};
M_.endo_names(100) = {'MULT_17'};
M_.endo_names_tex(100) = {'MULT\_17'};
M_.endo_names_long(100) = {'MULT_17'};
M_.endo_names(101) = {'MULT_18'};
M_.endo_names_tex(101) = {'MULT\_18'};
M_.endo_names_long(101) = {'MULT_18'};
M_.endo_names(102) = {'MULT_19'};
M_.endo_names_tex(102) = {'MULT\_19'};
M_.endo_names_long(102) = {'MULT_19'};
M_.endo_names(103) = {'MULT_20'};
M_.endo_names_tex(103) = {'MULT\_20'};
M_.endo_names_long(103) = {'MULT_20'};
M_.endo_names(104) = {'MULT_21'};
M_.endo_names_tex(104) = {'MULT\_21'};
M_.endo_names_long(104) = {'MULT_21'};
M_.endo_names(105) = {'MULT_22'};
M_.endo_names_tex(105) = {'MULT\_22'};
M_.endo_names_long(105) = {'MULT_22'};
M_.endo_names(106) = {'MULT_23'};
M_.endo_names_tex(106) = {'MULT\_23'};
M_.endo_names_long(106) = {'MULT_23'};
M_.endo_names(107) = {'MULT_24'};
M_.endo_names_tex(107) = {'MULT\_24'};
M_.endo_names_long(107) = {'MULT_24'};
M_.endo_names(108) = {'MULT_25'};
M_.endo_names_tex(108) = {'MULT\_25'};
M_.endo_names_long(108) = {'MULT_25'};
M_.endo_names(109) = {'MULT_26'};
M_.endo_names_tex(109) = {'MULT\_26'};
M_.endo_names_long(109) = {'MULT_26'};
M_.endo_names(110) = {'MULT_27'};
M_.endo_names_tex(110) = {'MULT\_27'};
M_.endo_names_long(110) = {'MULT_27'};
M_.endo_names(111) = {'MULT_28'};
M_.endo_names_tex(111) = {'MULT\_28'};
M_.endo_names_long(111) = {'MULT_28'};
M_.endo_names(112) = {'MULT_29'};
M_.endo_names_tex(112) = {'MULT\_29'};
M_.endo_names_long(112) = {'MULT_29'};
M_.endo_names(113) = {'MULT_30'};
M_.endo_names_tex(113) = {'MULT\_30'};
M_.endo_names_long(113) = {'MULT_30'};
M_.endo_names(114) = {'MULT_31'};
M_.endo_names_tex(114) = {'MULT\_31'};
M_.endo_names_long(114) = {'MULT_31'};
M_.endo_names(115) = {'MULT_32'};
M_.endo_names_tex(115) = {'MULT\_32'};
M_.endo_names_long(115) = {'MULT_32'};
M_.endo_names(116) = {'MULT_33'};
M_.endo_names_tex(116) = {'MULT\_33'};
M_.endo_names_long(116) = {'MULT_33'};
M_.endo_names(117) = {'MULT_34'};
M_.endo_names_tex(117) = {'MULT\_34'};
M_.endo_names_long(117) = {'MULT_34'};
M_.endo_names(118) = {'MULT_35'};
M_.endo_names_tex(118) = {'MULT\_35'};
M_.endo_names_long(118) = {'MULT_35'};
M_.endo_names(119) = {'MULT_36'};
M_.endo_names_tex(119) = {'MULT\_36'};
M_.endo_names_long(119) = {'MULT_36'};
M_.endo_names(120) = {'MULT_37'};
M_.endo_names_tex(120) = {'MULT\_37'};
M_.endo_names_long(120) = {'MULT_37'};
M_.endo_names(121) = {'MULT_38'};
M_.endo_names_tex(121) = {'MULT\_38'};
M_.endo_names_long(121) = {'MULT_38'};
M_.endo_names(122) = {'MULT_39'};
M_.endo_names_tex(122) = {'MULT\_39'};
M_.endo_names_long(122) = {'MULT_39'};
M_.endo_names(123) = {'MULT_40'};
M_.endo_names_tex(123) = {'MULT\_40'};
M_.endo_names_long(123) = {'MULT_40'};
M_.endo_names(124) = {'MULT_41'};
M_.endo_names_tex(124) = {'MULT\_41'};
M_.endo_names_long(124) = {'MULT_41'};
M_.endo_names(125) = {'MULT_42'};
M_.endo_names_tex(125) = {'MULT\_42'};
M_.endo_names_long(125) = {'MULT_42'};
M_.endo_names(126) = {'MULT_43'};
M_.endo_names_tex(126) = {'MULT\_43'};
M_.endo_names_long(126) = {'MULT_43'};
M_.endo_names(127) = {'MULT_44'};
M_.endo_names_tex(127) = {'MULT\_44'};
M_.endo_names_long(127) = {'MULT_44'};
M_.endo_names(128) = {'MULT_45'};
M_.endo_names_tex(128) = {'MULT\_45'};
M_.endo_names_long(128) = {'MULT_45'};
M_.endo_names(129) = {'MULT_46'};
M_.endo_names_tex(129) = {'MULT\_46'};
M_.endo_names_long(129) = {'MULT_46'};
M_.endo_names(130) = {'MULT_47'};
M_.endo_names_tex(130) = {'MULT\_47'};
M_.endo_names_long(130) = {'MULT_47'};
M_.endo_names(131) = {'MULT_48'};
M_.endo_names_tex(131) = {'MULT\_48'};
M_.endo_names_long(131) = {'MULT_48'};
M_.endo_names(132) = {'MULT_49'};
M_.endo_names_tex(132) = {'MULT\_49'};
M_.endo_names_long(132) = {'MULT_49'};
M_.endo_names(133) = {'MULT_50'};
M_.endo_names_tex(133) = {'MULT\_50'};
M_.endo_names_long(133) = {'MULT_50'};
M_.endo_names(134) = {'MULT_51'};
M_.endo_names_tex(134) = {'MULT\_51'};
M_.endo_names_long(134) = {'MULT_51'};
M_.endo_names(135) = {'MULT_52'};
M_.endo_names_tex(135) = {'MULT\_52'};
M_.endo_names_long(135) = {'MULT_52'};
M_.endo_names(136) = {'MULT_53'};
M_.endo_names_tex(136) = {'MULT\_53'};
M_.endo_names_long(136) = {'MULT_53'};
M_.endo_names(137) = {'MULT_54'};
M_.endo_names_tex(137) = {'MULT\_54'};
M_.endo_names_long(137) = {'MULT_54'};
M_.endo_names(138) = {'MULT_55'};
M_.endo_names_tex(138) = {'MULT\_55'};
M_.endo_names_long(138) = {'MULT_55'};
M_.endo_names(139) = {'MULT_56'};
M_.endo_names_tex(139) = {'MULT\_56'};
M_.endo_names_long(139) = {'MULT_56'};
M_.endo_names(140) = {'MULT_57'};
M_.endo_names_tex(140) = {'MULT\_57'};
M_.endo_names_long(140) = {'MULT_57'};
M_.endo_names(141) = {'MULT_58'};
M_.endo_names_tex(141) = {'MULT\_58'};
M_.endo_names_long(141) = {'MULT_58'};
M_.endo_names(142) = {'MULT_59'};
M_.endo_names_tex(142) = {'MULT\_59'};
M_.endo_names_long(142) = {'MULT_59'};
M_.endo_names(143) = {'MULT_60'};
M_.endo_names_tex(143) = {'MULT\_60'};
M_.endo_names_long(143) = {'MULT_60'};
M_.endo_names(144) = {'MULT_61'};
M_.endo_names_tex(144) = {'MULT\_61'};
M_.endo_names_long(144) = {'MULT_61'};
M_.endo_names(145) = {'MULT_62'};
M_.endo_names_tex(145) = {'MULT\_62'};
M_.endo_names_long(145) = {'MULT_62'};
M_.endo_names(146) = {'MULT_63'};
M_.endo_names_tex(146) = {'MULT\_63'};
M_.endo_names_long(146) = {'MULT_63'};
M_.endo_names(147) = {'MULT_64'};
M_.endo_names_tex(147) = {'MULT\_64'};
M_.endo_names_long(147) = {'MULT_64'};
M_.endo_names(148) = {'MULT_65'};
M_.endo_names_tex(148) = {'MULT\_65'};
M_.endo_names_long(148) = {'MULT_65'};
M_.endo_names(149) = {'MULT_66'};
M_.endo_names_tex(149) = {'MULT\_66'};
M_.endo_names_long(149) = {'MULT_66'};
M_.endo_names(150) = {'MULT_67'};
M_.endo_names_tex(150) = {'MULT\_67'};
M_.endo_names_long(150) = {'MULT_67'};
M_.endo_names(151) = {'MULT_68'};
M_.endo_names_tex(151) = {'MULT\_68'};
M_.endo_names_long(151) = {'MULT_68'};
M_.endo_names(152) = {'MULT_69'};
M_.endo_names_tex(152) = {'MULT\_69'};
M_.endo_names_long(152) = {'MULT_69'};
M_.endo_names(153) = {'MULT_70'};
M_.endo_names_tex(153) = {'MULT\_70'};
M_.endo_names_long(153) = {'MULT_70'};
M_.endo_names(154) = {'MULT_71'};
M_.endo_names_tex(154) = {'MULT\_71'};
M_.endo_names_long(154) = {'MULT_71'};
M_.endo_names(155) = {'MULT_72'};
M_.endo_names_tex(155) = {'MULT\_72'};
M_.endo_names_long(155) = {'MULT_72'};
M_.endo_names(156) = {'MULT_73'};
M_.endo_names_tex(156) = {'MULT\_73'};
M_.endo_names_long(156) = {'MULT_73'};
M_.endo_names(157) = {'MULT_74'};
M_.endo_names_tex(157) = {'MULT\_74'};
M_.endo_names_long(157) = {'MULT_74'};
M_.endo_names(158) = {'MULT_75'};
M_.endo_names_tex(158) = {'MULT\_75'};
M_.endo_names_long(158) = {'MULT_75'};
M_.endo_names(159) = {'MULT_76'};
M_.endo_names_tex(159) = {'MULT\_76'};
M_.endo_names_long(159) = {'MULT_76'};
M_.endo_names(160) = {'MULT_77'};
M_.endo_names_tex(160) = {'MULT\_77'};
M_.endo_names_long(160) = {'MULT_77'};
M_.endo_names(161) = {'MULT_78'};
M_.endo_names_tex(161) = {'MULT\_78'};
M_.endo_names_long(161) = {'MULT_78'};
M_.endo_names(162) = {'MULT_79'};
M_.endo_names_tex(162) = {'MULT\_79'};
M_.endo_names_long(162) = {'MULT_79'};
M_.endo_names(163) = {'MULT_80'};
M_.endo_names_tex(163) = {'MULT\_80'};
M_.endo_names_long(163) = {'MULT_80'};
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
M_.param_names(30) = {'RHOG'};
M_.param_names_tex(30) = {'RHOG'};
M_.param_names_long(30) = {'RHOG'};
M_.param_names(31) = {'RHOA'};
M_.param_names_tex(31) = {'RHOA'};
M_.param_names_long(31) = {'RHOA'};
M_.param_names(32) = {'optimal_policy_discount_factor'};
M_.param_names_tex(32) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(32) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 163;
M_.param_nbr = 32;
M_.orig_endo_nbr = 83;
M_.aux_vars(1).endo_index = 84;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 85;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 86;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 87;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 88;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.aux_vars(6).endo_index = 89;
M_.aux_vars(6).type = 6;
M_.aux_vars(6).eq_nbr = 6;
M_.aux_vars(7).endo_index = 90;
M_.aux_vars(7).type = 6;
M_.aux_vars(7).eq_nbr = 7;
M_.aux_vars(8).endo_index = 91;
M_.aux_vars(8).type = 6;
M_.aux_vars(8).eq_nbr = 8;
M_.aux_vars(9).endo_index = 92;
M_.aux_vars(9).type = 6;
M_.aux_vars(9).eq_nbr = 9;
M_.aux_vars(10).endo_index = 93;
M_.aux_vars(10).type = 6;
M_.aux_vars(10).eq_nbr = 10;
M_.aux_vars(11).endo_index = 94;
M_.aux_vars(11).type = 6;
M_.aux_vars(11).eq_nbr = 11;
M_.aux_vars(12).endo_index = 95;
M_.aux_vars(12).type = 6;
M_.aux_vars(12).eq_nbr = 12;
M_.aux_vars(13).endo_index = 96;
M_.aux_vars(13).type = 6;
M_.aux_vars(13).eq_nbr = 13;
M_.aux_vars(14).endo_index = 97;
M_.aux_vars(14).type = 6;
M_.aux_vars(14).eq_nbr = 14;
M_.aux_vars(15).endo_index = 98;
M_.aux_vars(15).type = 6;
M_.aux_vars(15).eq_nbr = 15;
M_.aux_vars(16).endo_index = 99;
M_.aux_vars(16).type = 6;
M_.aux_vars(16).eq_nbr = 16;
M_.aux_vars(17).endo_index = 100;
M_.aux_vars(17).type = 6;
M_.aux_vars(17).eq_nbr = 17;
M_.aux_vars(18).endo_index = 101;
M_.aux_vars(18).type = 6;
M_.aux_vars(18).eq_nbr = 18;
M_.aux_vars(19).endo_index = 102;
M_.aux_vars(19).type = 6;
M_.aux_vars(19).eq_nbr = 19;
M_.aux_vars(20).endo_index = 103;
M_.aux_vars(20).type = 6;
M_.aux_vars(20).eq_nbr = 20;
M_.aux_vars(21).endo_index = 104;
M_.aux_vars(21).type = 6;
M_.aux_vars(21).eq_nbr = 21;
M_.aux_vars(22).endo_index = 105;
M_.aux_vars(22).type = 6;
M_.aux_vars(22).eq_nbr = 22;
M_.aux_vars(23).endo_index = 106;
M_.aux_vars(23).type = 6;
M_.aux_vars(23).eq_nbr = 23;
M_.aux_vars(24).endo_index = 107;
M_.aux_vars(24).type = 6;
M_.aux_vars(24).eq_nbr = 24;
M_.aux_vars(25).endo_index = 108;
M_.aux_vars(25).type = 6;
M_.aux_vars(25).eq_nbr = 25;
M_.aux_vars(26).endo_index = 109;
M_.aux_vars(26).type = 6;
M_.aux_vars(26).eq_nbr = 26;
M_.aux_vars(27).endo_index = 110;
M_.aux_vars(27).type = 6;
M_.aux_vars(27).eq_nbr = 27;
M_.aux_vars(28).endo_index = 111;
M_.aux_vars(28).type = 6;
M_.aux_vars(28).eq_nbr = 28;
M_.aux_vars(29).endo_index = 112;
M_.aux_vars(29).type = 6;
M_.aux_vars(29).eq_nbr = 29;
M_.aux_vars(30).endo_index = 113;
M_.aux_vars(30).type = 6;
M_.aux_vars(30).eq_nbr = 30;
M_.aux_vars(31).endo_index = 114;
M_.aux_vars(31).type = 6;
M_.aux_vars(31).eq_nbr = 31;
M_.aux_vars(32).endo_index = 115;
M_.aux_vars(32).type = 6;
M_.aux_vars(32).eq_nbr = 32;
M_.aux_vars(33).endo_index = 116;
M_.aux_vars(33).type = 6;
M_.aux_vars(33).eq_nbr = 33;
M_.aux_vars(34).endo_index = 117;
M_.aux_vars(34).type = 6;
M_.aux_vars(34).eq_nbr = 34;
M_.aux_vars(35).endo_index = 118;
M_.aux_vars(35).type = 6;
M_.aux_vars(35).eq_nbr = 35;
M_.aux_vars(36).endo_index = 119;
M_.aux_vars(36).type = 6;
M_.aux_vars(36).eq_nbr = 36;
M_.aux_vars(37).endo_index = 120;
M_.aux_vars(37).type = 6;
M_.aux_vars(37).eq_nbr = 37;
M_.aux_vars(38).endo_index = 121;
M_.aux_vars(38).type = 6;
M_.aux_vars(38).eq_nbr = 38;
M_.aux_vars(39).endo_index = 122;
M_.aux_vars(39).type = 6;
M_.aux_vars(39).eq_nbr = 39;
M_.aux_vars(40).endo_index = 123;
M_.aux_vars(40).type = 6;
M_.aux_vars(40).eq_nbr = 40;
M_.aux_vars(41).endo_index = 124;
M_.aux_vars(41).type = 6;
M_.aux_vars(41).eq_nbr = 41;
M_.aux_vars(42).endo_index = 125;
M_.aux_vars(42).type = 6;
M_.aux_vars(42).eq_nbr = 42;
M_.aux_vars(43).endo_index = 126;
M_.aux_vars(43).type = 6;
M_.aux_vars(43).eq_nbr = 43;
M_.aux_vars(44).endo_index = 127;
M_.aux_vars(44).type = 6;
M_.aux_vars(44).eq_nbr = 44;
M_.aux_vars(45).endo_index = 128;
M_.aux_vars(45).type = 6;
M_.aux_vars(45).eq_nbr = 45;
M_.aux_vars(46).endo_index = 129;
M_.aux_vars(46).type = 6;
M_.aux_vars(46).eq_nbr = 46;
M_.aux_vars(47).endo_index = 130;
M_.aux_vars(47).type = 6;
M_.aux_vars(47).eq_nbr = 47;
M_.aux_vars(48).endo_index = 131;
M_.aux_vars(48).type = 6;
M_.aux_vars(48).eq_nbr = 48;
M_.aux_vars(49).endo_index = 132;
M_.aux_vars(49).type = 6;
M_.aux_vars(49).eq_nbr = 49;
M_.aux_vars(50).endo_index = 133;
M_.aux_vars(50).type = 6;
M_.aux_vars(50).eq_nbr = 50;
M_.aux_vars(51).endo_index = 134;
M_.aux_vars(51).type = 6;
M_.aux_vars(51).eq_nbr = 51;
M_.aux_vars(52).endo_index = 135;
M_.aux_vars(52).type = 6;
M_.aux_vars(52).eq_nbr = 52;
M_.aux_vars(53).endo_index = 136;
M_.aux_vars(53).type = 6;
M_.aux_vars(53).eq_nbr = 53;
M_.aux_vars(54).endo_index = 137;
M_.aux_vars(54).type = 6;
M_.aux_vars(54).eq_nbr = 54;
M_.aux_vars(55).endo_index = 138;
M_.aux_vars(55).type = 6;
M_.aux_vars(55).eq_nbr = 55;
M_.aux_vars(56).endo_index = 139;
M_.aux_vars(56).type = 6;
M_.aux_vars(56).eq_nbr = 56;
M_.aux_vars(57).endo_index = 140;
M_.aux_vars(57).type = 6;
M_.aux_vars(57).eq_nbr = 57;
M_.aux_vars(58).endo_index = 141;
M_.aux_vars(58).type = 6;
M_.aux_vars(58).eq_nbr = 58;
M_.aux_vars(59).endo_index = 142;
M_.aux_vars(59).type = 6;
M_.aux_vars(59).eq_nbr = 59;
M_.aux_vars(60).endo_index = 143;
M_.aux_vars(60).type = 6;
M_.aux_vars(60).eq_nbr = 60;
M_.aux_vars(61).endo_index = 144;
M_.aux_vars(61).type = 6;
M_.aux_vars(61).eq_nbr = 61;
M_.aux_vars(62).endo_index = 145;
M_.aux_vars(62).type = 6;
M_.aux_vars(62).eq_nbr = 62;
M_.aux_vars(63).endo_index = 146;
M_.aux_vars(63).type = 6;
M_.aux_vars(63).eq_nbr = 63;
M_.aux_vars(64).endo_index = 147;
M_.aux_vars(64).type = 6;
M_.aux_vars(64).eq_nbr = 64;
M_.aux_vars(65).endo_index = 148;
M_.aux_vars(65).type = 6;
M_.aux_vars(65).eq_nbr = 65;
M_.aux_vars(66).endo_index = 149;
M_.aux_vars(66).type = 6;
M_.aux_vars(66).eq_nbr = 66;
M_.aux_vars(67).endo_index = 150;
M_.aux_vars(67).type = 6;
M_.aux_vars(67).eq_nbr = 67;
M_.aux_vars(68).endo_index = 151;
M_.aux_vars(68).type = 6;
M_.aux_vars(68).eq_nbr = 68;
M_.aux_vars(69).endo_index = 152;
M_.aux_vars(69).type = 6;
M_.aux_vars(69).eq_nbr = 69;
M_.aux_vars(70).endo_index = 153;
M_.aux_vars(70).type = 6;
M_.aux_vars(70).eq_nbr = 70;
M_.aux_vars(71).endo_index = 154;
M_.aux_vars(71).type = 6;
M_.aux_vars(71).eq_nbr = 71;
M_.aux_vars(72).endo_index = 155;
M_.aux_vars(72).type = 6;
M_.aux_vars(72).eq_nbr = 72;
M_.aux_vars(73).endo_index = 156;
M_.aux_vars(73).type = 6;
M_.aux_vars(73).eq_nbr = 73;
M_.aux_vars(74).endo_index = 157;
M_.aux_vars(74).type = 6;
M_.aux_vars(74).eq_nbr = 74;
M_.aux_vars(75).endo_index = 158;
M_.aux_vars(75).type = 6;
M_.aux_vars(75).eq_nbr = 75;
M_.aux_vars(76).endo_index = 159;
M_.aux_vars(76).type = 6;
M_.aux_vars(76).eq_nbr = 76;
M_.aux_vars(77).endo_index = 160;
M_.aux_vars(77).type = 6;
M_.aux_vars(77).eq_nbr = 77;
M_.aux_vars(78).endo_index = 161;
M_.aux_vars(78).type = 6;
M_.aux_vars(78).eq_nbr = 78;
M_.aux_vars(79).endo_index = 162;
M_.aux_vars(79).type = 6;
M_.aux_vars(79).eq_nbr = 79;
M_.aux_vars(80).endo_index = 163;
M_.aux_vars(80).type = 6;
M_.aux_vars(80).eq_nbr = 80;
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
M_.orig_eq_nbr = 80;
M_.eq_nbr = 163;
M_.ramsey_eq_nbr = 83;
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
 1 9 172;
 2 10 173;
 0 11 0;
 0 12 174;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 0;
 0 21 175;
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
 0 37 176;
 0 38 177;
 0 39 178;
 0 40 0;
 0 41 0;
 0 42 0;
 0 43 0;
 0 44 0;
 0 45 0;
 0 46 0;
 0 47 179;
 0 48 180;
 0 49 181;
 0 50 0;
 0 51 0;
 0 52 0;
 0 53 0;
 0 54 0;
 0 55 0;
 0 56 0;
 0 57 0;
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
 0 78 0;
 0 79 0;
 0 80 0;
 0 81 0;
 0 82 0;
 0 83 0;
 0 84 0;
 0 85 0;
 0 86 0;
 0 87 0;
 0 88 0;
 0 89 0;
 0 90 0;
 0 91 0;
 0 92 0;
 0 93 0;
 0 94 0;
 0 95 0;
 0 96 0;
 0 97 0;
 0 98 0;
 0 99 0;
 0 100 0;
 0 101 0;
 0 102 0;
 0 103 0;
 0 104 0;
 0 105 0;
 0 106 0;
 0 107 0;
 3 108 0;
 4 109 0;
 0 110 0;
 0 111 0;
 0 112 0;
 0 113 0;
 0 114 0;
 0 115 0;
 0 116 0;
 5 117 0;
 6 118 0;
 7 119 0;
 8 120 0;
 0 121 0;
 0 122 0;
 0 123 0;
 0 124 0;
 0 125 0;
 0 126 0;
 0 127 0;
 0 128 0;
 0 129 0;
 0 130 0;
 0 131 0;
 0 132 0;
 0 133 0;
 0 134 0;
 0 135 0;
 0 136 0;
 0 137 0;
 0 138 0;
 0 139 0;
 0 140 0;
 0 141 0;
 0 142 0;
 0 143 0;
 0 144 0;
 0 145 0;
 0 146 0;
 0 147 0;
 0 148 0;
 0 149 0;
 0 150 0;
 0 151 0;
 0 152 0;
 0 153 0;
 0 154 0;
 0 155 0;
 0 156 0;
 0 157 0;
 0 158 0;
 0 159 0;
 0 160 0;
 0 161 0;
 0 162 0;
 0 163 0;
 0 164 0;
 0 165 0;
 0 166 0;
 0 167 0;
 0 168 0;
 0 169 182;
 0 170 183;
 0 171 0;]';
M_.nstatic = 145;
M_.nfwrd   = 10;
M_.npred   = 6;
M_.nboth   = 2;
M_.nsfwrd   = 12;
M_.nspred   = 8;
M_.ndynamic   = 18;
M_.dynamic_tmp_nbr = [7; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  84 , 'name' , 'Home natural marginal cost condition' ;
  85 , 'name' , 'Foreign natural marginal cost condition' ;
  86 , 'name' , 'Home natural good-market clearing condition' ;
  87 , 'name' , 'Foreign natural good-market clearing condition' ;
  88 , 'name' , 'Natural IRS condition' ;
  89 , 'name' , 'Home natural government spending condition' ;
  90 , 'name' , 'Foreign natural government spending condition' ;
  91 , 'name' , 'Natural LOP' ;
  92 , 'name' , 'Home natural consumption of Home-made goods' ;
  93 , 'name' , 'Home natural consumption of Foreign-made goods' ;
  94 , 'name' , 'Foreign natural consumption of Home-made goods' ;
  95 , 'name' , 'Foreign natural consumption of Foreign-made goods' ;
  96 , 'name' , 'Home natural production function' ;
  97 , 'name' , 'Foreign natural production function' ;
  98 , 'name' , 'Home natural fiscal stance definition' ;
  99 , 'name' , 'Foreign natural fiscal stance definition' ;
  100 , 'name' , 'Home natural rate' ;
  101 , 'name' , 'Foreign natural rate' ;
  102 , 'name' , 'Union natural output' ;
  103 , 'name' , 'Union natural government spending' ;
  104 , 'name' , 'Union natural consumption' ;
  105 , 'name' , 'Union natural rate' ;
  106 , 'name' , 'c_H_nat_cu' ;
  107 , 'name' , 'c_F_nat_cu' ;
  108 , 'name' , 'f_nat_cu' ;
  109 , 'name' , 'Home New Keynesian Phillips Curve' ;
  110 , 'name' , 'Foreign New Keynesian Phillips Curve' ;
  111 , 'name' , 'Home Dynamic IS Curve' ;
  112 , 'name' , 'Foreign Dynamic IS Curve' ;
  113 , 'name' , 'IRS condition' ;
  114 , 'name' , 'LOP' ;
  115 , 'name' , 'Home production function' ;
  116 , 'name' , 'Foreign production function' ;
  117 , 'name' , 'Home good-market clearing condition' ;
  118 , 'name' , 'Foreign good-market clearing condition' ;
  119 , 'name' , 'Home fiscal stance definition' ;
  120 , 'name' , 'Foreign fiscal stance definition' ;
  121 , 'name' , 'Home consumption of Home-made goods' ;
  122 , 'name' , 'Home consumption of Foreign-made goods' ;
  123 , 'name' , 'Foreign consumption of Home-made goods' ;
  124 , 'name' , 'Foreign consumption of Foreign-made goods' ;
  125 , 'name' , 'Home interest rate' ;
  126 , 'name' , 'Foreign interest rate' ;
  127 , 'name' , 'Union inflation' ;
  128 , 'name' , 'Union output' ;
  129 , 'name' , 'Union government spending' ;
  130 , 'name' , 'Union consumption' ;
  131 , 'name' , 'c_H_cu' ;
  132 , 'name' , 'c_F_cu' ;
  133 , 'name' , 'f_cu' ;
  134 , 'name' , 'Home output gap definition' ;
  135 , 'name' , 'Home governmpent spending gap definition' ;
  136 , 'name' , 'Home consumption gap definition' ;
  137 , 'name' , 'Home consumption of Home_made goods gap definition' ;
  138 , 'name' , 'Home consumption of Foreign_made goods gap definition' ;
  139 , 'name' , 'Foreign labor gap definition' ;
  140 , 'name' , 'Home fiscal stance gap definition' ;
  141 , 'name' , 'Home terms of trade gap definition' ;
  142 , 'name' , 'Home interest rate gap definition' ;
  143 , 'name' , 'Foreign output gap definition' ;
  144 , 'name' , 'Foreign governmpent spending gap definition' ;
  145 , 'name' , 'Foreign consumption gap definition' ;
  146 , 'name' , 'Foreign consumption of Home_made goods gap definition' ;
  147 , 'name' , 'Foreign consumption of Foreign_made goods gap definition' ;
  148 , 'name' , 'Foreign labor gap definition' ;
  149 , 'name' , 'Foreign fiscal stance gap definition' ;
  150 , 'name' , 'Foreign terms of trade gap definition' ;
  151 , 'name' , 'Foreign interest rate gap definition' ;
  152 , 'name' , 'Union output gap definition' ;
  153 , 'name' , 'Union governmpent spending gap definition' ;
  154 , 'name' , 'Union consumption gap definition' ;
  155 , 'name' , 'Union interest rate gap definition' ;
  156 , 'name' , 'g_gap_r' ;
  157 , 'name' , 'n_gap_cu' ;
  158 , 'name' , 'f_gap_cu' ;
  159 , 'name' , 'c_H_gap_cu' ;
  160 , 'name' , 'c_F_gap_cu' ;
  161 , 'name' , 'a' ;
  162 , 'name' , 'a_starr' ;
  163 , 'name' , 'a_cu' ;
};
M_.mapping.a.eqidx = [84 96 100 109 115 161 163 ];
M_.mapping.a_starr.eqidx = [85 97 101 110 116 162 163 ];
M_.mapping.a_cu.eqidx = [163 ];
M_.mapping.eps_a.eqidx = [161 ];
M_.mapping.eps_a_starr.eqidx = [162 ];
M_.mapping.y_nat.eqidx = [84 86 88 96 98 100 102 134 ];
M_.mapping.g_nat.eqidx = [86 88 89 98 103 135 ];
M_.mapping.c_nat.eqidx = [84 86 89 92 93 104 136 ];
M_.mapping.c_H_nat.eqidx = [92 106 137 ];
M_.mapping.c_F_nat.eqidx = [93 107 138 ];
M_.mapping.n_nat.eqidx = [96 139 ];
M_.mapping.f_nat.eqidx = [98 108 140 ];
M_.mapping.s_nat.eqidx = [84 85 86 87 88 89 90 91 92 93 94 95 141 ];
M_.mapping.r_nat.eqidx = [100 105 142 ];
M_.mapping.y_nat_starr.eqidx = [85 87 88 97 99 101 102 143 ];
M_.mapping.g_nat_starr.eqidx = [87 88 90 99 103 144 ];
M_.mapping.c_nat_starr.eqidx = [85 87 90 94 95 104 145 ];
M_.mapping.c_H_nat_starr.eqidx = [94 106 146 ];
M_.mapping.c_F_nat_starr.eqidx = [95 107 147 ];
M_.mapping.n_nat_starr.eqidx = [97 148 ];
M_.mapping.f_nat_starr.eqidx = [99 108 149 ];
M_.mapping.s_nat_starr.eqidx = [91 150 ];
M_.mapping.r_nat_starr.eqidx = [101 105 151 ];
M_.mapping.y_nat_cu.eqidx = [102 ];
M_.mapping.g_nat_cu.eqidx = [103 ];
M_.mapping.c_nat_cu.eqidx = [104 ];
M_.mapping.c_H_nat_cu.eqidx = [106 ];
M_.mapping.c_F_nat_cu.eqidx = [107 ];
M_.mapping.r_nat_cu.eqidx = [105 155 ];
M_.mapping.f_nat_cu.eqidx = [108 ];
M_.mapping.y.eqidx = [109 110 111 112 113 115 117 119 128 134 ];
M_.mapping.pie.eqidx = [30 109 111 127 ];
M_.mapping.g.eqidx = [109 110 111 112 113 117 119 129 135 ];
M_.mapping.n.eqidx = [115 139 ];
M_.mapping.c.eqidx = [117 121 122 130 136 ];
M_.mapping.c_H.eqidx = [121 131 137 ];
M_.mapping.c_F.eqidx = [122 132 138 ];
M_.mapping.f.eqidx = [119 133 140 ];
M_.mapping.s.eqidx = [113 114 117 118 121 122 123 124 141 ];
M_.mapping.ii.eqidx = [111 125 142 155 ];
M_.mapping.y_starr.eqidx = [109 110 111 112 113 116 118 120 128 143 ];
M_.mapping.pie_starr.eqidx = [40 110 112 127 ];
M_.mapping.g_starr.eqidx = [109 110 111 112 113 118 120 129 144 ];
M_.mapping.n_starr.eqidx = [116 148 ];
M_.mapping.c_starr.eqidx = [118 123 124 130 145 ];
M_.mapping.c_H_starr.eqidx = [123 131 146 ];
M_.mapping.c_F_starr.eqidx = [124 132 147 ];
M_.mapping.f_starr.eqidx = [120 133 149 ];
M_.mapping.ii_starr.eqidx = [112 126 151 ];
M_.mapping.s_starr.eqidx = [114 150 ];
M_.mapping.y_cu.eqidx = [128 ];
M_.mapping.g_cu.eqidx = [129 ];
M_.mapping.c_cu.eqidx = [130 ];
M_.mapping.c_H_cu.eqidx = [131 ];
M_.mapping.c_F_cu.eqidx = [132 ];
M_.mapping.ii_cu.eqidx = [125 126 ];
M_.mapping.pie_cu.eqidx = [127 ];
M_.mapping.f_cu.eqidx = [133 ];
M_.mapping.y_gap.eqidx = [134 152 ];
M_.mapping.g_gap.eqidx = [58 64 135 153 156 ];
M_.mapping.c_gap.eqidx = [136 154 ];
M_.mapping.c_H_gap.eqidx = [137 159 ];
M_.mapping.c_F_gap.eqidx = [138 160 ];
M_.mapping.f_gap.eqidx = [140 158 ];
M_.mapping.n_gap.eqidx = [139 157 ];
M_.mapping.s_gap.eqidx = [58 64 67 141 ];
M_.mapping.ii_gap.eqidx = [142 ];
M_.mapping.y_gap_starr.eqidx = [143 152 ];
M_.mapping.g_gap_starr.eqidx = [64 67 144 153 156 ];
M_.mapping.c_gap_starr.eqidx = [145 154 ];
M_.mapping.c_H_gap_starr.eqidx = [146 159 ];
M_.mapping.c_F_gap_starr.eqidx = [147 160 ];
M_.mapping.f_gap_starr.eqidx = [149 158 ];
M_.mapping.n_gap_starr.eqidx = [148 157 ];
M_.mapping.s_gap_starr.eqidx = [150 ];
M_.mapping.ii_gap_starr.eqidx = [151 ];
M_.mapping.y_gap_cu.eqidx = [152 ];
M_.mapping.g_gap_cu.eqidx = [77 153 ];
M_.mapping.c_gap_cu.eqidx = [76 77 154 ];
M_.mapping.c_H_gap_cu.eqidx = [159 ];
M_.mapping.c_F_gap_cu.eqidx = [160 ];
M_.mapping.ii_gap_cu.eqidx = [155 ];
M_.mapping.n_gap_cu.eqidx = [157 ];
M_.mapping.f_gap_cu.eqidx = [158 ];
M_.mapping.g_gap_r.eqidx = [156 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 100 101 109 110 111 112 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(163, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(32, 1);
M_.endo_trends = struct('deflator', cell(163, 1), 'log_deflator', cell(163, 1), 'growth_factor', cell(163, 1), 'log_growth_factor', cell(163, 1));
M_.NNZDerivatives = [554; 0; -1; ];
M_.static_tmp_nbr = [7; 0; 0; 0; ];
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
M_.params(8) = 0.4;
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
M_.params(12) = (1-M_.params(11))^M_.params(2);
CHI_C = M_.params(12);
M_.params(13) = M_.params(11)^M_.params(4);
CHI_G = M_.params(13);
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
M_.params(31) = 0.95;
RHOA = M_.params(31);
M_.params(30) = 0.92;
RHOG = M_.params(30);
M_.NNZDerivatives_objective = [7;12;0;];
M_.objective_tmp_nbr = [0; 0; 0; 0; ];
M_.params(32) = M_.params(1);
optimal_policy_discount_factor = M_.params(32);
options_.ramsey_policy = true;
options_.instruments = {'ii_cu';'g_gap';'g_gap_starr'};
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 200;
options_.nocorr = true;
options_.nodecomposition = true;
options_.nograph = true;
options_.nomoments = true;
options_.order = 2;
options_.irf_shocks = {'eps_a_starr'};
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
pol_name="RAMSEY - POP_WEIGHT"
calibration_name="h_"+h*100+" - ALPHA_bar_"+ALPHA_bar*100+" - THETA_"+THETA*100+" - DELTA_"+DELTA*100
folder_name = "OUTPUT/"+calibration_name+"/"+"POP_WEIGHT/"+"RAMSEY"
mkdir(folder_name)
T_irf=options_.irf
Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1-DELTA)*(SIGMA+(1-DELTA)*PHI)*c_gap_cu_eps_a_starr.^2 + h*(1-h)*(1-DELTA)*(1+PHI*(1-DELTA))*s_gap_eps_a_starr.^2 + h*DELTA*(GAMMA+PHI*DELTA)*g_gap_eps_a_starr.^2 + (1-h)*DELTA*(GAMMA+PHI*DELTA)*g_gap_starr_eps_a_starr.^2 + h*EPSILON/LAMBDA*pie_eps_a_starr.^2 + (1-h)*EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2 + 2*(1-DELTA)*PHI*c_gap_cu_eps_a_starr.*g_gap_cu_eps_a_starr + 2*h*(1-h)*(1-DELTA)*DELTA*PHI*s_gap_eps_a_starr.*g_gap_r_eps_a_starr));
writematrix(Loss, folder_name+"/Loss_benchmark.txt");
T_plot=100
t = 1:1:T_plot;
zeroline = ones(T_plot,1)*0;
figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); 
Home=plot(t,a_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,a_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
Union=plot(t,a_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Union','Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Productivity : $$a_t$$, $$a_t^*$$ and $$a_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');
subplot(3,3,2); 
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$, $$\tilde c_t^*$$ and $$\tilde c_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,3); 
plot(t,n_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,n_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Labor Gap : $$\tilde n_t$$, $$\tilde n_t^*$$ and $$\tilde n_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,4); 
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$, $$\tilde g_t^*$$ and $$\tilde g_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,5); 
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$, $$\tilde y_t^*$$ and $$\tilde y_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,6); 
plot(t,f_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Fiscal Stance Gap : $$\tilde f_t$$, $$\tilde f_t^*$$ and $$\tilde f_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,7); 
plot(t,pie_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,pie_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,pie_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Producer Price Inflation : $$\pi_{H,t}$$, $$\pi_{F,t}^*$$ and $$\pi_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,8); 
plot(t,ii_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Interest Rate Gap : $$\tilde i_t$$, $$\tilde i_t^*$$ and $$\tilde i_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,9); 
plot(t,s_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,s_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Terms of Trade Gap : $$\tilde s_t$$ and $$\tilde s_t^*$$','interpreter','latex','FontSize',10);
annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)],'FontSize',10)
figure_name = "IRFs_Summmary"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")
figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); 
Home=plot(t,c_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,c_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
Union=plot(t,c_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$, $$\hat c_t^*$$ and $$\hat c_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');
subplot(3,3,4); 
plot(t,c_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$, $$\hat{\bar c}_t^*$$ and $$\hat{bar c}_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,7); 
plot(t,c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$, $$\tilde c_t^*$$ and $$\tilde c_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,2); 
plot(t,c_H_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
plot(t,c_H_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,c_H_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption $$\textit{Home}$$-made : $$\hat c_{H,t}$$, $$\hat c_{H,t}^*$$ and $$\hat c_{H,t}^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,5); 
plot(t,c_H_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_H_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_H_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption $$\textit{Home}$$-made : $$\hat{\bar c}_{H,t}$$, $$\hat{\bar c}_{H,t}^*$$ and $$\hat{bar c}_{H,t}^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,8); 
plot(t,c_H_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_H_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_H_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap $$\textit{Home}$$-made : $$\tilde c_{H,t}$$, $$\tilde c_{H,t}^*$$ and $$\tilde c_{H,t}^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,3); 
plot(t,c_F_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
plot(t,c_F_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,c_F_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption $$\textit{Foreign}$$-made : $$\hat c_{F,t}$$, $$\hat c_{F,t}^*$$ and $$\hat c_{F,t}^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,6); 
plot(t,c_F_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_F_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_F_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption $$\textit{Foreign}$$-made : $$\hat{\bar c}_{F,t}$$, $$\hat{\bar c}_{F,t}^*$$ and $$\hat{bar c}_{F,t}^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,9); 
plot(t,c_F_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_F_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,c_F_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap $$\textit{Foreign}$$-made : $$\tilde c_{F,t}$$, $$\tilde c_{F,t}^*$$ and $$\tilde c_{F,t}^{cu}$$','interpreter','latex','FontSize',10);
annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)],'FontSize',10)
figure_name = "IRFs_Detail_c_cH_cF"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")
figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); 
Home=plot(t,g_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Foreign=plot(t,g_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Union=plot(t,g_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$, $$\hat g_t^*$$ and $$\hat g_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');
subplot(3,3,4); 
plot(t,g_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$, $$\hat{\bar g}_t^*$$ and $$\hat{\bar g}_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,7); 
plot(t,g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,g_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$, $$\tilde g_t^*$$ and $$\tilde g_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,2); 
plot(t,y_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$, $$\hat y_t^*$$ and $$\hat y_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');
subplot(3,3,5); 
plot(t,y_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$, $$\hat{\bar y}_t^*$$ and $$\hat{\bar y}_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,8); 
plot(t,y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,y_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Output Gap : $$\tilde y_t$$, $$\tilde y_t^*$$ and $$\tilde y_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,3); 
plot(t,f_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Fiscal stance : $$\hat f_t$$, $$\hat f_t^*$$ and $$\hat f_t^{cu}$$','interpreter','latex','FontSize',10);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');
subplot(3,3,6); 
plot(t,f_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Fiscal stance : $$\hat{\bar f}_t$$, $$\hat{\bar f}_t^*$$ and $$\hat{\bar f}_t^{cu}$$','interpreter','latex','FontSize',10);
subplot(3,3,9); 
plot(t,f_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,f_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Fiscal stance Gap : $$\tilde f_t$$, $$\tilde f_t^*$$ and $$\tilde f_t^{cu}$$','interpreter','latex','FontSize',10);
annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)],'FontSize',10)
figure_name = "IRFs_Detail_g_y_f"
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
annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',[char(strrep(strrep(pol_name," - ",", "),"_"," ")) ', $$h$$ = ' num2str(h) ', $$\bar{\alpha}$$ =' num2str(ALPHA_bar) ', $$\theta$$ = ' num2str(THETA)],'FontSize',10)
figure_name = "n_y_c_g"
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")
figure('NumberTitle', 'off','visible','on')
subplot(3,1,1); 
Home=plot(t,ii_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,ii_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Interest rate : $$\hat i_t$$ and $$\hat i_t^*$$','interpreter','latex','FontSize',10);
legend([Home,Foreign],{'Home','Foreign'},'location','southeast');
subplot(3,1,2); 
plot(t,r_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,r_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Rate : $$\hat{\bar r}_t$$ and $$\hat{\bar r}_t^*$$','interpreter','latex','FontSize',10);
subplot(3,1,3); 
plot(t,ii_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,ii_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Interest Rate Gap : $$\tilde i_t$$ and $$\tilde i_t^*$$','interpreter','latex','FontSize',10);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'Model_Main_8_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_8_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_8_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_8_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_8_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_8_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'Model_Main_8_results.mat'], 'oo_recursive_', '-append');
end
disp('Note: 1 warning(s) encountered in the preprocessor')
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
