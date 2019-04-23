accessing
finalState

	| nextPosition nextVelocity nextAcceleration |

	nextAcceleration := cause / originalState mass.
	nextVelocity := nextAcceleration * deltaTime + originalState velocity.
	nextPosition := (nextVelocity + originalState velocity) * deltaTime / 2 + originalState position.

	^PhysicalState
		withMass: originalState mass
		position: nextPosition
		velocity: nextVelocity
		andAcceleration: nextAcceleration