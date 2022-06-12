function [ys_, params, info] = steadystate(ys_, exo_, params)
% Steady state generated by Dynare preprocessor
    info = 0;
    ys_(7)=1;
    ys_(14)=1;
    ys_(4)=params(5);
    ys_(11)=1-params(5);
    ys_(5)=ys_(4);
    ys_(12)=ys_(11);
    ys_(1)=ys_(5)*(1-params(13));
    ys_(8)=ys_(12)*(1-params(13));
    ys_(6)=ys_(5)*params(13);
    ys_(13)=ys_(12)*params(13);
    ys_(2)=ys_(1)*(1-params(6));
    ys_(3)=ys_(1)*params(6);
    ys_(9)=ys_(8)*params(7);
    ys_(10)=ys_(8)*(1-params(7));
    % Auxiliary equations
end
