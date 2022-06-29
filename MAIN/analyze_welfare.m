function analyze_welfare(oo_irfs,T_irf,OBJECTIVE)


%--------------------------  Quadratic Loss  -----------------------------%


% Compute the quadratic loss under for the chosen policy objective
if OBJECTIVE == "POP_WEIGHT"
 
      Loss = sum(cumprod(ones(1,T_irf)*BETA)'.* ...
              ( ...
                (1-DELTA)*(SIGMA+(1-DELTA)*PHI)*oo_irfs.c_gap_cu_eps_a_starr.^2 ...
                +h*(1-h)*ALPHA_bar*(1-DELTA)*(1+PHI*(1-DELTA))*oo_irfs.s_gap_eps_a_starr.^2 ...
                +h*DELTA*(GAMMA+PHI*DELTA)*oo_irfs.g_gap_eps_a_starr.^2 ...
                +h*EPSILON/LAMBDA*oo_irfs.pie_eps_a_starr.^2 ...
                +(1-h)*DELTA*(GAMMA+PHI*DELTA)*oo_irfs.g_gap_starr_eps_a_starr.^2 ...
                +(1-h)*EPSILON/LAMBDA_starr*oo_irfs.pie_starr_eps_a_starr.^2 ...
                +2*(1-DELTA)*PHI*oo_irfs.c_gap_cu_eps_a_starr.*oo_irfs.g_gap_cu_eps_a_starr ...
                +2*ALPHA_bar*h*(1-h)*(1-DELTA)*DELTA*PHI*oo_irfs.s_gap_eps_a_starr.*oo_irfs.g_gap_r_eps_a_starr ...
             ) ...
            );

elseif OBJECTIVE == "EQUAL_WEIGHT"
    
      Loss = sum(cumprod(ones(1,T_irf)*BETA)'.* ...
              ( ...
                (1-DELTA)*(SIGMA+(1-DELTA)*PHI)*oo_irfs.c_gap_cu_eps_a_starr.^2 ...
                +0.5*(1-0.5)*ALPHA_bar*(1-DELTA)*(1+PHI*(1-DELTA))*oo_irfs.s_gap_eps_a_starr.^2 ...
                +0.5*DELTA*(GAMMA+PHI*DELTA)*oo_irfs.g_gap_eps_a_starr.^2 ...
                +0.5*EPSILON/LAMBDA*oo_irfs.pie_eps_a_starr.^2 ...
                +(1-0.5)*DELTA*(GAMMA+PHI*DELTA)*oo_irfs.g_gap_starr_eps_a_starr.^2 ...
                +(1-0.5)*EPSILON/LAMBDA_starr*oo_irfs.pie_starr_eps_a_starr.^2 ...
                +2*(1-DELTA)*PHI*oo_irfs.c_gap_cu_eps_a_starr.*oo_irfs.g_gap_cu_eps_a_starr ...
                +2*ALPHA_bar*0.5*(1-0.5)*(1-DELTA)*DELTA*PHI*oo_irfs.s_gap_eps_a_starr.*oo_irfs.g_gap_r_eps_a_starr ...
             ) ...
            );


end


@#if POLICY == "RAMSEY"
    
    writematrix(Loss, folder_name+"/Loss_benchmark.txt");

@#elseif POLICY == "OSR"
    
    Loss_benchmark_txt = readlines(benchmark_folder_name+"/Loss_benchmark.txt");
    Loss_benchmark = str2num(Loss_benchmark_txt(1));
    CEV = sqrt((1-BETA)/((1-DELTA)*(SIGMA+(1-DELTA)*PHI))*(Loss-Loss_benchmark))*100;
    writematrix(CEV, folder_name+"/CEV.txt");
    writematrix(Loss, folder_name+"/Loss.txt");

@#endif

end