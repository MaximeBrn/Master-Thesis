function res = WELFARE_CEV_ConsGov(CEV,h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,C_vec,N_vec,G_vec,C_starr_vec,N_starr_vec,G_starr_vec)
    
    res = WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,CEV*C_vec,N_vec,CEV*G_vec,CEV*C_starr_vec,N_starr_vec,CEV*G_starr_vec);

end

 