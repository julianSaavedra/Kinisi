configuring
remove: particleObservation

	(self particles includes: particleObservation)
		ifTrue: [
			universeState := universeState remove: particleObservation.
			particleObservation markAsRemoved ]
		ifFalse: [ UserInterfaceError signal: 'Particle observation is not included in this universe observation']