configuring
remove: particleObservation

	particleObservation universeObservation == self
		ifTrue: [
			universeState := universeState remove: particleObservation.
			particleObservation markAsRemoved ]
		ifFalse: [ UserInterfaceError signal: 'Particle observation to be removed is from another universe observation']