tests
testTimeMomentsMustBeUniqueForEachIndividualStep

	| steps |
	steps := self stepResultsWithTimeBasedOn: #(1 1 2 3).
	
	self
		should: [ SimulationTotalResult from: steps ]
		raise: SimulationError