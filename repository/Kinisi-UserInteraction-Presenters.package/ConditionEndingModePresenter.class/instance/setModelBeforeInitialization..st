API
setModelBeforeInitialization: anEndingMode

	super setModelBeforeInitialization: anEndingMode.
	endingMode := anEndingMode.
	modelChangeAction := []