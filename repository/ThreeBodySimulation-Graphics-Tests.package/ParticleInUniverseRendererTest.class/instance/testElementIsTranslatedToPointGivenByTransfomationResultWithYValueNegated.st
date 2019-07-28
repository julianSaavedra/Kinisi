tests
testElementIsTranslatedToPointGivenByTransfomationResultWithYValueNegated

	| view testResource physicalState renderer positionTrasnformationResult methodWasSent |
	view := RTView new.
	testResource := PhysicsTestResource new.
	positionTrasnformationResult := 10 @ -10.
	physicalState := testResource
		physicalStateForParticleNamed: #'ParticleA'
		with: testResource oneKilogram
		in: testResource oneMeterInAllComponentsVector.
	renderer := ParticleInUniverseRenderer
		with: Color red
		using: (ConstantTransformation with: positionTrasnformationResult)
		and: (ConstantTransformation with: 20).

	methodWasSent := false.
	self
		overrideMethodNamed: #translateTo:
		in: RTElement
		with: [:receiver :arguments |
			| point |
			methodWasSent := true.
			point := arguments first.
			self assert: point x equals: positionTrasnformationResult x.
			self assert: point y negated equals: positionTrasnformationResult y ]
		during: [ renderer drawIn: view basedOn: physicalState ].
		
	self assert: methodWasSent 
	