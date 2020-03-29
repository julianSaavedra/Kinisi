tests
testVelocityRepresentationHasSameDirectonAsTheRealVelocityVector

	self deny: particle velocity isZero.

	velocityRenderer
		drawIn: view
		basedOn: particle
		for: particleElement.

	self
		withVelocityEdgeFor: particleElement
		do: [:velocityinView |
			self
				assert: velocityinView
				wasDrawWithTheSameDirectionAs: particle velocity]