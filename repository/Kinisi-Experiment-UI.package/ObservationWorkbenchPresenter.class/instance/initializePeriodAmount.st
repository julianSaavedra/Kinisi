initialization
initializePeriodAmount

	periodAmount := self newNumberInput.
	periodAmount beFloat.
	periodAmount number: workbench period asSeconds.
	periodAmount whenSubmitDo: [
		workbench period: (periodUnitTranslator translate: periodAmount number)]