private
updateModelPeriod: newPeriodAmount

	| newPeriod |
	newPeriod := periodUnitTranslator translate: newPeriodAmount.
	workbench period: newPeriod