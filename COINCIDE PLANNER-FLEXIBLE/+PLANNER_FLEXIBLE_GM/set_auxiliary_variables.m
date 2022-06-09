function y = set_auxiliary_variables(y, x, params)
%
% Status : Computes static model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

y(39)=y(27)*(-(exp(x(1))*getPowerDeriv(y(5),params(8),1)));
y(40)=y(28)*(-(exp(x(3))*getPowerDeriv(y(6),params(9),1)));
y(41)=y(29)*(-(exp(x(2))*getPowerDeriv(y(11),params(8),1)));
y(42)=y(30)*(-(exp(x(4))*getPowerDeriv(y(12),params(9),1)));
end
