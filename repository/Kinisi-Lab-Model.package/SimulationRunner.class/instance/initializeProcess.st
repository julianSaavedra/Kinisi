initialization
initializeProcess

	process := [ 
		| simulation |
		simulation := Simulation basedOn: experimentDefinition.
		simulation runInforming: self simulationConsumer ] newProcess.
	process
		priority: Processor activePriority - 1;
		name: 'Experiment - Simulation'