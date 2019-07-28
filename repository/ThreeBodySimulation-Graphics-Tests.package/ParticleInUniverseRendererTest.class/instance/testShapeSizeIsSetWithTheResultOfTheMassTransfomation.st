tests
testShapeSizeIsSetWithTheResultOfTheMassTransfomation

	| view testResource physicalState renderer massTrasnformationResult |
	view := RTView new.
	testResource := PhysicsTestResource new.
	massTrasnformationResult := 20.
	physicalState := testResource
		physicalStateForParticleNamed: #'ParticleA'
		with: testResource oneKilogram
		in: testResource oneMeterInAllComponentsVector.
	renderer := ParticleInUniverseRenderer
		with: Color red
		using: (ConstantTransformation with: 10 @ -10)
		and: (ConstantTransformation with: massTrasnformationResult).

	self
		overrideMethodNamed: #size:
		in: RTShape
		with: [:receiver :arguments | self assert: arguments first equals: massTrasnformationResult ]
		during: [ renderer drawIn: view basedOn: physicalState ]
	