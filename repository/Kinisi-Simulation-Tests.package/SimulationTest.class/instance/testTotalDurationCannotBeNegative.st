test - migrated
testTotalDurationCannotBeNegative

	self
		should: [ SteppingDefinition to: -10 by: 1 ]
		raise: Error
		whoseDescriptionIncludes: 'Total duration cannot be negative'