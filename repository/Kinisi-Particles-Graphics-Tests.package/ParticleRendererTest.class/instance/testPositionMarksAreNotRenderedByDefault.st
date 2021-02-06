test - decorations
testPositionMarksAreNotRenderedByDefault

	| renderer positionMarksWereRendered |
	renderer := ParticleRenderer basedOn: particle with: 10.

	positionMarksWereRendered := false.
	self
		before: #drawIn:basedOn:for:
		in: PositionMarksRenderer
		execute: [:receiver :arguments | positionMarksWereRendered := true]
		during: [renderer drawIn: canvas basedOn: particle].

	self deny: positionMarksWereRendered