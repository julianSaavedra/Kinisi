tests
testElementIsNotLabeledIfRendererIsNotTellToDoSo

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

	methodWasSent := false.
	self
		overrideMethodNamed: #applyOn:
		in: LabelDecoration
		with: [:receiver :arguments | methodWasSent := true ]
		during: [ renderer drawIn: view basedOn: physicalState ].

	self deny: methodWasSent