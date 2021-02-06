initialization
initializePeriodAmount

	periodAmount := self newNumberInput.
	periodAmount beFloat.
	periodAmount number: workbench period asSeconds.
	periodAmount whenNumberChangedDo: [:newPeriodAmount |
		workbench period: (periodUnitTranslator translate: newPeriodAmount)]