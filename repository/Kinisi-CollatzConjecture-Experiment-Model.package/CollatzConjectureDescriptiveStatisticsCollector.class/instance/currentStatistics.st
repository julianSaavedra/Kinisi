accessing
currentStatistics

	self assertObservationsHaveBeenProcessed.
	^CollatzConjectureDescriptiveStatistics
		  during: lastObservation
		  with: currentMaximun number
		  with: currentMinimun number
		  with: currentEvens
		  with: currentOdds