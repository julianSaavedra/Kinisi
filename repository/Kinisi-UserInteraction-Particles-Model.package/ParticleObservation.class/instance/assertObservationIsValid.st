private
assertObservationIsValid

	wasRemoved ifTrue: [ UserInterfaceError signal: 'Observation is no longer valid' ]