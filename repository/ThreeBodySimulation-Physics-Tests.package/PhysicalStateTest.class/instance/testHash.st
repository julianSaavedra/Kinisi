tests
testHash

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

	self assert: aState hash equals: anotherState hash