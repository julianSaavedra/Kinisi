initialization
initializeFor: anExperiment
 
	experiment := anExperiment.
	simulation := SimulationRunner basedOn: experiment definition in: self.
	observation := ObservationRunner basedOn: experiment definition in: self.