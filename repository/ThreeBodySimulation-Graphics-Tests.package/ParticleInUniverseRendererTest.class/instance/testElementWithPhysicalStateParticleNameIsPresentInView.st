tests
testElementWithPhysicalStateParticleNameIsPresentInView

	| view testResource physicalState renderer |
	view := RTView new.
	testResource := PhysicsTestResource new.
	physicalState := testResource
		physicalStateForParticleNamed: #'ParticleA'
		with: testResource oneKilogram
		in: testResource oneMeterInAllComponentsVector.
		
	renderer := ParticleInUniverseRenderer
		with: Color red
		using: (ConstantTransformation with: 10 @ -10)
		and: (ConstantTransformation with: 20).

	renderer drawIn: view basedOn: physicalState.
	
	self assert: (view elements anySatisfy: [:element | element model = physicalState particleName ])