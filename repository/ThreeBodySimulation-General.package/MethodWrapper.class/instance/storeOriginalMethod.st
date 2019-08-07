initialization
storeOriginalMethod

	targetClass methodDictionary
		at: wrappedSelector
		ifPresent: [ :compiledMethod | 
			methodWasPresent := true.
			wrappedMethod := compiledMethod ]
		ifAbsent: [ methodWasPresent := false ]