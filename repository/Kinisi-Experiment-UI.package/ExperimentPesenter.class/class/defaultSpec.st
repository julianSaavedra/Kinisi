specs
defaultSpec

	| simulation observation |
	simulation := SpBoxLayout newHorizontal
		add: 'Simulation'; add: #simulation.
	observation := SpBoxLayout newHorizontal
		add: 'Observation'; add: #observation.
	^SpBoxLayout newVertical
		add: #controlPanel height: 70;
		add: simulation;
		add: observation;
		yourself 