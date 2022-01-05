tests
testStepCannotBeCreatedWithNegativeTime
	
	self
		should: [ SimulationStepResult at: stepTime negated  with: stepResult]
		raise: SimulationError