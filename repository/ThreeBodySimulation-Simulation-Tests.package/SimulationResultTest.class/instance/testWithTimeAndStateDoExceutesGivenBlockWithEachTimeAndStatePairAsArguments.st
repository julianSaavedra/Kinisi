tests
testWithTimeAndStateDoExceutesGivenBlockWithEachTimeAndStatePairAsArguments

	| second steps simulationResult timeAndStatePairsUsedAsArguments |
	second := UnitProvider soleInstance second.
	steps := #(1 2 3) collect: [:index | (second with: index) -> index].
	simulationResult := SimulationResult from: steps.
	
	timeAndStatePairsUsedAsArguments := OrderedCollection new.
	simulationResult withTimeAndStateDo: [:time :state |
		timeAndStatePairsUsedAsArguments add: time -> state
		].
	
	
	self assert: (timeAndStatePairsUsedAsArguments includesAll: steps).
	self assert: timeAndStatePairsUsedAsArguments size equals: steps size