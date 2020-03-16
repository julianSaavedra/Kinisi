tests
testParticleSizeIsTenIfShapeSizeGivenAtRendererCreationIsTen

	| renderer shapeSize |
	particle position: testResource oneMeterInYVector.
	renderer := ParticleRenderer basedOn: particle with: 10.
	
	self
		before: #size:
		in: RTEllipse
		execute: [:receiver :arguments | shapeSize := arguments first ]
		during: [ renderer drawIn: view basedOn: particle] .

	self assert: shapeSize equals: 10