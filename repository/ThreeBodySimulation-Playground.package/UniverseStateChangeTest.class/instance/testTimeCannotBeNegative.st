tests
testTimeCannotBeNegative

	| originalState |
	originalState := ObservableUniverseState with: self originalPhysicalStates.
	
	self
		should: [ UniverseStateChange
					from: originalState
					during: testResource negativeTime ]
		raise: PhysicsModelError