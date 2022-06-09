function [ys_, params, info] = steadystate(ys_, exo_, params)
% Steady state generated by Dynare preprocessor
    info = 0;
    ys_(5)=1;
    ys_(11)=1;
    ys_(6)=1;
    ys_(12)=1;
    ys_(2)=params(4);
    ys_(8)=ys_(2)*(1-params(4))/params(4);
    ys_(3)=ys_(2);
    ys_(9)=ys_(8);
    ys_(1)=ys_(3)*(1-params(7));
    ys_(4)=ys_(3)*params(7);
    ys_(7)=ys_(9)*(1-params(7));
    ys_(10)=ys_(9)*params(7);
    ys_(13)=ys_(4)/params(4);
    ys_(14)=ys_(10)/(1-params(4));
    ys_(15)=ys_(1)/params(4);
    ys_(16)=ys_(7)/(1-params(4));
    ys_(17)=ys_(2)/params(4);
    ys_(18)=ys_(8)/(1-params(4));
    ys_(19)=params(4)*((1-params(7))*log(ys_(15))+params(7)*log(ys_(13))-ys_(6)*ys_(17)^(1+params(3))/(1+params(3)));
    ys_(20)=(1-params(4))*((1-params(7))*log(ys_(16))+params(7)*log(ys_(14))-ys_(12)*ys_(18)^(1+params(3))/(1+params(3)));
    % Auxiliary equations
ys_(37)=ys_(31)*(-(exp(exo_(1))*getPowerDeriv(ys_(5),params(8),1)));
ys_(38)=ys_(32)*(-(exp(exo_(3))*getPowerDeriv(ys_(6),params(9),1)));
ys_(39)=ys_(33)*(-(exp(exo_(2))*getPowerDeriv(ys_(11),params(8),1)));
ys_(40)=ys_(34)*(-(exp(exo_(4))*getPowerDeriv(ys_(12),params(9),1)));
end
