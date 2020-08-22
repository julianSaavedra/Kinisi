tests
testExperimentIsNotObservedBasedOnGivenIntefaceSpecsIfAllAreRemoved

	| observations change steppingDefinition domainModelWorkbench workbench lab observationIsFinished interfaceSpec interfaceDefinition |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.

	observations := OrderedCollection new.
	observationIsFinished := Semaphore new.
	interfaceSpec := PluggableInterfaceSpec
		with: [:observation | observations add: observation ]
		andWhenFinishedDo: [ observationIsFinished signal].

	interfaceDefinition := InterfaceDefinition named: 'TestCollector' with: interfaceSpec.
	workbench observationWorkbench
		add: interfaceDefinition;
		removeAllSpecs.
	
	lab runExperiment.

	self assertEmpty: observations