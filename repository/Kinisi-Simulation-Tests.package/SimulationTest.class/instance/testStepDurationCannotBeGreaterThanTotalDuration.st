test - migrated
testStepDurationCannotBeGreaterThanTotalDuration

	self
		should: [ SteppingDefinition to: 10 by: 12 ]
		raise: Error
		whoseDescriptionIncludes: 'Total duration must be equal or greater than the step duration'