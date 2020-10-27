tests
testVelocityIsRenderedBlue

	| rendererColor |
	rendererColor := Color blue.
	velocityRenderer := VelocityRenderer with: rendererColor.

	velocityRenderer
		drawIn: canvas
		basedOn: particle
		for: particleShape.

	self
		withVelocityEdgeFor: particleShape
		do: [:velocityinView |
			self
				assert: velocityinView color
				equals: rendererColor ]