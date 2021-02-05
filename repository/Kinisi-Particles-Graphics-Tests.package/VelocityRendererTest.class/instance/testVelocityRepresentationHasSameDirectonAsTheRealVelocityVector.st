tests
testVelocityRepresentationHasSameDirectonAsTheRealVelocityVector

	self deny: particle velocity isZero.

	velocityRenderer
		drawIn: canvas
		basedOn: particle
		for: particleShape.

	self
		withVelocityEdgeFor: particleShape
		do: [:velocityinView |
			self
				assert: velocityinView
				wasDrawWithTheSameDirectionAs: particle velocity]