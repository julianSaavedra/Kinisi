test
testParticleIsRenderedWithColorBlueAndSizeTwenty

	| renderer size |
	size := 20.
	particle color: Color blue.
	renderer := ParticleRenderer basedOn: particle with: size.

	self assertNoErrorIsRaisedWhenRendering: particle using: renderer.

	self
		withShapeFor: particle
		do: [ :shape | 
			self assert: shape color equals: particle color.
			self assert: shape extent equals: size @ size ]