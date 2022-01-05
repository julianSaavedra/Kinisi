specs
defaultSpec

	| simulation observation |
	simulation := SpBoxLayout newHorizontal
		add: 'Simulation'; add: #simulation.
	observation := SpBoxLayout newHorizontal
		add: 'Observation'; add: #observation.
	^SpBoxLayout newVertical
		spacing: 5; 
		add: #controlPanel height: 25;
		add: simulation;
		add: observation;
		yourself 