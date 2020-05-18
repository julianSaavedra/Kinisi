tests - to review
testFixedSourceCannotBeCreatedWithNoValues

	self
		should: [ ObsevationFixedSource withAll: #() ]
		raise: ObservationError
		whoseDescriptionIncludes: 'Data cannot be empty'
		description: 'Test did not fail as expected'