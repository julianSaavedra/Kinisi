tests
testElementsShapeSizeCannotBeNegative

	self
		should: [ ParticleRenderer basedOn: particleDraft with: -1]
		raise: RenderingError