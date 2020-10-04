test - decorations
testPositionMarksAreRendered

	| renderer positionMarksWereRendered |
	renderer := ParticleRenderer basedOn: particle with: 10.
	
	renderer renderPositionMarksWith: 100.
	positionMarksWereRendered := false.
	self
		before: #drawIn:basedOn:for:
		in: PositionMarksRenderer
		execute: [:receiver :arguments | positionMarksWereRendered := true]
		during: [renderer drawIn: canvas basedOn: particle].

	self assert: positionMarksWereRendered