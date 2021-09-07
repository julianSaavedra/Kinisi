private
updateModelPeriod

	| newPeriod |
	newPeriod := periodUnitTranslator translate: periodAmount number.
	workbench period: newPeriod