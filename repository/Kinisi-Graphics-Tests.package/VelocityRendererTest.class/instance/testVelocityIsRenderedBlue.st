tests
testVelocityIsRenderedBlue

	| rendererColor |
	rendererColor := Color blue.
	velocityRenderer := VelocityRenderer with: rendererColor.

	velocityRenderer
		drawIn: view
		basedOn: particle
		for: particleElement.

	self
		withVelocityEdgeFor: particleElement
		do: [:velocityinView |
			self
				assert: velocityinView color
				equals: rendererColor ]