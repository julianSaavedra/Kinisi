test
testTimeCannotBeNegative

	self
		should: [ UniverseChange from: ObservableUniverseState empty during: testResource negativeTime ]
		raise: PhysicsModelError
		whoseDescriptionIncludes: 'Delta cannot be negative'
		description: 'Test did not failed as expected' 