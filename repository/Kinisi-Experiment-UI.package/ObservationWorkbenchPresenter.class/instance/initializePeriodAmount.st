initialization
initializePeriodAmount

	periodAmount := self newNumberInput.
	periodAmount beFloat.
	periodAmount number: (periodUnitTranslator translateFrom: workbench period).
	periodAmount whenSubmitDo: [ self updateModelPeriod ]