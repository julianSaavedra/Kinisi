tests
testPrefixCannotBeEmpty

	self should: [ SequentialNameGenerator with: '' ] raise: SimulationError