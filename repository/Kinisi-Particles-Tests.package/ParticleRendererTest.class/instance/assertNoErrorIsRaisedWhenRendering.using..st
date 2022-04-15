asserting
assertNoErrorIsRaisedWhenRendering: aParticle using: renderer

	self
		shouldnt: [ renderer drawIn: canvas basedOn: aParticle ]
		raise: Error