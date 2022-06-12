%function x = PLANNER_solver_CHI_L(x0,SIGMA,GAMMA,DELTA)
function x = PLANNER_solver_CHI_L(x0,SIGMA,GAMMA,CHI_G)
    %if etaC == 1 && etaL == 1
    %   L = gam/pssi*C_L^(-1)*W/(1+gam/pssi*C_L^(-1)*W);
    % else
        options = optimset('Display','Final','TolX',1e-200,'TolFun',1e-200);
        x = fsolve(@(x) 1-x^(-1/SIGMA)-(x/CHI_G)^(-1/GAMMA), x0,options);
        %res=fsolve(@(x) [ ...
            %1-x(1)^(-1/SIGMA)-(x(1)/x(2))^(-1/GAMMA); ...
            %x(2)-x(1)*DELTA^GAMMA], ...
            %x0,options);
        %x =  [res(1),res(2)];
    %end
end

 