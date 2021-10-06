initialization
initializeFor: anExperiment
 
	experiment := anExperiment.
	simulation := SimulationRunner basedOn: experiment definition in: self.
	observation := ObservationController basedOn: experiment definition in: self.