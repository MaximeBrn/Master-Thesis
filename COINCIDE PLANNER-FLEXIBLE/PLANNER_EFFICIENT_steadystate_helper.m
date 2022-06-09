function x = Model_draft_4_testplan5_steadystate_helper(x0,PHI,SIGMA,GAMMA,CHI,ALPHA,ALPHA_starr,h)
    %if etaC == 1 && etaL == 1
    %   L = gam/pssi*C_L^(-1)*W/(1+gam/pssi*C_L^(-1)*W);
    % else
        options = optimset('Display','Final','TolX',1e-20,'TolFun',1e-20);
        %x = fsolve(@(x) x-x^(-PHI/SIGMA)+(x/CHI)^(-1/GAMMA), x0,options);
        res=fsolve(@(x) [ ...
            x(1)-(1-ALPHA)*h*((1-ALPHA)*(x(1)/h)^PHI+ALPHA*(x(2)/(1-h))^PHI)^(-1/SIGMA)-ALPHA_starr*(1-h)*(ALPHA_starr*(x(1)/h)^PHI+(1-ALPHA_starr)*(x(2)/(1-h))^PHI)^(-1/SIGMA)-h*((x(1)/h)^PHI/CHI)^(-1/GAMMA); ...
            x(2)-ALPHA*h*((1-ALPHA)*(x(1)/h)^PHI+ALPHA*(x(2)/(1-h))^PHI)^(-1/SIGMA)-(1-ALPHA_starr)*(1-h)*(ALPHA_starr*(x(1)/h)^PHI+(1-ALPHA_starr)*(x(2)/(1-h))^PHI)^(-1/SIGMA)-(1-h)*((x(2)/(1-h))^PHI/CHI)^(-1/GAMMA)], ...
            x0,options);
        x =  [res(1),res(2)];
    %end
end

 