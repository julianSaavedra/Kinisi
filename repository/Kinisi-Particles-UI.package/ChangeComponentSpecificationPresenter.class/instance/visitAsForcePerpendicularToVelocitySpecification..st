initialization - visitor
visitAsForcePerpendicularToVelocitySpecification: specification
 
	component := self instantiate: ForcePerpendicularToVelocitySpecificationPresenter on: specification.
	component whenModelChangeDo: [:newSpecification |
		self updateCurrentSpecificationWith: newSpecification ]