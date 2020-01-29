tests
testVelocityRepresentationIsConnectedToPhysicalStateRepresentation

	| view velocity particleElement velocityRenderer particleElementConnectedEdges velocityEdge |
	view := RTView new.
	velocity := PhysicsTestResource new velocityVectorWithAllComponentsWithAmount: 1.
	particleElement := RTEllipse new elementOn: #Particle.
	view add: particleElement.
	
	velocityRenderer := VelocityRenderer new.
	
	velocityRenderer
		drawIn: view
		basedOn: velocity
		holdBy: particleElement.

	particleElementConnectedEdges := particleElement connectedEdges.
	self assert: particleElementConnectedEdges size equals: 1.
	velocityEdge := particleElementConnectedEdges first.
	self assert: velocityEdge model key equals: particleElement model.
	self assert: velocityEdge model value equals: #Velocity