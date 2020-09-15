tests
testParticleWithUniformLinearMotion

	| lab domainModelWorkbench workbench expectedSteps particle |
	domainModelWorkbench := UniverseScenarioWorkbench default.
	workbench := LabWorkbench using: domainModelWorkbench.
	particle := workbench modelWorkbench newParticle.
	self populateWithInitialStateProperties: particle.
	domainModelWorkbench
		steppingBy: resource oneSecond
		over: resource oneSecond * 10.

	lab := KinisiLab using: workbench.
	lab runExperiment.

	expectedSteps := self expectedSteps.
	lab lastResult
		withTimeAndStateDo: [ :step :state | 
			expectedSteps
				detect: [ :result | result time = step ]
				ifFound: [ :matchingResult | self assert: matchingResult value equals: state ]
				ifNone: [ self fail ] ]