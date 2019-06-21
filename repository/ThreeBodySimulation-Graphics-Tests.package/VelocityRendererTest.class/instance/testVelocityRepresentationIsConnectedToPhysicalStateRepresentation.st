tests
testVelocityRepresentationIsConnectedToPhysicalStateRepresentation

	| view velocity physicalStateElement velocityRenderer physicalStateElementConnectedEdges velocityEdge |
	view := RTView new.
	velocity := PhysicsTestResource new velocityVectorWithAllComponentsWithAmount: 1.
	physicalStateElement := RTEllipse new elementOn: #PhysicalState.
	view add: physicalStateElement.
	
	velocityRenderer := VelocityRenderer new.
	
	velocityRenderer
		drawIn: view
		basedOn: velocity
		holdBy: physicalStateElement.

	physicalStateElementConnectedEdges := physicalStateElement connectedEdges.
	self assert: physicalStateElementConnectedEdges size equals: 1.
	velocityEdge := physicalStateElementConnectedEdges first.
	self assert: velocityEdge model key equals: physicalStateElement model.
	self assert: velocityEdge model value equals: #Velocity