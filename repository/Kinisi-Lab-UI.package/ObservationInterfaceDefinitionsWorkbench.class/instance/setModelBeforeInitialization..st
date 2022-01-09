accessing model
setModelBeforeInitialization: observationWorkbench

	super setModelBeforeInitialization: observationWorkbench.
	workbench := observationWorkbench.
	domainSpecification := self owner domainSpecification