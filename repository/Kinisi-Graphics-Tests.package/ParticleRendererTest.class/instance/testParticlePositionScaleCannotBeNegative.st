test
testParticlePositionScaleCannotBeNegative

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	
	self
		should: [ renderer renderPositionWith: self twentyOverMeter negated]
		raise: RenderingError
		whoseDescriptionIncludes: 'Scale cannot be negative'
		description: 'Test did not fail as expected'