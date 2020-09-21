accessing
experimentDefinition

	^ExperimentDefinition
		startingAt: domainModelWorkbench scenario
		changingWith: domainModelWorkbench change
		simulatingBasedOn: steppingWorkbench steppingDefinition
		observingBasedOn: observationWorkbench definition