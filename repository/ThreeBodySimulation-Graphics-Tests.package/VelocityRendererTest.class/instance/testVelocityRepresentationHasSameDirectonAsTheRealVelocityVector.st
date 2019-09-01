tests
testVelocityRepresentationHasSameDirectonAsTheRealVelocityVector

	| view velocity physicalStateElement velocityRenderer velocityEdge |
	view := RTView new.
	velocity := PhysicsTestResource new velocityVectorWithAllComponentsWithAmount: 1.
	physicalStateElement := RTEllipse new elementOn: #PhysicalState.
	view add: physicalStateElement.
	
	velocityRenderer := VelocityRenderer new.
	
	velocityRenderer
		drawIn: view
		basedOn: velocity
		holdBy: physicalStateElement.

	"Really bad way of obtaining Velocity edge - it depends on the order of internal storing of shapes.
	Change to use it with physicalStateElement instead (?)"
	velocityEdge := view canvas shapeForPosition: 0@0.
	self
		assert: velocityEdge
		wasDrawWithTheSameDirectionAs: velocity