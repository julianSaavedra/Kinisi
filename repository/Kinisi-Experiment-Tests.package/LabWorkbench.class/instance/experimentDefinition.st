accessing
experimentDefinition

	^ExperimentDefinition
		startingAt: domainModelWorkbench subject
		changingWith: domainModelWorkbench change
		simulatingBasedOn: domainModelWorkbench steppingDefinition
		observingBasedOn: observationDefinition