accessing
change

	| changeEnvironment changeDescription |
	changeDescription := ChangeDescription empty.
	scenario particles do: [:particle |
		particle changeSpecifications do: [:component |
			component addTo: changeDescription for: particle]].
	changeEnvironment := ChangeEnvironment from: changeDescription.
	^SimulationStateDeltaChange with: [:currentState :delta |
		(UniverseChange from: currentState with: changeEnvironment during: delta) finalState ]