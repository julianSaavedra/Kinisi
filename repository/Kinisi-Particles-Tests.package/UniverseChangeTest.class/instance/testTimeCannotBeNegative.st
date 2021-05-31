test
testTimeCannotBeNegative

	self
		should: [ UniverseChange from: ObservableUniverseState empty during: testResource negativeTime ]
		raise: PhysicsModelError
		withErrorMessage: 'Delta cannot be negative'