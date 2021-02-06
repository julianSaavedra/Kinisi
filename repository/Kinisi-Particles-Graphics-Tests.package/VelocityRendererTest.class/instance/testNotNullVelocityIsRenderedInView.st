tests
testNotNullVelocityIsRenderedInView

	self deny: particle velocity isZero.
	
	velocityRenderer
		drawIn: canvas
		basedOn: particle
		for: particleShape.

	self
		withVelocityEdgeFor: particleShape
		do: [:velocityinView |
			self assert: velocityinView model key equals: particleShape model.
			self assert: velocityinView model value equals: #Velocity ]