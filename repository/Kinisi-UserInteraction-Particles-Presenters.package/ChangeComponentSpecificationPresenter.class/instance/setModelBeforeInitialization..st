initialization
setModelBeforeInitialization: specification

	super setModelBeforeInitialization: specification.
	currentSpecification := specification.
	specificationUpdateAction := [:newSpecification | ]