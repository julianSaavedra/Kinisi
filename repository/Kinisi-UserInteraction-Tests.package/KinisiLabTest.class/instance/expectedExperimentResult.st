test objects - to be refactrored
expectedExperimentResult

	^(0 to: 5)
		collect: [ :step | SimulationStepResult at: step with: (2 raisedTo: step) ]