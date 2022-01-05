accessing
experimentDefinition

	^ExperimentDefinition
		startingAt: domainModelWorkbench scenario
		changingWith: domainModelWorkbench change
		simulatingBasedOn: steppingWorkbench steppingMode
		observingBasedOn: observationWorkbench definition