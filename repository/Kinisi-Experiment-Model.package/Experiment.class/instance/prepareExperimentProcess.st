initialization
prepareExperimentProcess

	experimentProcess := [ 
	                     | simulation consumer |
	                     consumer := SimulationStepPluggableConsumer
		                                 onStartDo: [ 
		                                 status := RunningExperimentStatus
			                                           new ]
		                                 processWith: [ :step | 
		                                 observation process: step ]
		                                 andWhenFinishedDo: [ 
			                                 observation close.
			                                 status := EndedExperimentStatus
				                                           new ].
	                     simulation := Simulation basedOn: definition.
	                     simulation runInforming: consumer.
	                     result := simulation result.
	                     lab recordResultOf: self.
	                     observationHasStated := true.
	                     observation play ] newProcess.
	experimentProcess
		priority: Processor activePriority - 1;
		name: 'Experiment'