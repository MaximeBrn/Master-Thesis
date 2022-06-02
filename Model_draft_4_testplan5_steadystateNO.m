function [ys,params,check] = Model_draft_4_testplan5_steadystate(ys,exo,M_,options_)
% Inputs: 
%   - ys        [vector] vector of initial values for the steady state of the endogenous variables
%   - exo       [vector] vector of values for the exogenous variables
%   - M_        [structure] Dynare model structure
%   - options   [structure] Dynare options structure
%
% Output: 
%   - ys        [vector] vector of steady state values for the the endogenous variables
%   - params    [vector] vector of parameter values
%   - check     [scalar] 0 if steady state computation worked and to
%                        1 of not (allows to impose restrictions on parameters)

%% Step 0: initialize indicator and set options for numerical solver
check = 0;
options = optimset('Display','Final','TolX',1e-10,'TolFun',1e-10);

%% Step 1: read out parameters to access them with their name
for ii = 1:M_.param_nbr
  eval([ M_.param_names{ii} ' = M_.params(' int2str(ii) ');']);
end

%% Step 2: Check parameter restrictions
%if etaC*etaL<1 % parameter violates restriction (here it is artifical)
    %check=1; %set failure indicator
    %return;  %return without updating steady states
%end

%% Step 3: Enter model equations here

A=1;
A_starr=1;
XI=1;
XI_starr=1;

% The labor level
    % No closed-form solution use a fixed-point algorithm
    res=fsolve(@(x) [ ...
            x(1)-(1-ALPHA)*((1-ALPHA)*x(1)^PHI+ALPHA*x(2)^PHI)^(-1/SIGMA)-ALPHA*(ALPHA_starr*x(1)^PHI+(1-ALPHA_starr)*x(2)^PHI)^(-1/SIGMA)-(x(1)^PHI/CHI)^(-1/GAMMA); ...
            x(2)-ALPHA_starr*((1-ALPHA)*x(1)^PHI+ALPHA*x(2)^PHI)^(-1/SIGMA)-(1-ALPHA_starr)*(ALPHA_starr*x(1)^PHI+(1-ALPHA_starr)*x(2)^PHI)^(-1/SIGMA)-(x(2)^PHI/CHI)^(-1/GAMMA)], ...
            [1,1],options);
    N = h*res(1);
    N_starr=(1-h)*res(2);

C=((1-ALPHA)*(N/h)^PHI+ALPHA*(N_starr/(1-h))^PHI)^(-1/SIGMA);

if C <= 0
    check = 1; % set failure indicator
    return;    % return without updating steady states
end

C_starr=(ALPHA_starr*(N/h)^PHI+(1-ALPHA_starr)*(N_starr/(1-h))^PHI)^(-1/SIGMA);

if C_starr <= 0
    check = 1; % set failure indicator
    return;    % return without updating steady states
end

G=(1/CHI*(N/h)^PHI)^(-1/GAMMA);

if G <= 0
    check = 1; % set failure indicator
    return;    % return without updating steady states
end

G_starr=(1/CHI*(N_starr/(1-h))^PHI)^(-1/GAMMA);

if G_starr <= 0
    check = 1; % set failure indicator
    return;    % return without updating steady states
end

LAMBDA_1=h*CHI*(G/h)^(-GAMMA);
LAMBDA_2=(1-h)*CHI*(G_starr/(1-h))^(-GAMMA);

%% Step 4: Update parameters and variables
params=NaN(M_.param_nbr,1);
for iter = 1:M_.param_nbr %update parameters set in the file
  eval([ 'params(' num2str(iter) ') = ' M_.param_names{iter} ';' ])
end

for ii = 1:M_.orig_endo_nbr %auxiliary variables are set automatically
  eval(['ys(' int2str(ii) ') = ' M_.endo_names{ii} ';']);
end