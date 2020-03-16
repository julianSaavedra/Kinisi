tests
testPositionMarksAreRenderedIfRendererIsToldToDoSo

	| renderer positionMarksWereRendered |
	particle position: testResource oneMeterInAllComponentsVector.
	renderer := ParticleRenderer 	basedOn: particle.
	
	positionMarksWereRendered := false.
	self
		before: #drawIn:basedOn:movedFromCenterBy:
		in: PositionMarksRenderer
		execute: [:receiver :arguments | positionMarksWereRendered := true]
		during: [renderer drawIn: view basedOn: particle].
	self deny: positionMarksWereRendered.
	
	renderer renderPositionMarksWhenRendering.
	self
		before: #drawIn:basedOn:movedFromCenterBy:
		in: PositionMarksRenderer
		execute: [:receiver :arguments | positionMarksWereRendered := true]
		during: [renderer drawIn: view basedOn: particle].
		
	self assert: positionMarksWereRendered