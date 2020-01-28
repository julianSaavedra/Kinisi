tests
testPositionFactorCannotBeNegative

	self should: [ ParticleRenderer basedOn: particleDraft usign: self twentyOverMeter negated]
		raise: RenderingError