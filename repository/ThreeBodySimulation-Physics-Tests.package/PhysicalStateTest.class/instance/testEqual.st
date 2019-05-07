tests
testEqual

	| aState anotherState |

	aState := PhysicalState
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.

	anotherState := PhysicalState
		withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	self assert: aState equals: anotherState.

	anotherState := PhysicalState
		withMass: testResource twoKilograms
		position: position
		velocity: velocity
		andAcceleration: acceleration.
	self deny: aState equals: anotherState.

	anotherState := PhysicalState
		withMass: oneKilogram
		position: testResource nullPosition
		velocity: velocity
		andAcceleration: acceleration.
	self deny: aState equals: anotherState.

	anotherState := PhysicalState
		withMass: oneKilogram
		position: position
		velocity: testResource nullVelocity
		andAcceleration: acceleration.
	self deny: aState equals: anotherState.

	anotherState := PhysicalState
		withMass: oneKilogram
		position: position
		velocity: acceleration
		andAcceleration: testResource nullAcceleration.
	self deny: aState equals: anotherState