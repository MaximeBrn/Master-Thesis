function generate_plot_2(oo_irfs,T_plot,my_annotation,folder_name)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% oo_irfs is the structure oo_.irfs


%-------------------------------------------------------------------------%
%-------------------------------  PLOTS  ---------------------------------%
%-------------------------------------------------------------------------%

%---------------------------- Plot options  ------------------------------%

% T_plot=100
t = 1:1:T_plot;
zeroline = ones(T_plot,1)*0;

%---------------------------  IRFs Summary  ------------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % Productivity
Home=plot(t,oo_irfs.a_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,oo_irfs.a_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
Union=plot(t,oo_irfs.a_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Union','Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Productivity : $$a_t$$, $$a_t^*$$ and $$a_t^{CU}$$','interpreter','latex','FontSize',12);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,2); % Consumption gap
plot(t,oo_irfs.c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$, $$\tilde c_t^*$$ and $$\tilde c_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,3); % Net Exports gap
plot(t,oo_irfs.nx_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.nx_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.nx_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Net Exports Gap : $$\tilde{nx}_t$$, $$\tilde{nx}_t^*$$ and $$\tilde{nx}_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,4); % Government consumption gap
plot(t,oo_irfs.g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.g_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$, $$\tilde g_t^*$$ and $$\tilde g_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,5); % Output gap
plot(t,oo_irfs.y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.y_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output Gap : $$\tilde y_t$$, $$\tilde y_t^*$$ and $$\tilde y_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,6); % Fiscal stance gap
plot(t,oo_irfs.f_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.f_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.f_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Fiscal Stance Gap : $$\tilde f_t$$, $$\tilde f_t^*$$ and $$\tilde f_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,7); % Inflation
plot(t,oo_irfs.pie_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.pie_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.pie_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Producer Price Inflation : $$\pi_{H,t}$$, $$\pi_{F,t}^*$$ and $$\pi_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,8); % Interest rate
plot(t,oo_irfs.ii_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.ii_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.ii_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Interest Rate Gap : $$\tilde i_t$$, $$\tilde i_t^*$$ and $$\tilde i_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,9); % Terms of trade gap
plot(t,oo_irfs.s_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.s_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Terms of Trade Gap : $$\tilde s_t$$ and $$\tilde s_t^*$$','interpreter','latex','FontSize',12);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',my_annotation,'FontSize',10)

% Save figure
figure_name = "IRFs_Summmary";
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

%----------------------  IRFs Detail c,c_H,c_F  ------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % Consumption
Home=plot(t,oo_irfs.c_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
Foreign=plot(t,oo_irfs.c_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
Union=plot(t,oo_irfs.c_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption : $$\hat c_t$$, $$\hat c_t^*$$ and $$\hat c_t^{CU}$$','interpreter','latex','FontSize',12);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,4); % Natural consumption
plot(t,oo_irfs.c_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption : $$\hat{\bar c}_t$$, $$\hat{\bar c}_t^*$$ and $$\hat{\bar c}_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,7); % Consumption gap
plot(t,oo_irfs.c_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap : $$\tilde c_t$$, $$\tilde c_t^*$$ and $$\tilde c_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,2); % Consumption Home-made goods
plot(t,oo_irfs.c_H_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
plot(t,oo_irfs.c_H_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,oo_irfs.c_H_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption $$\textit{Home}$$-made : $$\hat c_{H,t}$$, $$\hat c_{H,t}^*$$ and $$\hat c_{H,t}^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,5); % Natural consumption Home-made goods
plot(t,oo_irfs.c_H_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_H_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_H_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption $$\textit{Home}$$-made : $$\hat{\bar c}_{H,t}$$, $$\hat{\bar c}_{H,t}^*$$ and $$\hat{\bar c}_{H,t}^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,8); % Consumption Home-made goods gap
plot(t,oo_irfs.c_H_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_H_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_H_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap $$\textit{Home}$$-made : $$\tilde c_{H,t}$$, $$\tilde c_{H,t}^*$$ and $$\tilde c_{H,t}^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,3); % Consumption Foreign-made goods 
plot(t,oo_irfs.c_F_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Home'); hold on
plot(t,oo_irfs.c_F_starr_eps_a_starr(1:T_plot),'LineWidth',1.5,'DisplayName','Foreign'); hold on
plot(t,oo_irfs.c_F_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption $$\textit{Foreign}$$-made : $$\hat c_{F,t}$$, $$\hat c_{F,t}^*$$ and $$\hat c_{F,t}^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,6); % Natural consumption Foreign-made goods
plot(t,oo_irfs.c_F_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_F_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_F_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Consumption $$\textit{Foreign}$$-made : $$\hat{\bar c}_{F,t}$$, $$\hat{\bar c}_{F,t}^*$$ and $$\hat{\bar c}_{F,t}^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,9); % Consumption Foreign-made goods gap
plot(t,oo_irfs.c_F_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_F_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.c_F_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Consumption Gap $$\textit{Foreign}$$-made : $$\tilde c_{F,t}$$, $$\tilde c_{F,t}^*$$ and $$\tilde c_{F,t}^{CU}$$','interpreter','latex','FontSize',12);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',my_annotation,'FontSize',10)

% Save figure
figure_name = "IRFs_Detail_c_cH_cF";
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

%----------------------  IRFs Detailed g,y,f  ------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % Government consumption
Home=plot(t,oo_irfs.g_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Foreign=plot(t,oo_irfs.g_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Union=plot(t,oo_irfs.g_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Government Consumption : $$\hat g_t$$, $$\hat g_t^*$$ and $$\hat g_t^{CU}$$','interpreter','latex','FontSize',12);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,4); % Natural government consumption
plot(t,oo_irfs.g_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.g_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.g_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Government Consumption : $$\hat{\bar g}_t$$, $$\hat{\bar g}_t^*$$ and $$\hat{\bar g}_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,7); % Government consumption gap
plot(t,oo_irfs.g_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.g_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.g_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Government Consumption Gap : $$\tilde g_t$$, $$\tilde g_t^*$$ and $$\tilde g_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,2); % Output
plot(t,oo_irfs.y_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.y_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.y_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Output : $$\hat y_t$$, $$\hat y_t^*$$ and $$\hat y_t^{CU}$$','interpreter','latex','FontSize',12);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,5); % Natural Output
plot(t,oo_irfs.y_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.y_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.y_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Output : $$\hat{\bar y}_t$$, $$\hat{\bar y}_t^*$$ and $$\hat{\bar y}_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,8); % Output gap
plot(t,oo_irfs.y_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.y_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.y_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Output Gap : $$\tilde y_t$$, $$\tilde y_t^*$$ and $$\tilde y_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,3); % Fiscal stance
plot(t,oo_irfs.f_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.f_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.f_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Fiscal stance : $$\hat f_t$$, $$\hat f_t^*$$ and $$\hat f_t^{CU}$$','interpreter','latex','FontSize',12);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,6); % Natural Fiscal stance
plot(t,oo_irfs.f_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.f_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.f_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Fiscal stance : $$\hat{\bar f}_t$$, $$\hat{\bar f}_t^*$$ and $$\hat{\bar f}_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,9); % Fiscal stance gap
plot(t,oo_irfs.f_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.f_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.f_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Fiscal stance Gap : $$\tilde f_t$$, $$\tilde f_t^*$$ and $$\tilde f_t^{CU}$$','interpreter','latex','FontSize',12);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',my_annotation,'FontSize',10)

% Save figure
figure_name = "IRFs_Detail_g_y_f";
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

%----------------------  IRFs Detailed n,s,i  ------------------------%

figure('NumberTitle', 'off','visible','off')
subplot(3,3,1); % Net Exports
Home=plot(t,oo_irfs.nx_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Foreign=plot(t,oo_irfs.nx_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
Union=plot(t,oo_irfs.nx_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Net Exports : $$\hat{nx}_t$$, $$\hat{nx}_t^*$$ and $$\hat{nx}_t^{CU}$$','interpreter','latex','FontSize',12);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,4); % Natural net exports
plot(t,oo_irfs.nx_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.nx_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.nx_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Net Exports : $$\hat{\bar{nx}}_t$$, $$\hat{\bar{nx}}_t^*$$ and $$\hat{\bar{nx}}_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,7); % Net Exports gap
plot(t,oo_irfs.nx_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.nx_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.nx_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Net Exports Gap : $$\tilde{nx}_t$$, $$\tilde{nx}_t^*$$ and $$\tilde{nx}_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,2); % Interest rate
plot(t,oo_irfs.ii_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.ii_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.ii_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Interest Rate : $$\hat i_t$$, $$\hat i_t^*$$ and $$\hat i_t^{CU}$$','interpreter','latex','FontSize',12);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,5); % Natural rate
plot(t,oo_irfs.r_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.r_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.r_nat_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Rate : $$\hat{\bar r}_t$$, $$\hat{\bar r}_t^*$$ and $$\hat{\bar r}_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,8); % Interest rate gap
plot(t,oo_irfs.ii_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.ii_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.ii_gap_cu_eps_a_starr(1:T_plot),'LineWidth',1.5,'Color','Magenta'); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Interest Rate Gap : $$\tilde i_t$$, $$\tilde i_t^*$$ and $$\tilde i_t^{CU}$$','interpreter','latex','FontSize',12);

subplot(3,3,3); % Terms of trade
plot(t,oo_irfs.s_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.s_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Terms of Trade : $$\hat s_t$$ and $$\hat s_t^*$$','interpreter','latex','FontSize',12);
legend([Home,Foreign,Union],{'Home','Foreign','Union'},'location','southeast');

subplot(3,3,6); % Natural terms of trade
plot(t,oo_irfs.s_nat_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.s_nat_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black')
title('Natural Terms of Trade : $$\hat{\bar s}_t$$ and $$\hat{\bar s}_t^*$$','interpreter','latex','FontSize',12);

subplot(3,3,9); % Terms of trade gap
plot(t,oo_irfs.s_gap_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,oo_irfs.s_gap_starr_eps_a_starr(1:T_plot),'LineWidth',1.5); hold on
plot(t,zeroline,'LineWidth',0.5,'Color','Black');
title('Terms of Trade Gap : $$\tilde s_t$$ and $$\tilde s_t^*$$','interpreter','latex','FontSize',12);

annotation('textbox', [0, 0.05, 1, 0],'interpreter','latex','string',my_annotation,'FontSize',10)

% Save figure
figure_name = "IRFs_Detail_nx_s_i";
set(gcf,'Position',[1 1 1366 691])
saveas(gcf,folder_name+"/"+figure_name+".png")

end