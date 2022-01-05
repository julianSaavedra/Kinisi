private
assertObservationIsValid

	wasRemoved ifTrue: [ ExperimentError signal: 'Particle is no longer valid' ]