acessing
change

	^SimulationStateDeltaChange with: [:currentState :delta |
		(UniverseStateChange from: currentState during: delta) finalState ]