initialization
initializeWhenFinishedDo: action
 
	finishAction := action.
	observations := OrderedCollection new.
	isObserving := false