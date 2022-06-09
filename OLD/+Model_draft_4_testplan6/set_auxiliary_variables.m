function y = set_auxiliary_variables(y, x, params)
%
% Status : Computes static model for Dynare
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

y(33)=y(27)*(-(exp(x(1))*getPowerDeriv(y(5),params(10),1)));
y(34)=y(28)*(-(exp(x(3))*getPowerDeriv(y(6),params(11),1)));
y(35)=y(29)*(-(exp(x(2))*getPowerDeriv(y(11),params(10),1)));
y(36)=y(30)*(-(exp(x(4))*getPowerDeriv(y(12),params(11),1)));
end
