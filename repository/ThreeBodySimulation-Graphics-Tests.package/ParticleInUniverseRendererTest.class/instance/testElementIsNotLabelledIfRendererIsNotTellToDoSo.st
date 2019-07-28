tests
testElementIsNotLabelledIfRendererIsNotTellToDoSo

	| view testResource physicalState renderer |
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

	self
		overrideMethodNamed: #@
		in: RTElement
		with: [:receiver :arguments |
			| interaction |
			interaction := arguments first.
			self deny: interaction equals: RTLabeled  ]
		during: [ renderer drawIn: view basedOn: physicalState ].
	