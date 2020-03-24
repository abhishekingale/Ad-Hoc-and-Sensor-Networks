# invoke SourceDir generated makefile for project_zero_app.pem4f
project_zero_app.pem4f: .libraries,project_zero_app.pem4f
.libraries,project_zero_app.pem4f: package/cfg/project_zero_app_pem4f.xdl
	$(MAKE) -f C:\Users\bramd\workspace_v9_2\week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\bramd\workspace_v9_2\week8_project_zero_app_CC13X2R1_LAUNCHXL_tirtos_ccs/src/makefile.libs clean

