action
install

	overridenMethod := overridenClass methodDictionary at: overridenSelector ifAbsent: [ ].
	overridenClass methodDictionary at: overridenSelector put: self