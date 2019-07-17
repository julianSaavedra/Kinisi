utilities
updateDraft: draft basedOn: observableUniverseState

	draft particleDrafts do: [:particleDraft |
		observableUniverseState physicalStates
			detect: [:aPhysicalState | aPhysicalState particleName = particleDraft particleName ]
			ifFound: [:aPhysicalState |
				particleDraft
					position: aPhysicalState position;
					velocity: aPhysicalState velocity;
					acceleration: aPhysicalState acceleration ]
			ifNone: [Error signal: 'ERROR when updating the draft']
		]