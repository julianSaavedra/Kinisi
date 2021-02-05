private
assertObservationIsValid

	wasRemoved ifTrue: [ UserInterfaceError signal: 'Particle is no longer valid' ]