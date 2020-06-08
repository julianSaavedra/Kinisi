tests
testFixedSourceCannotBeCreatedWithNoValues

	self
		should: [ MonitoringFixedSource withAll: #() ]
		raise: MonitoringError
		whoseDescriptionIncludes: 'Data cannot be empty'
		description: 'Test did not fail as expected'