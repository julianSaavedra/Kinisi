tests
testNotNullVelocityIsRenderedInView

	self deny: particle velocity isZero.
	
	velocityRenderer
		drawIn: view
		basedOn: particle
		for: particleElement.

	self
		withVelocityEdgeFor: particleElement
		do: [:velocityinView |
			self assert: velocityinView model key equals: particleElement model.
			self assert: velocityinView model value equals: #Velocity ]