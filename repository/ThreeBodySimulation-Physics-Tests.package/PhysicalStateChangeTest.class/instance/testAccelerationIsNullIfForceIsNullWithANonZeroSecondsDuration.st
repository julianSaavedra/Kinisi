tests
testAccelerationIsNullIfForceIsNullWithANonZeroSecondsDuration

	| originalState stateChange |

	originalState := PhysicalState
		withMass: testResource oneKilogram
		position: testResource oneMeterInAllComponentsVector
		velocity: (testResource velocityVectorWithAllComponentsWithAmount: 2)
		andAcceleration: (testResource accelerationVectorWithAllComponentsWithAmount: 1).

	stateChange := PhysicalStateChange
		of: originalState
		during: testResource zeroSeconds
		perceiving: testResource nullForce.

	self
		assert: stateChange finalState acceleration
		equals: testResource nullAcceleration