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
M_.fname = 'MOdel_main_5';
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
M_.endo_names = cell(141,1);
M_.endo_names_tex = cell(141,1);
M_.endo_names_long = cell(141,1);
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
M_.endo_names(73) = {'MULT_1'};
M_.endo_names_tex(73) = {'MULT\_1'};
M_.endo_names_long(73) = {'MULT_1'};
M_.endo_names(74) = {'MULT_2'};
M_.endo_names_tex(74) = {'MULT\_2'};
M_.endo_names_long(74) = {'MULT_2'};
M_.endo_names(75) = {'MULT_3'};
M_.endo_names_tex(75) = {'MULT\_3'};
M_.endo_names_long(75) = {'MULT_3'};
M_.endo_names(76) = {'MULT_4'};
M_.endo_names_tex(76) = {'MULT\_4'};
M_.endo_names_long(76) = {'MULT_4'};
M_.endo_names(77) = {'MULT_5'};
M_.endo_names_tex(77) = {'MULT\_5'};
M_.endo_names_long(77) = {'MULT_5'};
M_.endo_names(78) = {'MULT_6'};
M_.endo_names_tex(78) = {'MULT\_6'};
M_.endo_names_long(78) = {'MULT_6'};
M_.endo_names(79) = {'MULT_7'};
M_.endo_names_tex(79) = {'MULT\_7'};
M_.endo_names_long(79) = {'MULT_7'};
M_.endo_names(80) = {'MULT_8'};
M_.endo_names_tex(80) = {'MULT\_8'};
M_.endo_names_long(80) = {'MULT_8'};
M_.endo_names(81) = {'MULT_9'};
M_.endo_names_tex(81) = {'MULT\_9'};
M_.endo_names_long(81) = {'MULT_9'};
M_.endo_names(82) = {'MULT_10'};
M_.endo_names_tex(82) = {'MULT\_10'};
M_.endo_names_long(82) = {'MULT_10'};
M_.endo_names(83) = {'MULT_11'};
M_.endo_names_tex(83) = {'MULT\_11'};
M_.endo_names_long(83) = {'MULT_11'};
M_.endo_names(84) = {'MULT_12'};
M_.endo_names_tex(84) = {'MULT\_12'};
M_.endo_names_long(84) = {'MULT_12'};
M_.endo_names(85) = {'MULT_13'};
M_.endo_names_tex(85) = {'MULT\_13'};
M_.endo_names_long(85) = {'MULT_13'};
M_.endo_names(86) = {'MULT_14'};
M_.endo_names_tex(86) = {'MULT\_14'};
M_.endo_names_long(86) = {'MULT_14'};
M_.endo_names(87) = {'MULT_15'};
M_.endo_names_tex(87) = {'MULT\_15'};
M_.endo_names_long(87) = {'MULT_15'};
M_.endo_names(88) = {'MULT_16'};
M_.endo_names_tex(88) = {'MULT\_16'};
M_.endo_names_long(88) = {'MULT_16'};
M_.endo_names(89) = {'MULT_17'};
M_.endo_names_tex(89) = {'MULT\_17'};
M_.endo_names_long(89) = {'MULT_17'};
M_.endo_names(90) = {'MULT_18'};
M_.endo_names_tex(90) = {'MULT\_18'};
M_.endo_names_long(90) = {'MULT_18'};
M_.endo_names(91) = {'MULT_19'};
M_.endo_names_tex(91) = {'MULT\_19'};
M_.endo_names_long(91) = {'MULT_19'};
M_.endo_names(92) = {'MULT_20'};
M_.endo_names_tex(92) = {'MULT\_20'};
M_.endo_names_long(92) = {'MULT_20'};
M_.endo_names(93) = {'MULT_21'};
M_.endo_names_tex(93) = {'MULT\_21'};
M_.endo_names_long(93) = {'MULT_21'};
M_.endo_names(94) = {'MULT_22'};
M_.endo_names_tex(94) = {'MULT\_22'};
M_.endo_names_long(94) = {'MULT_22'};
M_.endo_names(95) = {'MULT_23'};
M_.endo_names_tex(95) = {'MULT\_23'};
M_.endo_names_long(95) = {'MULT_23'};
M_.endo_names(96) = {'MULT_24'};
M_.endo_names_tex(96) = {'MULT\_24'};
M_.endo_names_long(96) = {'MULT_24'};
M_.endo_names(97) = {'MULT_25'};
M_.endo_names_tex(97) = {'MULT\_25'};
M_.endo_names_long(97) = {'MULT_25'};
M_.endo_names(98) = {'MULT_26'};
M_.endo_names_tex(98) = {'MULT\_26'};
M_.endo_names_long(98) = {'MULT_26'};
M_.endo_names(99) = {'MULT_27'};
M_.endo_names_tex(99) = {'MULT\_27'};
M_.endo_names_long(99) = {'MULT_27'};
M_.endo_names(100) = {'MULT_28'};
M_.endo_names_tex(100) = {'MULT\_28'};
M_.endo_names_long(100) = {'MULT_28'};
M_.endo_names(101) = {'MULT_29'};
M_.endo_names_tex(101) = {'MULT\_29'};
M_.endo_names_long(101) = {'MULT_29'};
M_.endo_names(102) = {'MULT_30'};
M_.endo_names_tex(102) = {'MULT\_30'};
M_.endo_names_long(102) = {'MULT_30'};
M_.endo_names(103) = {'MULT_31'};
M_.endo_names_tex(103) = {'MULT\_31'};
M_.endo_names_long(103) = {'MULT_31'};
M_.endo_names(104) = {'MULT_32'};
M_.endo_names_tex(104) = {'MULT\_32'};
M_.endo_names_long(104) = {'MULT_32'};
M_.endo_names(105) = {'MULT_33'};
M_.endo_names_tex(105) = {'MULT\_33'};
M_.endo_names_long(105) = {'MULT_33'};
M_.endo_names(106) = {'MULT_34'};
M_.endo_names_tex(106) = {'MULT\_34'};
M_.endo_names_long(106) = {'MULT_34'};
M_.endo_names(107) = {'MULT_35'};
M_.endo_names_tex(107) = {'MULT\_35'};
M_.endo_names_long(107) = {'MULT_35'};
M_.endo_names(108) = {'MULT_36'};
M_.endo_names_tex(108) = {'MULT\_36'};
M_.endo_names_long(108) = {'MULT_36'};
M_.endo_names(109) = {'MULT_37'};
M_.endo_names_tex(109) = {'MULT\_37'};
M_.endo_names_long(109) = {'MULT_37'};
M_.endo_names(110) = {'MULT_38'};
M_.endo_names_tex(110) = {'MULT\_38'};
M_.endo_names_long(110) = {'MULT_38'};
M_.endo_names(111) = {'MULT_39'};
M_.endo_names_tex(111) = {'MULT\_39'};
M_.endo_names_long(111) = {'MULT_39'};
M_.endo_names(112) = {'MULT_40'};
M_.endo_names_tex(112) = {'MULT\_40'};
M_.endo_names_long(112) = {'MULT_40'};
M_.endo_names(113) = {'MULT_41'};
M_.endo_names_tex(113) = {'MULT\_41'};
M_.endo_names_long(113) = {'MULT_41'};
M_.endo_names(114) = {'MULT_42'};
M_.endo_names_tex(114) = {'MULT\_42'};
M_.endo_names_long(114) = {'MULT_42'};
M_.endo_names(115) = {'MULT_43'};
M_.endo_names_tex(115) = {'MULT\_43'};
M_.endo_names_long(115) = {'MULT_43'};
M_.endo_names(116) = {'MULT_44'};
M_.endo_names_tex(116) = {'MULT\_44'};
M_.endo_names_long(116) = {'MULT_44'};
M_.endo_names(117) = {'MULT_45'};
M_.endo_names_tex(117) = {'MULT\_45'};
M_.endo_names_long(117) = {'MULT_45'};
M_.endo_names(118) = {'MULT_46'};
M_.endo_names_tex(118) = {'MULT\_46'};
M_.endo_names_long(118) = {'MULT_46'};
M_.endo_names(119) = {'MULT_47'};
M_.endo_names_tex(119) = {'MULT\_47'};
M_.endo_names_long(119) = {'MULT_47'};
M_.endo_names(120) = {'MULT_48'};
M_.endo_names_tex(120) = {'MULT\_48'};
M_.endo_names_long(120) = {'MULT_48'};
M_.endo_names(121) = {'MULT_49'};
M_.endo_names_tex(121) = {'MULT\_49'};
M_.endo_names_long(121) = {'MULT_49'};
M_.endo_names(122) = {'MULT_50'};
M_.endo_names_tex(122) = {'MULT\_50'};
M_.endo_names_long(122) = {'MULT_50'};
M_.endo_names(123) = {'MULT_51'};
M_.endo_names_tex(123) = {'MULT\_51'};
M_.endo_names_long(123) = {'MULT_51'};
M_.endo_names(124) = {'MULT_52'};
M_.endo_names_tex(124) = {'MULT\_52'};
M_.endo_names_long(124) = {'MULT_52'};
M_.endo_names(125) = {'MULT_53'};
M_.endo_names_tex(125) = {'MULT\_53'};
M_.endo_names_long(125) = {'MULT_53'};
M_.endo_names(126) = {'MULT_54'};
M_.endo_names_tex(126) = {'MULT\_54'};
M_.endo_names_long(126) = {'MULT_54'};
M_.endo_names(127) = {'MULT_55'};
M_.endo_names_tex(127) = {'MULT\_55'};
M_.endo_names_long(127) = {'MULT_55'};
M_.endo_names(128) = {'MULT_56'};
M_.endo_names_tex(128) = {'MULT\_56'};
M_.endo_names_long(128) = {'MULT_56'};
M_.endo_names(129) = {'MULT_57'};
M_.endo_names_tex(129) = {'MULT\_57'};
M_.endo_names_long(129) = {'MULT_57'};
M_.endo_names(130) = {'MULT_58'};
M_.endo_names_tex(130) = {'MULT\_58'};
M_.endo_names_long(130) = {'MULT_58'};
M_.endo_names(131) = {'MULT_59'};
M_.endo_names_tex(131) = {'MULT\_59'};
M_.endo_names_long(131) = {'MULT_59'};
M_.endo_names(132) = {'MULT_60'};
M_.endo_names_tex(132) = {'MULT\_60'};
M_.endo_names_long(132) = {'MULT_60'};
M_.endo_names(133) = {'MULT_61'};
M_.endo_names_tex(133) = {'MULT\_61'};
M_.endo_names_long(133) = {'MULT_61'};
M_.endo_names(134) = {'MULT_62'};
M_.endo_names_tex(134) = {'MULT\_62'};
M_.endo_names_long(134) = {'MULT_62'};
M_.endo_names(135) = {'MULT_63'};
M_.endo_names_tex(135) = {'MULT\_63'};
M_.endo_names_long(135) = {'MULT_63'};
M_.endo_names(136) = {'MULT_64'};
M_.endo_names_tex(136) = {'MULT\_64'};
M_.endo_names_long(136) = {'MULT_64'};
M_.endo_names(137) = {'MULT_65'};
M_.endo_names_tex(137) = {'MULT\_65'};
M_.endo_names_long(137) = {'MULT_65'};
M_.endo_names(138) = {'MULT_66'};
M_.endo_names_tex(138) = {'MULT\_66'};
M_.endo_names_long(138) = {'MULT_66'};
M_.endo_names(139) = {'MULT_67'};
M_.endo_names_tex(139) = {'MULT\_67'};
M_.endo_names_long(139) = {'MULT_67'};
M_.endo_names(140) = {'MULT_68'};
M_.endo_names_tex(140) = {'MULT\_68'};
M_.endo_names_long(140) = {'MULT_68'};
M_.endo_names(141) = {'MULT_69'};
M_.endo_names_tex(141) = {'MULT\_69'};
M_.endo_names_long(141) = {'MULT_69'};
M_.endo_partitions = struct();
M_.param_names = cell(31,1);
M_.param_names_tex = cell(31,1);
M_.param_names_long = cell(31,1);
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
M_.param_names(30) = {'RHOA'};
M_.param_names_tex(30) = {'RHOA'};
M_.param_names_long(30) = {'RHOA'};
M_.param_names(31) = {'optimal_policy_discount_factor'};
M_.param_names_tex(31) = {'optimal\_policy\_discount\_factor'};
M_.param_names_long(31) = {'optimal_policy_discount_factor'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 141;
M_.param_nbr = 31;
M_.orig_endo_nbr = 72;
M_.aux_vars(1).endo_index = 73;
M_.aux_vars(1).type = 6;
M_.aux_vars(1).eq_nbr = 1;
M_.aux_vars(2).endo_index = 74;
M_.aux_vars(2).type = 6;
M_.aux_vars(2).eq_nbr = 2;
M_.aux_vars(3).endo_index = 75;
M_.aux_vars(3).type = 6;
M_.aux_vars(3).eq_nbr = 3;
M_.aux_vars(4).endo_index = 76;
M_.aux_vars(4).type = 6;
M_.aux_vars(4).eq_nbr = 4;
M_.aux_vars(5).endo_index = 77;
M_.aux_vars(5).type = 6;
M_.aux_vars(5).eq_nbr = 5;
M_.aux_vars(6).endo_index = 78;
M_.aux_vars(6).type = 6;
M_.aux_vars(6).eq_nbr = 6;
M_.aux_vars(7).endo_index = 79;
M_.aux_vars(7).type = 6;
M_.aux_vars(7).eq_nbr = 7;
M_.aux_vars(8).endo_index = 80;
M_.aux_vars(8).type = 6;
M_.aux_vars(8).eq_nbr = 8;
M_.aux_vars(9).endo_index = 81;
M_.aux_vars(9).type = 6;
M_.aux_vars(9).eq_nbr = 9;
M_.aux_vars(10).endo_index = 82;
M_.aux_vars(10).type = 6;
M_.aux_vars(10).eq_nbr = 10;
M_.aux_vars(11).endo_index = 83;
M_.aux_vars(11).type = 6;
M_.aux_vars(11).eq_nbr = 11;
M_.aux_vars(12).endo_index = 84;
M_.aux_vars(12).type = 6;
M_.aux_vars(12).eq_nbr = 12;
M_.aux_vars(13).endo_index = 85;
M_.aux_vars(13).type = 6;
M_.aux_vars(13).eq_nbr = 13;
M_.aux_vars(14).endo_index = 86;
M_.aux_vars(14).type = 6;
M_.aux_vars(14).eq_nbr = 14;
M_.aux_vars(15).endo_index = 87;
M_.aux_vars(15).type = 6;
M_.aux_vars(15).eq_nbr = 15;
M_.aux_vars(16).endo_index = 88;
M_.aux_vars(16).type = 6;
M_.aux_vars(16).eq_nbr = 16;
M_.aux_vars(17).endo_index = 89;
M_.aux_vars(17).type = 6;
M_.aux_vars(17).eq_nbr = 17;
M_.aux_vars(18).endo_index = 90;
M_.aux_vars(18).type = 6;
M_.aux_vars(18).eq_nbr = 18;
M_.aux_vars(19).endo_index = 91;
M_.aux_vars(19).type = 6;
M_.aux_vars(19).eq_nbr = 19;
M_.aux_vars(20).endo_index = 92;
M_.aux_vars(20).type = 6;
M_.aux_vars(20).eq_nbr = 20;
M_.aux_vars(21).endo_index = 93;
M_.aux_vars(21).type = 6;
M_.aux_vars(21).eq_nbr = 21;
M_.aux_vars(22).endo_index = 94;
M_.aux_vars(22).type = 6;
M_.aux_vars(22).eq_nbr = 22;
M_.aux_vars(23).endo_index = 95;
M_.aux_vars(23).type = 6;
M_.aux_vars(23).eq_nbr = 23;
M_.aux_vars(24).endo_index = 96;
M_.aux_vars(24).type = 6;
M_.aux_vars(24).eq_nbr = 24;
M_.aux_vars(25).endo_index = 97;
M_.aux_vars(25).type = 6;
M_.aux_vars(25).eq_nbr = 25;
M_.aux_vars(26).endo_index = 98;
M_.aux_vars(26).type = 6;
M_.aux_vars(26).eq_nbr = 26;
M_.aux_vars(27).endo_index = 99;
M_.aux_vars(27).type = 6;
M_.aux_vars(27).eq_nbr = 27;
M_.aux_vars(28).endo_index = 100;
M_.aux_vars(28).type = 6;
M_.aux_vars(28).eq_nbr = 28;
M_.aux_vars(29).endo_index = 101;
M_.aux_vars(29).type = 6;
M_.aux_vars(29).eq_nbr = 29;
M_.aux_vars(30).endo_index = 102;
M_.aux_vars(30).type = 6;
M_.aux_vars(30).eq_nbr = 30;
M_.aux_vars(31).endo_index = 103;
M_.aux_vars(31).type = 6;
M_.aux_vars(31).eq_nbr = 31;
M_.aux_vars(32).endo_index = 104;
M_.aux_vars(32).type = 6;
M_.aux_vars(32).eq_nbr = 32;
M_.aux_vars(33).endo_index = 105;
M_.aux_vars(33).type = 6;
M_.aux_vars(33).eq_nbr = 33;
M_.aux_vars(34).endo_index = 106;
M_.aux_vars(34).type = 6;
M_.aux_vars(34).eq_nbr = 34;
M_.aux_vars(35).endo_index = 107;
M_.aux_vars(35).type = 6;
M_.aux_vars(35).eq_nbr = 35;
M_.aux_vars(36).endo_index = 108;
M_.aux_vars(36).type = 6;
M_.aux_vars(36).eq_nbr = 36;
M_.aux_vars(37).endo_index = 109;
M_.aux_vars(37).type = 6;
M_.aux_vars(37).eq_nbr = 37;
M_.aux_vars(38).endo_index = 110;
M_.aux_vars(38).type = 6;
M_.aux_vars(38).eq_nbr = 38;
M_.aux_vars(39).endo_index = 111;
M_.aux_vars(39).type = 6;
M_.aux_vars(39).eq_nbr = 39;
M_.aux_vars(40).endo_index = 112;
M_.aux_vars(40).type = 6;
M_.aux_vars(40).eq_nbr = 40;
M_.aux_vars(41).endo_index = 113;
M_.aux_vars(41).type = 6;
M_.aux_vars(41).eq_nbr = 41;
M_.aux_vars(42).endo_index = 114;
M_.aux_vars(42).type = 6;
M_.aux_vars(42).eq_nbr = 42;
M_.aux_vars(43).endo_index = 115;
M_.aux_vars(43).type = 6;
M_.aux_vars(43).eq_nbr = 43;
M_.aux_vars(44).endo_index = 116;
M_.aux_vars(44).type = 6;
M_.aux_vars(44).eq_nbr = 44;
M_.aux_vars(45).endo_index = 117;
M_.aux_vars(45).type = 6;
M_.aux_vars(45).eq_nbr = 45;
M_.aux_vars(46).endo_index = 118;
M_.aux_vars(46).type = 6;
M_.aux_vars(46).eq_nbr = 46;
M_.aux_vars(47).endo_index = 119;
M_.aux_vars(47).type = 6;
M_.aux_vars(47).eq_nbr = 47;
M_.aux_vars(48).endo_index = 120;
M_.aux_vars(48).type = 6;
M_.aux_vars(48).eq_nbr = 48;
M_.aux_vars(49).endo_index = 121;
M_.aux_vars(49).type = 6;
M_.aux_vars(49).eq_nbr = 49;
M_.aux_vars(50).endo_index = 122;
M_.aux_vars(50).type = 6;
M_.aux_vars(50).eq_nbr = 50;
M_.aux_vars(51).endo_index = 123;
M_.aux_vars(51).type = 6;
M_.aux_vars(51).eq_nbr = 51;
M_.aux_vars(52).endo_index = 124;
M_.aux_vars(52).type = 6;
M_.aux_vars(52).eq_nbr = 52;
M_.aux_vars(53).endo_index = 125;
M_.aux_vars(53).type = 6;
M_.aux_vars(53).eq_nbr = 53;
M_.aux_vars(54).endo_index = 126;
M_.aux_vars(54).type = 6;
M_.aux_vars(54).eq_nbr = 54;
M_.aux_vars(55).endo_index = 127;
M_.aux_vars(55).type = 6;
M_.aux_vars(55).eq_nbr = 55;
M_.aux_vars(56).endo_index = 128;
M_.aux_vars(56).type = 6;
M_.aux_vars(56).eq_nbr = 56;
M_.aux_vars(57).endo_index = 129;
M_.aux_vars(57).type = 6;
M_.aux_vars(57).eq_nbr = 57;
M_.aux_vars(58).endo_index = 130;
M_.aux_vars(58).type = 6;
M_.aux_vars(58).eq_nbr = 58;
M_.aux_vars(59).endo_index = 131;
M_.aux_vars(59).type = 6;
M_.aux_vars(59).eq_nbr = 59;
M_.aux_vars(60).endo_index = 132;
M_.aux_vars(60).type = 6;
M_.aux_vars(60).eq_nbr = 60;
M_.aux_vars(61).endo_index = 133;
M_.aux_vars(61).type = 6;
M_.aux_vars(61).eq_nbr = 61;
M_.aux_vars(62).endo_index = 134;
M_.aux_vars(62).type = 6;
M_.aux_vars(62).eq_nbr = 62;
M_.aux_vars(63).endo_index = 135;
M_.aux_vars(63).type = 6;
M_.aux_vars(63).eq_nbr = 63;
M_.aux_vars(64).endo_index = 136;
M_.aux_vars(64).type = 6;
M_.aux_vars(64).eq_nbr = 64;
M_.aux_vars(65).endo_index = 137;
M_.aux_vars(65).type = 6;
M_.aux_vars(65).eq_nbr = 65;
M_.aux_vars(66).endo_index = 138;
M_.aux_vars(66).type = 6;
M_.aux_vars(66).eq_nbr = 66;
M_.aux_vars(67).endo_index = 139;
M_.aux_vars(67).type = 6;
M_.aux_vars(67).eq_nbr = 67;
M_.aux_vars(68).endo_index = 140;
M_.aux_vars(68).type = 6;
M_.aux_vars(68).eq_nbr = 68;
M_.aux_vars(69).endo_index = 141;
M_.aux_vars(69).type = 6;
M_.aux_vars(69).eq_nbr = 69;
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
M_.orig_eq_nbr = 69;
M_.eq_nbr = 141;
M_.ramsey_eq_nbr = 72;
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
 1 9 150;
 2 10 151;
 0 11 152;
 0 12 0;
 0 13 0;
 0 14 0;
 0 15 0;
 0 16 0;
 0 17 0;
 0 18 0;
 0 19 0;
 0 20 153;
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
 0 33 154;
 0 34 155;
 0 35 156;
 0 36 0;
 0 37 0;
 0 38 0;
 0 39 0;
 0 40 0;
 0 41 0;
 0 42 0;
 0 43 157;
 0 44 158;
 0 45 159;
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
 3 97 0;
 4 98 0;
 0 99 0;
 0 100 0;
 0 101 0;
 0 102 0;
 5 103 0;
 6 104 0;
 7 105 0;
 8 106 0;
 0 107 0;
 0 108 0;
 0 109 0;
 0 110 0;
 0 111 0;
 0 112 0;
 0 113 0;
 0 114 0;
 0 115 0;
 0 116 0;
 0 117 0;
 0 118 0;
 0 119 0;
 0 120 0;
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
 0 148 160;
 0 149 161;]';
M_.nstatic = 123;
M_.nfwrd   = 10;
M_.npred   = 6;
M_.nboth   = 2;
M_.nsfwrd   = 12;
M_.nspred   = 8;
M_.ndynamic   = 18;
M_.dynamic_tmp_nbr = [6; 0; 0; 0; ];
M_.model_local_variables_dynamic_tt_idxs = {
};
M_.equations_tags = {
  73 , 'name' , 'Home natural marginal cost condition' ;
  74 , 'name' , 'Foreign natural marginal cost condition' ;
  75 , 'name' , 'Home natural good-market clearing condition' ;
  76 , 'name' , 'Foreign natural good-market clearing condition' ;
  77 , 'name' , 'Natural IRS condition' ;
  78 , 'name' , 'Home natural government spending condition' ;
  79 , 'name' , 'Foreign natural government spending condition' ;
  80 , 'name' , 'Natural LOP' ;
  81 , 'name' , 'Home natural consumption of Home-made goods' ;
  82 , 'name' , 'Home natural consumption of Foreign-made goods' ;
  83 , 'name' , 'Foreign natural consumption of Home-made goods' ;
  84 , 'name' , 'Foreign natural consumption of Foreign-made goods' ;
  85 , 'name' , 'Home natural production function' ;
  86 , 'name' , 'Foreign natural production function' ;
  87 , 'name' , 'Home natural fiscal stance definition' ;
  88 , 'name' , 'Foreign natural fiscal stance definition' ;
  89 , 'name' , 'Home natural rate' ;
  90 , 'name' , 'Foreign natural rate' ;
  91 , 'name' , 'Union natural output' ;
  92 , 'name' , 'Union natural government spending' ;
  93 , 'name' , 'Union natural consumption' ;
  94 , 'name' , 'Union natural rate' ;
  95 , 'name' , 'Home New Keynesian Phillips Curve' ;
  96 , 'name' , 'Foreign New Keynesian Phillips Curve' ;
  97 , 'name' , 'Home Dynamic IS Curve' ;
  98 , 'name' , 'Foreign Dynamic IS Curve' ;
  99 , 'name' , 'IRS condition' ;
  100 , 'name' , 'LOP' ;
  101 , 'name' , 'Home production function' ;
  102 , 'name' , 'Foreign production function' ;
  103 , 'name' , 'Home good-market clearing condition' ;
  104 , 'name' , 'Foreign good-market clearing condition' ;
  105 , 'name' , 'Home fiscal stance definition' ;
  106 , 'name' , 'Foreign fiscal stance definition' ;
  107 , 'name' , 'Home consumption of Home-made goods' ;
  108 , 'name' , 'Home consumption of Foreign-made goods' ;
  109 , 'name' , 'Foreign consumption of Home-made goods' ;
  110 , 'name' , 'Foreign consumption of Foreign-made goods' ;
  111 , 'name' , 'Home interest rate' ;
  112 , 'name' , 'Foreign interest rate' ;
  113 , 'name' , 'Union inflation' ;
  114 , 'name' , 'Union output' ;
  115 , 'name' , 'Union government spending' ;
  116 , 'name' , 'Union consumption' ;
  117 , 'name' , 'Home output gap definition' ;
  118 , 'name' , 'Home governmpent spending gap definition' ;
  119 , 'name' , 'Home consumption gap definition' ;
  120 , 'name' , 'Home consumption of Home_made goods gap definition' ;
  121 , 'name' , 'Home consumption of Foreign_made goods gap definition' ;
  122 , 'name' , 'Foreign labor gap definition' ;
  123 , 'name' , 'Home fiscal stance gap definition' ;
  124 , 'name' , 'Home terms of trade gap definition' ;
  125 , 'name' , 'Home interest rate gap definition' ;
  126 , 'name' , 'Foreign output gap definition' ;
  127 , 'name' , 'Foreign governmpent spending gap definition' ;
  128 , 'name' , 'Foreign consumption gap definition' ;
  129 , 'name' , 'Foreign consumption of Home_made goods gap definition' ;
  130 , 'name' , 'Foreign consumption of Foreign_made goods gap definition' ;
  131 , 'name' , 'Foreign labor gap definition' ;
  132 , 'name' , 'Foreign fiscal stance gap definition' ;
  133 , 'name' , 'Foreign terms of trade gap definition' ;
  134 , 'name' , 'Foreign interest rate gap definition' ;
  135 , 'name' , 'Union output gap definition' ;
  136 , 'name' , 'Union governmpent spending gap definition' ;
  137 , 'name' , 'Union consumption gap definition' ;
  138 , 'name' , 'Union interest rate gap definition' ;
  139 , 'name' , 'g_gap_r' ;
  140 , 'name' , 'a' ;
  141 , 'name' , 'a_starr' ;
};
M_.mapping.a.eqidx = [73 85 89 95 101 140 ];
M_.mapping.a_starr.eqidx = [74 86 90 96 102 141 ];
M_.mapping.eps_a.eqidx = [140 ];
M_.mapping.eps_a_starr.eqidx = [141 ];
M_.mapping.y_nat.eqidx = [73 75 77 85 87 89 91 117 ];
M_.mapping.g_nat.eqidx = [75 77 78 87 92 118 ];
M_.mapping.c_nat.eqidx = [73 75 78 81 82 93 119 ];
M_.mapping.c_H_nat.eqidx = [81 120 ];
M_.mapping.c_F_nat.eqidx = [82 121 ];
M_.mapping.n_nat.eqidx = [85 122 ];
M_.mapping.f_nat.eqidx = [87 123 ];
M_.mapping.s_nat.eqidx = [73 74 75 76 77 78 79 80 81 82 83 84 124 ];
M_.mapping.r_nat.eqidx = [89 94 125 ];
M_.mapping.y_nat_starr.eqidx = [74 76 77 86 88 90 91 126 ];
M_.mapping.g_nat_starr.eqidx = [76 77 79 88 92 127 ];
M_.mapping.c_nat_starr.eqidx = [74 76 79 83 84 93 128 ];
M_.mapping.c_H_nat_starr.eqidx = [83 129 ];
M_.mapping.c_F_nat_starr.eqidx = [84 130 ];
M_.mapping.n_nat_starr.eqidx = [86 131 ];
M_.mapping.f_nat_starr.eqidx = [88 132 ];
M_.mapping.s_nat_starr.eqidx = [80 133 ];
M_.mapping.r_nat_starr.eqidx = [90 94 134 ];
M_.mapping.y_nat_cu.eqidx = [91 ];
M_.mapping.g_nat_cu.eqidx = [92 ];
M_.mapping.c_nat_cu.eqidx = [93 ];
M_.mapping.r_nat_cu.eqidx = [94 138 ];
M_.mapping.y.eqidx = [95 96 97 98 99 101 103 105 114 117 ];
M_.mapping.pie.eqidx = [26 95 97 113 ];
M_.mapping.g.eqidx = [95 96 97 98 99 103 105 115 118 ];
M_.mapping.n.eqidx = [101 122 ];
M_.mapping.c.eqidx = [103 107 108 116 119 ];
M_.mapping.c_H.eqidx = [107 120 ];
M_.mapping.c_F.eqidx = [108 121 ];
M_.mapping.f.eqidx = [105 123 ];
M_.mapping.s.eqidx = [99 100 103 104 107 108 109 110 124 ];
M_.mapping.ii.eqidx = [97 111 125 138 ];
M_.mapping.y_starr.eqidx = [95 96 97 98 99 102 104 106 114 126 ];
M_.mapping.pie_starr.eqidx = [36 96 98 113 ];
M_.mapping.g_starr.eqidx = [95 96 97 98 99 104 106 115 127 ];
M_.mapping.n_starr.eqidx = [102 131 ];
M_.mapping.c_starr.eqidx = [104 109 110 116 128 ];
M_.mapping.c_H_starr.eqidx = [109 129 ];
M_.mapping.c_F_starr.eqidx = [110 130 ];
M_.mapping.f_starr.eqidx = [106 132 ];
M_.mapping.ii_starr.eqidx = [98 112 134 ];
M_.mapping.s_starr.eqidx = [100 133 ];
M_.mapping.y_cu.eqidx = [114 ];
M_.mapping.g_cu.eqidx = [115 ];
M_.mapping.c_cu.eqidx = [116 ];
M_.mapping.ii_cu.eqidx = [111 112 ];
M_.mapping.pie_cu.eqidx = [113 ];
M_.mapping.y_gap.eqidx = [117 135 ];
M_.mapping.g_gap.eqidx = [51 57 118 136 139 ];
M_.mapping.c_gap.eqidx = [119 137 ];
M_.mapping.c_H_gap.eqidx = [120 ];
M_.mapping.c_F_gap.eqidx = [121 ];
M_.mapping.f_gap.eqidx = [123 ];
M_.mapping.n_gap.eqidx = [122 ];
M_.mapping.s_gap.eqidx = [51 57 60 124 ];
M_.mapping.ii_gap.eqidx = [125 ];
M_.mapping.y_gap_starr.eqidx = [126 135 ];
M_.mapping.g_gap_starr.eqidx = [57 60 127 136 139 ];
M_.mapping.c_gap_starr.eqidx = [128 137 ];
M_.mapping.c_H_gap_starr.eqidx = [129 ];
M_.mapping.c_F_gap_starr.eqidx = [130 ];
M_.mapping.f_gap_starr.eqidx = [132 ];
M_.mapping.n_gap_starr.eqidx = [131 ];
M_.mapping.s_gap_starr.eqidx = [133 ];
M_.mapping.ii_gap_starr.eqidx = [134 ];
M_.mapping.y_gap_cu.eqidx = [135 ];
M_.mapping.g_gap_cu.eqidx = [70 136 ];
M_.mapping.c_gap_cu.eqidx = [69 70 137 ];
M_.mapping.ii_gap_cu.eqidx = [138 ];
M_.mapping.g_gap_r.eqidx = [139 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.state_var = [1 2 89 90 95 96 97 98 ];
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(141, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(31, 1);
M_.endo_trends = struct('deflator', cell(141, 1), 'log_deflator', cell(141, 1), 'growth_factor', cell(141, 1), 'log_growth_factor', cell(141, 1));
M_.NNZDerivatives = [488; 0; -1; ];
M_.static_tmp_nbr = [6; 0; 0; 0; ];
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
M_.params(1) = 0.98;
BETA = M_.params(1);
M_.params(2) = 3;
SIGMA = M_.params(2);
M_.params(3) = 3;
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
M_.params(30) = 0.97;
RHOA = M_.params(30);
M_.NNZDerivatives_objective = [7;12;0;];
M_.objective_tmp_nbr = [0; 0; 0; 0; ];
M_.params(31) = M_.params(1);
optimal_policy_discount_factor = M_.params(31);
options_.ramsey_policy = true;
options_.instruments = {'ii_cu';'g_gap';'g_gap_starr'};
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_.irf = 200;
options_.nograph = true;
options_.order = 2;
options_.irf_shocks = {'eps_a_starr'};
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);
pol_name="RAMSEY - POP_WEIGHT"
calibration_name="h_"+h*100+" - ALPHA_bar_"+ALPHA_bar*100+" - THETA_"+THETA*100+" - THETA_starr_"+THETA_starr*100+" - DELTA_"+DELTA*100
folder_name = "OUTPUT/"+calibration_name+"/"+"POP_WEIGHT/"+"RAMSEY"
mkdir(folder_name)
T_irf=options_.irf
W_000 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(1.00,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_005 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.995,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_010 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.990,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_015 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.985,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_020 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.980,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_025 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.975,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_030 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.970,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_035 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.965,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_040 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.960,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_045 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.955,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_050 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.950,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_055 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.945,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_060 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.940,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_065 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.935,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_070 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.930,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_075 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.925,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_080 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.920,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_085 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.915,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_090 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.910,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_095 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.905,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_100 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(0.900,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_000_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(1.00,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_005_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.995,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_010_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.990,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_015_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.985,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_020_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.980,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_025_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.975,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_030_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.970,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_035_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.965,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_040_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.960,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_045_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.955,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_050_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.950,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_055_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.945,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_060_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.940,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_065_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.935,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_070_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.930,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_075_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.925,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_080_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.920,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_085_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.915,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_090_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.910,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_095_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.905,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
W_100_2 = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_ConsGov(0.900,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_eps_a_starr+log(C0))/h,exp(n_eps_a_starr+log(N0))/h,exp(g_eps_a_starr+log(G0))/h,exp(c_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_starr_eps_a_starr+log(G0_starr))/(1-h)));
CEV_table=table([W_000;W_005;W_010;W_015;W_020;W_025;W_030;W_035;W_040;W_045;W_050;W_055;W_060;W_065;W_070;W_075;W_080;W_085;W_090;W_095;W_100],[W_000_2;W_005_2;W_010_2;W_015_2;W_020_2;W_025_2;W_030_2;W_035_2;W_040_2;W_045_2;W_050_2;W_055_2;W_060_2;W_065_2;W_070_2;W_075_2;W_080_2;W_085_2;W_090_2;W_095_2;W_100_2],'VariableNames',{'CEV_Cons','CEV_ConsGov'},'RowNames',{'0.0%','0.5%','1.0%','1.5%','2.0%','2.5%','3.0%','3.5%','4.0%','4.5%','5.0%','5.5%','6.0%','6.5%','7.0%','7.5%','8.0%','8.5%','9.0%','9.5%','10.0%'})
writetable(CEV_table, folder_name+"/CEV_benchmark.txt") 
W_000_nat = sum(cumprod(ones(1,T_irf)*BETA)'.*WELFARE_CEV_Cons(1.00,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,exp(c_nat_eps_a_starr+log(C0))/h,exp(n_nat_eps_a_starr+log(N0))/h,exp(g_nat_eps_a_starr+log(G0))/h,exp(c_nat_starr_eps_a_starr+log(C0_starr))/(1-h), exp(n_nat_starr_eps_a_starr+log(N0_starr))/(1-h),exp(g_nat_starr_eps_a_starr+log(G0_starr))/(1-h)))
Loss = sum(cumprod(ones(1,T_irf)*BETA)'.*((1/SIGMA*(1-DELTA)*ALPHA_bar*W_ALPHA_bar)^2*s_gap_eps_a_starr.^2+h/2*(EPSILON/LAMBDA*pie_eps_a_starr.^2+PHI*y_gap_eps_a_starr.^2+GAMMA*DELTA*g_gap_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_eps_a_starr.^2)+(1-h)/2*(EPSILON/LAMBDA_starr*pie_starr_eps_a_starr.^2+PHI*y_gap_starr_eps_a_starr.^2+GAMMA*DELTA*g_gap_starr_eps_a_starr.^2+SIGMA*(1-DELTA)*c_gap_starr_eps_a_starr.^2)));
writematrix(Loss, folder_name+"/Loss.txt")
T_plot=40
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
save([M_.dname filesep 'Output' filesep 'MOdel_main_5_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MOdel_main_5_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MOdel_main_5_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MOdel_main_5_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MOdel_main_5_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MOdel_main_5_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'MOdel_main_5_results.mat'], 'oo_recursive_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
