function [pol_name,folder_name,benchmark_folder_name] = get_folder_name(POLICY,OBJECTIVE,OSR_MP_RULE,OSR_FP_RULE,OSR_FP_FOREIGN,OSR_FP_HOME,h,ALPHA_bar,THETA)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if POLICY == "RAMSEY"
    
    pol_name=POLICY+""+" - "+""+OBJECTIVE;

elseif POLICY == "OSR"

    if OSR_FP_FOREIGN == "FOREIGN_UNCONSTRAINED"
        
        pol_name=POLICY+" - "+OBJECTIVE+" - "+OSR_MP_RULE+" - "+OSR_FP_RULE+" - "+OSR_FP_FOREIGN;

    elseif OSR_FP_FOREIGN == "FOREIGN_CONSTRAINED"

         pol_name=POLICY+" - "+OBJECTIVE+" - "+OSR_MP_RULE+" - "+OSR_FP_RULE+" - "+OSR_FP_FOREIGN+" - "+OSR_FP_HOME;

    end

end

calibration_name="h_"+h+" - ALPHA_bar_"+ALPHA_bar+" - THETA_"+THETA;

if POLICY == "RAMSEY"
    
    folder_name = "OUTPUT/"+calibration_name+"/"+OBJECTIVE+"/"+POLICY;

    benchmark_folder_name = folder_name; 

elseif POLICY == "OSR"

    benchmark_folder_name = "OUTPUT/"+calibration_name+"/"+OBJECTIVE+"/"+"RAMSEY";
    
    if OSR_FP_FOREIGN == "FOREIGN_UNCONSTRAINED"
    
        folder_name = "OUTPUT/"+calibration_name+"/"+OBJECTIVE+"/"+POLICY+" - "+OSR_MP_RULE+" - "+OSR_FP_RULE+" - "+OSR_FP_FOREIGN;

    elseif OSR_FP_FOREIGN == "FOREIGN_CONSTRAINED"
    
        folder_name = "OUTPUT/"+calibration_name+"/"+OBJECTIVE+"/"+POLICY+" - "+OSR_MP_RULE+" - "+OSR_FP_RULE+" - "+OSR_FP_FOREIGN+" - "+OSR_FP_HOME;
    
    end

end

end