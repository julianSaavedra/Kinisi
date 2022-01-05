tests
testDescriptiveStatisticsFailsToBeProducedIfNoObservationHasBeenCollected

	| statsCollector |
	statsCollector := CollatzConjectureDescriptiveStatisticsCollector new.
	
	self
		should: [ statsCollector currentStatistics ]
		raise: Error
		whoseDescriptionIncludes: 'No observations have been processed yet!'
		description: 'Test did not failed as expected'