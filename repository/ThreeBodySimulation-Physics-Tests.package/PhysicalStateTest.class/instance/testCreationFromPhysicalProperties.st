tests
testCreationFromPhysicalProperties

	| state |

	state := PhysicalState withMass: oneKilogram
		position: position
		velocity: velocity
		andAcceleration: acceleration.

	self assert: state mass equals: oneKilogram.
	self assert: state position equals: position.
	self assert: state velocity equals: velocity.
	self assert: state acceleration equals: acceleration