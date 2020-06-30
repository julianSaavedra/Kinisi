tests - control panel
testLabControlPanelKnowsIfSimulationIsRunningOrNot

	| lab workbench experimentDefinition semaphore controlPanel |
	experimentDefinition := ExperimentDefinition
		basedOn: 1
		changingWith: [ :step :currentState | semaphore wait. currentState * 2 ]
		over: 1
		until: 5
		observingBasedOn: self nullObservationDefinition.
	workbench := LabWorkbench fixedWith: experimentDefinition.
	lab := KinisiLab using: workbench.
	
	controlPanel := lab controlPanel.
	self deny: controlPanel isRunning.
	
	semaphore := Semaphore new.
	lab performExperiment.
	
	self assert: controlPanel isRunning.
	
	self assertEmpty: lab experiments.
	semaphore signal.
	
	[[lab experiments isEmpty] whileTrue]
		valueWithin: (Duration seconds: 1) onTimeout: [ self fail ].
	
	self deny: controlPanel isRunning