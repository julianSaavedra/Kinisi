tests
testTimeMomentOfIndividualStepsCannotBeNegative

	| second steps |
	second := UnitProvider soleInstance second.
	steps := #(-1 0 1 2 3) collect: [:index | (second with: index) -> index].

	self
		should: [ SimulationResult from: steps ]
		raise: SimulationError