accessing
assertObservationsHaveBeenProcessed

	lastObservation ifNil: [ 
		self error: 'No observations have been processed yet!' ]