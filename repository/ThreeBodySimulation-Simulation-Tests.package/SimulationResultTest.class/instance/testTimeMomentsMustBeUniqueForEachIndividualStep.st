tests
testTimeMomentsMustBeUniqueForEachIndividualStep

	| steps |
	steps := self stepResultsWithTimeInSecondsBasedOn: #(1 1 2 3).
	
	self
		should: [ SimulationTotalResult from: steps ]
		raise: SimulationError