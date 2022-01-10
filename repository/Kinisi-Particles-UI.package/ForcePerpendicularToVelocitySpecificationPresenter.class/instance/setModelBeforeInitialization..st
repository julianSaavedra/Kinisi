API
setModelBeforeInitialization: aSpecification

	super setModelBeforeInitialization: aSpecification.
	specification := aSpecification. 
	postModelChangeAction := [:newSpecification | ]