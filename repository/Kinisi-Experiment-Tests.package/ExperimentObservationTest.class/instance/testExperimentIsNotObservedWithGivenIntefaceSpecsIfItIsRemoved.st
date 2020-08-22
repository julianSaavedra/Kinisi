tests
testExperimentIsNotObservedWithGivenIntefaceSpecsIfItIsRemoved

	| change steppingDefinition domainModelWorkbench workbench lab observationIsFinished observationsFromUsedSpec interfaceSpecToBeUsed observationsFromRemovedSpec interfaceSpecToBeRemoved interfaceDefinitionToBeUsed interfaceDefinitionToBeRemoved |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.

	observationsFromUsedSpec := OrderedCollection new.
	observationIsFinished := Semaphore new.
	interfaceSpecToBeUsed := PluggableInterfaceSpec
		with: [:observation | observationsFromUsedSpec add: observation ]
		andWhenFinishedDo: [ observationIsFinished signal].
	interfaceDefinitionToBeUsed := InterfaceDefinition named: 'DefinitionToBeUsed' with: interfaceSpecToBeUsed.
	
	observationsFromRemovedSpec := OrderedCollection new.
	interfaceSpecToBeRemoved := PluggableInterfaceSpec
		with: [:observation | observationsFromRemovedSpec add: observation ]
		andWhenFinishedDo: [].
	interfaceDefinitionToBeRemoved := InterfaceDefinition named: 'DefinitionToBeRemoved' with: interfaceSpecToBeRemoved.
	

	workbench observationWorkbench
		period: (Duration milliSeconds: 100);
		add: interfaceDefinitionToBeRemoved;
		add: interfaceDefinitionToBeUsed;
		remove: interfaceDefinitionToBeRemoved.
	
	lab runExperiment.
	
	[observationIsFinished wait] valueWithin: 2 seconds onTimeout: [ self fail ].
	self denyEmpty: observationsFromUsedSpec.
	self assertEmpty: observationsFromRemovedSpec