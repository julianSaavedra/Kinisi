initialization
simulationConsumer

	^SimulationStepPluggableConsumer
		onStartDo: [ status := RunningExperimentStatus new ]
		processWith: [:step | experimentRunner process: step ]
		andWhenFinishedDo: [
			experimentRunner simulationHasFinished.
			status := EndedExperimentStatus new ]