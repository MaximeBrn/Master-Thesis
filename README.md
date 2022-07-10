# Master Thesis : Simple fiscal rules in a currency union.

We provide the code we use to generate IRFS and welfare analysis.

The folder `MAIN` contains the `.mod` files. The file to run is `MODEL_MAIN_#.mod` which include all the model expressions and saves output in folder `OUTPUT`. In `MODEL_MAIN_#.mod` you can select the policy regime you want to simulate. Running `MODEL_MAIN_#.mod` will loop over the parameter space and store for any parameter combination the IRFs and welfare.

The file `Compile_MAIN_OUTPUT.xlsx` summarizes the results stored in `OUTPUT` as Pivot Tables.


