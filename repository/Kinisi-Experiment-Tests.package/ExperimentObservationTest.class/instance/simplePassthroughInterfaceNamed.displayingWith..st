test objects - interface specs
simplePassthroughInterfaceNamed: name displayingWith: displayEligibility  
	
	^self
		interfaceDefinitionNamed: name
		processingWith: [ :observation | observation ]
		andDisplayingUsing: displayEligibility