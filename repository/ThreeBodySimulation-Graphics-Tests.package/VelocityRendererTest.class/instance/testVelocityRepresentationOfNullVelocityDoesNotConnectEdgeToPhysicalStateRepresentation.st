tests
testVelocityRepresentationOfNullVelocityDoesNotConnectEdgeToPhysicalStateRepresentation

	| view velocity particleElement velocityRenderer |
	view := RTView new.
	velocity := PhysicsTestResource new nullVelocity.
	particleElement := RTEllipse new elementOn: #ParticleState.
	view add: particleElement.
	
	velocityRenderer := VelocityRenderer new.
	
	velocityRenderer
		drawIn: view
		basedOn: velocity
		holdBy: particleElement.

	self assert: particleElement connectedEdges isEmpty.