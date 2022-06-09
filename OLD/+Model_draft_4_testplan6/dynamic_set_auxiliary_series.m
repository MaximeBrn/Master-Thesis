function ds = dynamic_set_auxiliary_series(ds, params)
%
% Status : Computes Auxiliary variables of the dynamic model and returns a dseries
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

ds.AUX_EXO_LEAD_154=ds.MULT_9*(-(exp(ds.eps_a)*getPowerDeriv(ds.A(-1),params(10),1)));
ds.AUX_EXO_LEAD_170=ds.MULT_10*(-(exp(ds.eps_xi)*getPowerDeriv(ds.XI(-1),params(11),1)));
ds.AUX_EXO_LEAD_228=ds.MULT_11*(-(exp(ds.eps_a_starr)*getPowerDeriv(ds.A_starr(-1),params(10),1)));
ds.AUX_EXO_LEAD_244=ds.MULT_12*(-(exp(ds.eps_xi_starr)*getPowerDeriv(ds.XI_starr(-1),params(11),1)));
end
