initialization
storeOriginalMethod

	overridenClass methodDictionary
		at: overridenSelector
		ifPresent: [ :compiledMethod | 
			methodWasPresent := true.
			overridenMethod := compiledMethod ]
		ifAbsent: [ methodWasPresent := false ]