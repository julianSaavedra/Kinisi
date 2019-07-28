tests
testStepCannotBeCreatedWithNegativeTime
	
	self
		should: [ SimulationStepResult at: testResource negativeTime with: rawResult]
		raise: SimulationError