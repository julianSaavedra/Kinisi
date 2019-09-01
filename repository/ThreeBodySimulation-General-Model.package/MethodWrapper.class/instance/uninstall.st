action
uninstall

	methodWasPresent
		ifTrue: [ 
			targetClass methodDictionary
				at: wrappedSelector
				put: wrappedMethod.
			wrappedMethod := nil ]
		ifFalse: [ targetClass methodDictionary removeKey: wrappedSelector ]