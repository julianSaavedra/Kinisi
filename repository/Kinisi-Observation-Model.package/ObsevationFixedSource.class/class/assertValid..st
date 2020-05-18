validation
assertValid: data
 
	data ifEmpty: [ ObservationError signal: 'Data cannot be empty' ]