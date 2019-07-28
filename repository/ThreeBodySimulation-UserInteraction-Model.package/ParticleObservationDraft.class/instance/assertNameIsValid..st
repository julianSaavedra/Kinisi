validation
assertNameIsValid: aName
 
	aName ifEmpty: [ SimulationError signal: 'Name cannot be empty.' ].
	universeObservationDraft assertNameIsNotAlreadyUsed: aName