experiment
runExperiment

	| experiment |
	experiment := Experiment basedOn: workbench experimentDefinition.
	experiment run.
	experimentsResults add: experiment result