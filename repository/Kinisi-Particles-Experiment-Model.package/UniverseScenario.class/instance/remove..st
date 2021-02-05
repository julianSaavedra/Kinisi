configuring
remove: particleObservation

	(self particles includes: particleObservation)
		ifTrue: [
			universeState := universeState remove: particleObservation.
			particleObservation markAsRemoved ]
		ifFalse: [ ExperimentError signal: 'Particle is not included in this universe']