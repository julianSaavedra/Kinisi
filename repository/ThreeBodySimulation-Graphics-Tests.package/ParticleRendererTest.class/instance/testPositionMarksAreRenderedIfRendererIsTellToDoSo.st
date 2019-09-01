tests
testPositionMarksAreRenderedIfRendererIsTellToDoSo

	| renderer positionMarksWereRendered |
	particleDraft position: testResource oneMeterInAllComponentsVector.
	renderer := ParticleRenderer 	basedOn: particleDraft.
	
	positionMarksWereRendered := false.
	self
		before: #drawIn:basedOn:movedFromCenterBy:
		in: PositionMarksRenderer
		execute: [:receiver :arguments | positionMarksWereRendered := true]
		during: [renderer drawIn: view basedOn: particleDraft].
	self deny: positionMarksWereRendered.
	
	renderer renderPositionMarksWhenRendering.
	self
		before: #drawIn:basedOn:movedFromCenterBy:
		in: PositionMarksRenderer
		execute: [:receiver :arguments | positionMarksWereRendered := true]
		during: [renderer drawIn: view basedOn: particleDraft].
		
	self assert: positionMarksWereRendered