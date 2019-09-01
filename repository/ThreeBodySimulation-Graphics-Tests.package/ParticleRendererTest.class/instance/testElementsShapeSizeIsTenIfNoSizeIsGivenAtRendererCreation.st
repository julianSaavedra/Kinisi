tests
testElementsShapeSizeIsTenIfNoSizeIsGivenAtRendererCreation

	| renderer shapeSize |
	particleDraft position: testResource oneMeterInYVector.
	renderer := ParticleRenderer basedOn: particleDraft.
	
	self
		before: #size:
		in: RTEllipse
		execute: [:receiver :arguments | shapeSize := arguments first ]
		during: [ renderer drawIn: view basedOn: particleDraft] .

	self assert: shapeSize equals: 10