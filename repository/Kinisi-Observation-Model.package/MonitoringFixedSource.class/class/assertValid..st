validation
assertValid: data
 
	data ifEmpty: [ MonitoringError signal: 'Data cannot be empty' ]