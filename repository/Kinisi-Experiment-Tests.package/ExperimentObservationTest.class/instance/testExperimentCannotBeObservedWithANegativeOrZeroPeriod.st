tests
testExperimentCannotBeObservedWithANegativeOrZeroPeriod

	| change steppingDefinition domainModelWorkbench workbench lab twoSeconds |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.

	twoSeconds := Duration seconds: 2.
	workbench observationWorkbench period:twoSeconds.
	
	self
		should: [workbench observationWorkbench period: (Duration seconds: -1)]
		raise: Error
		whoseDescriptionIncludes: 'Period cannot be negative nor zero'
		description: 'Test did not fail as expected'.
	self assert: workbench observationWorkbench period equals: twoSeconds.
	
	self
		should: [workbench observationWorkbench period: (Duration seconds: 0)]
		raise: Error
		whoseDescriptionIncludes: 'Period cannot be negative nor zero'
		description: 'Test did not fail as expected'.
	self assert: workbench observationWorkbench period equals: twoSeconds.