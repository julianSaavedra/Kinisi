test - new model
testPositionMarksAreRendered

	| renderer positionMarksWereRendered |
	renderer := ParticleRenderer basedOn: particle with: 10.
	
	renderer renderPositionMarksWith: 100.
	positionMarksWereRendered := false.
	self
		before: #drawIn:basedOn:for:
		in: PositionMarksRenderer
		execute: [:receiver :arguments | positionMarksWereRendered := true]
		during: [renderer drawIn: view basedOn: particle].

	self assert: positionMarksWereRendered