action
uninstall

	methodWasPresent
		ifTrue: [ 
			overridenClass methodDictionary
				at: overridenSelector
				put: overridenMethod.
			overridenMethod := nil ]
		ifFalse: [ overridenClass methodDictionary removeKey: overridenSelector ]