action
uninstall

	overridenClass methodDictionary
		at: overridenSelector
		put: overridenMethod.
	overridenMethod := nil