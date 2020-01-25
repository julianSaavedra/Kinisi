utilities
updateDraft: draft basedOn: observableUniverseState

	draft particles do: [:particleDraft |
		observableUniverseState particles
			detect: [:aPhysicalState | aPhysicalState particleName = particleDraft particleName ]
			ifFound: [:aPhysicalState |
				particleDraft
					position: aPhysicalState position;
					velocity: aPhysicalState velocity;
					acceleration: aPhysicalState acceleration ]
			ifNone: [Error signal: 'ERROR when updating the draft']
		]