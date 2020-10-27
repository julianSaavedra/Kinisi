accessing model
setModelBeforeInitialization: aSpecification

	super setModelBeforeInitialization: specification.
	workbench := aSpecification workbench observationWorkbench.
	specification := aSpecification