function ds = dynamic_set_auxiliary_series(ds, params)
%
% Status : Computes Auxiliary variables of the dynamic model and returns a dseries
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

ds.AUX_EXO_LEAD_174=ds.MULT_6*(-(exp(ds.eps_a)*getPowerDeriv(ds.A(-1),params(8),1)));
ds.AUX_EXO_LEAD_199=ds.MULT_7*(-(exp(ds.eps_xi)*getPowerDeriv(ds.XI(-1),params(9),1)));
ds.AUX_EXO_LEAD_265=ds.MULT_8*(-(exp(ds.eps_a_starr)*getPowerDeriv(ds.A_starr(-1),params(8),1)));
ds.AUX_EXO_LEAD_289=ds.MULT_9*(-(exp(ds.eps_xi_starr)*getPowerDeriv(ds.XI_starr(-1),params(9),1)));
end
