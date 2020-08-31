accessing
experimentDefinition

	^ExperimentDefinition
		startingAt: domainModelWorkbench scenario
		changingWith: domainModelWorkbench change
		simulatingBasedOn: domainModelWorkbench steppingDefinition
		observingBasedOn: observationWorkbench definition