tests
testTimeCannotBeNegative

	| originalState |
	originalState := ObservableUniverseState withAll: self originalPhysicalStates.
	
	self
		should: [ UniverseStateChange
					from: originalState
					during: testResource negativeTime ]
		raise: PhysicsModelError