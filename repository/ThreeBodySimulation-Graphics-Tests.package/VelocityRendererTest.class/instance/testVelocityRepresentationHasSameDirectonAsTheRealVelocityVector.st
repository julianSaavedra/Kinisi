tests
testVelocityRepresentationHasSameDirectonAsTheRealVelocityVector

	| view velocity particleElement velocityRenderer velocityEdge |
	view := RTView new.
	velocity := PhysicsTestResource new velocityVectorWithAllComponentsWithAmount: 1.
	particleElement := RTEllipse new elementOn: #ParticleState.
	view add: particleElement.
	
	velocityRenderer := VelocityRenderer new.
	
	velocityRenderer
		drawIn: view
		basedOn: velocity
		holdBy: particleElement.

	"Really bad way of obtaining Velocity edge - it depends on the order of internal storing of shapes.
	Change to use it with physicalStateElement instead (?)"
	velocityEdge := view canvas shapeForPosition: 0@0.
	self
		assert: velocityEdge
		wasDrawWithTheSameDirectionAs: velocity