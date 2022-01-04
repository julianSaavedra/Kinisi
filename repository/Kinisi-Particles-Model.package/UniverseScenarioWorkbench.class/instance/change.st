accessing
change

	| changeEnvironment |
	changeEnvironment := scenario environment.
	^SimulationStateDeltaChange with: [:currentState :delta |
		(UniverseChange from: currentState with: changeEnvironment during: delta) finalState ]