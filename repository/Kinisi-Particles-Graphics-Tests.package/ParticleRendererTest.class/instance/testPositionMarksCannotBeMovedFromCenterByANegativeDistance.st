test - decorations
testPositionMarksCannotBeMovedFromCenterByANegativeDistance

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	
	self
		should: [ renderer renderPositionMarksWith: -10 ]
		raise: RenderingError
		whoseDescriptionIncludes: 'Position marks distance from center cannot be negative '
		description: 'Test did not dailed as expected'