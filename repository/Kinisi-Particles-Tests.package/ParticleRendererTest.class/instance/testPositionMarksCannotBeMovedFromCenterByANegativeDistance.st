test - decorations
testPositionMarksCannotBeMovedFromCenterByANegativeDistance

	| renderer |
	renderer := ParticleRenderer basedOn: particle with: 10.
	
	self
		assert: [ renderer renderPositionMarksWith: -10 ]
		failsWith: 'Position marks distance from center cannot be negative'