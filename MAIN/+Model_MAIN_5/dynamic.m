function [residual, g1, g2, g3] = dynamic(y, x, params, steady_state, it_)
    T = NaN(9, 1);
    if nargout <= 1
        residual = Model_MAIN_5.dynamic_resid(T, y, x, params, steady_state, it_, true);
    elseif nargout == 2
        [residual, g1] = Model_MAIN_5.dynamic_resid_g1(T, y, x, params, steady_state, it_, true);
    elseif nargout == 3
        [residual, g1, g2] = Model_MAIN_5.dynamic_resid_g1_g2(T, y, x, params, steady_state, it_, true);
    else
        [residual, g1, g2, g3] = Model_MAIN_5.dynamic_resid_g1_g2_g3(T, y, x, params, steady_state, it_, true);
    end
end