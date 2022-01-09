initialization
setModelBeforeInitialization: aDefinition

	super setModelBeforeInitialization: aDefinition.
	definition := aDefinition.
	domainSpecification := self owner domainSpecification.
	modelChangesAction := [:newDefinition | ]