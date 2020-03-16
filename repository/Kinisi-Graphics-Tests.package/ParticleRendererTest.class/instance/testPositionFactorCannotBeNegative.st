tests
testPositionFactorCannotBeNegative

	self should: [ ParticleRenderer basedOn: particle usign: self twentyOverMeter negated]
		raise: RenderingError