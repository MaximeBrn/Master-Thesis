function [pol_name,folder_name,benchmark_folder_name] = get_folder_name(POLICY,OBJECTIVE,OSR_MP_RULE,OSR_FP_RULE,FP_FOREIGN,OSR_FP_HOME,h,ALPHA_bar,THETA)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

calibration_name="h_"+h+" - ALPHA_bar_"+ALPHA_bar+" - THETA_"+THETA;

if POLICY == "RAMSEY"
    
    pol_name=FP_FOREIGN+" - "+POLICY;
    benchmark_folder_name = "NA"; % The RAMSEY policy is the benchmark 

else

    benchmark_folder_name = "OUTPUT/"+calibration_name+"/"+OBJECTIVE+"/"+FP_FOREIGN+" - "+"RAMSEY";

    if FP_FOREIGN == "FOREIGN_UNCONSTRAINED"
        
        pol_name=FP_FOREIGN+" - "+POLICY+" - "+OSR_MP_RULE+" - "+OSR_FP_RULE;

    elseif FP_FOREIGN == "FOREIGN_CONSTRAINED"

         pol_name=FP_FOREIGN+" - "+POLICY+" - "+OSR_MP_RULE+" - "+OSR_FP_RULE+" - "+OSR_FP_HOME;
         
    end


end

folder_name = "OUTPUT/"+calibration_name+"/"+OBJECTIVE+"/"+pol_name;
end