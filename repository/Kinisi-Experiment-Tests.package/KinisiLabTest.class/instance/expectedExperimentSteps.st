test objects
expectedExperimentSteps

	^(0 to: 5) collect: [:stepIndex |
		SimulationStepResult at: stepIndex with: (2 raisedTo: stepIndex) ]