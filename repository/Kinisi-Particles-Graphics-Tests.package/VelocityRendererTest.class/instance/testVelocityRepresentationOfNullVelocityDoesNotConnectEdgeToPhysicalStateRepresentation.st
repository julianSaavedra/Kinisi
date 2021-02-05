tests
testVelocityRepresentationOfNullVelocityDoesNotConnectEdgeToPhysicalStateRepresentation
	
	particle := PhysicsTestResource new physicalStateWithNullVelocity. 
	velocityRenderer
		drawIn: canvas
		basedOn: particle
		for: particleShape.

	self assert: particleShape connectedEdges isEmpty.