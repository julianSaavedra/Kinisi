tests
testElementIsLabelledIfRendererIsTellToDoSo

	| view testResource physicalState renderer methodWasSent |
	view := RTView new.
	testResource := PhysicsTestResource new.
	physicalState := testResource
		physicalStateForParticleNamed: #'ParticleA'
		with: testResource oneKilogram
		in: testResource oneMeterInAllComponentsVector.
	renderer := ParticleInUniverseRenderer
		with: Color red
		using: (ConstantTransformation with: 0@0)
		and: (ConstantTransformation with: 20).

	renderer labelElementWhenRendering.

	methodWasSent := false.
	self
		overrideMethodNamed: #@
		in: RTElement
		with: [:receiver :arguments |
			| interaction |
			methodWasSent := true.
			interaction := arguments first.
			self assert: interaction equals: RTLabeled  ]
		during: [ renderer drawIn: view basedOn: physicalState ].

	self assert: methodWasSent