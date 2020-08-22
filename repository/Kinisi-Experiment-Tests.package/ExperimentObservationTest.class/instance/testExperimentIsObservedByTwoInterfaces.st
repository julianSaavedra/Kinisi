tests
testExperimentIsObservedByTwoInterfaces

	| change steppingDefinition domainModelWorkbench workbench lab observationAIsFinished observationsFromInterfaceA interfaceASpec observationsFromInterfaceB interfaceBSpec interfaceADefinition interfaceBDefinition observationBIsFinished |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.

	observationsFromInterfaceA := OrderedCollection new.
	observationAIsFinished := Semaphore new.
	interfaceASpec := PluggableInterfaceSpec
		with: [:observation | observationsFromInterfaceA add: observation ]
		andWhenFinishedDo: [ observationAIsFinished signal].
	interfaceADefinition := InterfaceDefinition named: 'InterfaceA' with: interfaceASpec.
	
	observationsFromInterfaceB := OrderedCollection new.
	observationBIsFinished := Semaphore new.
	interfaceBSpec := PluggableInterfaceSpec
		with: [:observation | observationsFromInterfaceB add: observation ]
		andWhenFinishedDo: [ observationBIsFinished signal].
	interfaceBDefinition := InterfaceDefinition named: 'InterfaceB' with: interfaceBSpec.
	

	workbench observationWorkbench
		period: (Duration milliSeconds: 100);
		add: interfaceBDefinition;
		add: interfaceADefinition.
	
	lab runExperiment.
	
	[observationAIsFinished wait. observationBIsFinished wait ] valueWithin: 2 seconds onTimeout: [ self fail ].
	self denyEmpty: observationsFromInterfaceA.
	self denyEmpty: observationsFromInterfaceB