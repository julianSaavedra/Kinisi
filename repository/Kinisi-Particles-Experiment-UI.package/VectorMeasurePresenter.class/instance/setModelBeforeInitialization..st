initialization
setModelBeforeInitialization: aMeasure

	super setModelBeforeInitialization: aMeasure.
	measure := aMeasure.
	unitOptions := { aMeasure unit }.
	measureChangeBlock := [:newMeasure | ]