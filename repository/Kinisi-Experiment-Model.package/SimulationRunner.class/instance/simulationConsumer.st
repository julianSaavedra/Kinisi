initialization
simulationConsumer

	^SimulationStepPluggableConsumer
		onStartDo: [ status := RunningExperimentStatus new ]
		processWith: [:step | experimentRunner process: step ]
		andWhenFinishedDo: [:result |
			experimentRunner simulationHasFinishedWith: result.
			status := EndedExperimentStatus new ]