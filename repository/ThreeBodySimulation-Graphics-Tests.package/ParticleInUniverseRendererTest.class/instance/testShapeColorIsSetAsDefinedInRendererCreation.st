tests
testShapeColorIsSetAsDefinedInRendererCreation

	| view color testResource physicalState renderer |
	view := RTView new.
	testResource := PhysicsTestResource new.
	color := Color red.
	physicalState := testResource
		physicalStateForParticleNamed: #'ParticleA'
		with: testResource oneKilogram
		in: testResource oneMeterInAllComponentsVector.
	renderer := ParticleInUniverseRenderer
		with: color
		using: (ConstantTransformation with: 10 @ -10)
		and: (ConstantTransformation with: 20).

	self
		overrideMethodNamed: #color:
		in: RTShape
		with: [:receiver :arguments | self assert: arguments first equals: color ]
		during: [ renderer drawIn: view basedOn: physicalState ]
	