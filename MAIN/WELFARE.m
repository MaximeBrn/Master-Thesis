function res = WELFARE(h,CHI_C,CHI_G,SIGMA,PHI,GAMMA,C_vec,N_vec,G_vec,C_starr_vec,N_starr_vec,G_starr_vec)
    res=h*(CHI_C*(C_vec.^(1-SIGMA)-1)/(1-SIGMA)-N_vec.^(1+PHI)/(1+PHI));
    res=res+(1-h)*(CHI_C*(C_starr_vec.^(1-SIGMA)-1)/(1-SIGMA)-N_starr_vec.^(1+PHI)/(1+PHI));
    if GAMMA == 1
        res=res+h*CHI_G*log(G_vec)+(1-h)*CHI_G*log(G_starr_vec);
    else
        res=res+h*(CHI_G*(G_vec.^(1-GAMMA)-1)/(1-GAMMA))+(1-h)*(CHI_G*(G_starr_vec.^(1-GAMMA)-1)/(1-GAMMA));
    end
end

 