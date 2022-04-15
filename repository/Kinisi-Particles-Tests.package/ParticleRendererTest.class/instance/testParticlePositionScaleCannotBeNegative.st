test
testParticlePositionScaleCannotBeNegative

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	
	self
		assert: [ renderer renderPositionWith: self twentyOverMeter negated ]
		failsWith: 'Scale cannot be negative'