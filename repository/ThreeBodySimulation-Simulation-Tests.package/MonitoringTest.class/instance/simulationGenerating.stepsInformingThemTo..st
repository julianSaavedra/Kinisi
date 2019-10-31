test objects
simulationGenerating: numberOfSteps stepsInformingThemTo: monitoringConsumer

	^self
		simulationGeneratingFrom: 0
		to: numberOfSteps - 1
		informingStepsTo: monitoringConsumer