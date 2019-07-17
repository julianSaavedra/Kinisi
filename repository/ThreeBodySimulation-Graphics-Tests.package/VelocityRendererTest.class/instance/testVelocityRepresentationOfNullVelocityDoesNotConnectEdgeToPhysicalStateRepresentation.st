tests
testVelocityRepresentationOfNullVelocityDoesNotConnectEdgeToPhysicalStateRepresentation

	| view velocity physicalStateElement velocityRenderer |
	view := RTView new.
	velocity := PhysicsTestResource new nullVelocity.
	physicalStateElement := RTEllipse new elementOn: #PhysicalState.
	view add: physicalStateElement.
	
	velocityRenderer := VelocityRenderer new.
	
	velocityRenderer
		drawIn: view
		basedOn: velocity
		holdBy: physicalStateElement.

	self assert: physicalStateElement connectedEdges isEmpty.