test - new model
testPositionMarksAreNotRenderedByDefault

	| renderer positionMarksWereRendered |
	renderer := ParticleRenderer basedOn: particle with: 10.

	positionMarksWereRendered := false.
	self
		before: #drawIn:basedOn:for:
		in: PositionMarksRenderer
		execute: [:receiver :arguments | positionMarksWereRendered := true]
		during: [renderer drawIn: view basedOn: particle].

	self deny: positionMarksWereRendered