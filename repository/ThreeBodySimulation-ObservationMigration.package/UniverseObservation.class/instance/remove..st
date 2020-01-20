configuring
remove: particleObservation

	particleObservation containingUniverseObservation == self
		ifTrue: [
			universeState := self newUniverseStateRemoving: particleObservation particleState.
			colorMapping removeKey: particleObservation particleName.
			particleObservation markAsRemoved ]
		ifFalse: [ UserInterfaceError signal: 'Particle observation to be removed is from another universe observation']