accessing model
setModelBeforeInitialization: presenterConfiguration

	super setModelBeforeInitialization: presenterConfiguration.
	workbench := presenterConfiguration workbench.
	configuration := presenterConfiguration domainSpecification 