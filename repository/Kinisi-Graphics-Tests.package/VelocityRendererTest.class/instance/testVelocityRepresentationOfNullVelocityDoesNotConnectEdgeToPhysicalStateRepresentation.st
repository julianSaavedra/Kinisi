tests
testVelocityRepresentationOfNullVelocityDoesNotConnectEdgeToPhysicalStateRepresentation
	
	particle := PhysicsTestResource new physicalStateWithNullVelocity. 
	velocityRenderer
		drawIn: view
		basedOn: particle
		for: particleElement.

	self assert: particleElement connectedEdges isEmpty.